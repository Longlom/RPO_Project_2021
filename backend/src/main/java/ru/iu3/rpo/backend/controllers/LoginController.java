package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import ru.iu3.rpo.backend.models.User;
import ru.iu3.rpo.backend.repositories.UserRepository;
import ru.iu3.rpo.backend.tools.Utils;

import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class LoginController {
    @Autowired
    private UserRepository userRepository;

    @PostMapping("/login")
    public ResponseEntity<Object> login(@Validated @RequestBody Map<String, String> credentials) {
        String login = credentials.get("login");
        String pwd = credentials.get("password");
        if (!pwd.isEmpty() && !login.isEmpty()) {
            Optional<User> uu = userRepository.findByLogin(login);
            if (uu.isPresent()) {
                User u2 = uu.get();
                String hash1 = u2.password;
                String salt = u2.salt;
                String hash2 = Utils.ComputeHash(pwd, salt);
                if (hash1.equals(hash2)) {
                    String token = UUID.randomUUID().toString();
                    u2.token = token;
                    User u3 = userRepository.saveAndFlush(u2);
                    return new ResponseEntity<Object>(u3, HttpStatus.OK);
                }
            }
        }
        return new ResponseEntity<Object>(HttpStatus.UNAUTHORIZED);
    }
}