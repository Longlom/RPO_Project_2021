package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.models.User;
import ru.iu3.rpo.backend.repositories.ArtistRepository;
import ru.iu3.rpo.backend.repositories.CountryRepository;
import ru.iu3.rpo.backend.repositories.UserRepository;
import ru.iu3.rpo.backend.repositories.MuseumRepository;

import java.util.*;

@RestController
@RequestMapping("/api/v1")
public class UserController {
        @Autowired
        ArtistRepository artistRepository;
        @Autowired
        CountryRepository countryRepository;
        @Autowired
        UserRepository userRepository;
        @Autowired
        MuseumRepository museumRepository;


        @GetMapping("/users")
        public List<User> getAllUser() { return userRepository.findAll(); }

        @PostMapping("/users")
        public ResponseEntity<Object> createUser(@Validated @RequestBody User user) {
                try {
                        User nu = userRepository.save(user);
                        return new ResponseEntity<Object>(nu, HttpStatus.OK);
                } catch (Exception ex) {
                        String error;
                        if (ex.getMessage().contains("user.login_UNIQUE"))
                                error = "user already exists";
                        else
                                error = "undefined error";
                        Map<String, String> map = new HashMap<>();
                        map.put("error", error);
                        return new ResponseEntity<Object>(map, HttpStatus.OK);
                }
        }

        @PostMapping("/users/{id}/addmuseums")
        public ResponseEntity<Object> addMuseums(@PathVariable(value = "id") Long userId,
                                                 @Validated @RequestBody Set<Museum> museums) {
                Optional<User> uu = userRepository.findById(userId);
                int cnt = 0;
                if (uu.isPresent()) {
                        User u = uu.get();
                        for (Museum m : museums) {
                                Optional<Museum> mm = museumRepository.findById(m.id);
                                if (mm.isPresent()) {
                                        u.addMuseum(mm.get());
                                        cnt++;
                                }
                        }
                        userRepository.save(u);
                }
                Map<String, String> response = new HashMap<>();
                response.put("count", String.valueOf(cnt));
                return ResponseEntity.ok(response);
        }

        @PostMapping("/users/{id}/removemuseums")
        public ResponseEntity<Object> removeMuseums(@PathVariable(value = "id") Long userId,
                                                    @Validated @RequestBody Set<Museum> museums) {
                Optional<User> uu = userRepository.findById(userId);
                int cnt = 0;
                if (uu.isPresent()) {
                        User u = uu.get();
                        for (Museum m : u.museums) {
                                u.removeMuseum(m);
                                cnt++;
                        }
                        userRepository.save(u);
                }
                Map<String, String> response = new HashMap<>();
                response.put("count", String.valueOf(cnt));
                return ResponseEntity.ok(response);
        }
        @PutMapping("/users/{id}")
        public ResponseEntity<User> updateUser(@PathVariable(value = "id") Long userId,
                                                     @Validated @RequestBody User userDetails) {
                User user = null;
                Optional<User> cc = userRepository.findById(userId);
                if (cc.isPresent()) {
                        user = cc.get();
                        user.login = userDetails.login;
                        user.email = userDetails.email;
                        userRepository.save(user);
                }
                else {
                        throw new ResponseStatusException(
                                HttpStatus.NOT_FOUND, "artist not found");
                }
                return ResponseEntity.ok(user);
        }

}
