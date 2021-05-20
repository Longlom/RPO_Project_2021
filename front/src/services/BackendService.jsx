import axios from "axios";
import Utils from '../utils/utils'
import {alertActions, store} from "../utils/redux";

const API_URL = 'http://localhost:8081/api/v1'
const AUTH_URL = 'http://localhost:8081/auth'

class BackendService {
    login(login, password) {
        console.log(login, password);
        return axios.post(`${AUTH_URL}/login`, {login, password});
    }

    logout() {
        return axios.get(`${AUTH_URL}/logout`, {headers: {Authorization: Utils.getToken()}});
    }

    retrieveAllCountries(page, limit) {
        return axios.get(`${API_URL}/countries?page=${page}&limit=${limit}`);
    }

    retrieveCountry(id) {
        return axios.get(`${API_URL}/countries/${id}`)
    }

    createCountry(country) {
        return axios.post(`${API_URL}/countries`, country);
    }

    updateCountry(country) {
        return axios.put(`${API_URL}/countries/${country.id}`, country);
    }

    deleteCountries(countries) {
        return axios.post(`${API_URL}/deletecountries`, countries)
    }
    // ---------- Artists
    retrieveAllArtists(page, limit) {
        return axios.get(`${API_URL}/artists?page=${page}&limit=${limit}`);
    }

    updateArtist(artist) {
        return axios.put(`${API_URL}/artists/${artist.id}`, artist);
    }

    retrieveArtist(id) {
        return axios.get(`${API_URL}/artists/${id}`)
    }

    deleteArtists(artists) {
        return axios.post(`${API_URL}/deleteartists`, artists)
    }

    async createArtist(artist) {
        const countries = (await axios.get(`${API_URL}/countries/all`)).data;
        console.log(countries);
        const isCountryInDB = countries.some((country) => country.name.toLowerCase() === artist.country.toLowerCase());
        console.log(countries.some((country) => country.name.toLowerCase() === artist.country.toLowerCase()), 'flag')
        console.log(countries.find((country) => country.name.toLowerCase() === artist.country.toLowerCase()).id, 'id');

        if (isCountryInDB) {
            const artistData = { id:artist.id,  name: artist.name, century: artist.century, country: {id:countries.find((country) => country.name.toLowerCase() === artist.country.toLowerCase()).id}}
            return axios.post(`${API_URL}/artists`, artistData);
        } else {
            return Promise.reject("Такой страны нет в БД")
        }
    }
}

function showError(msg) {
    store.dispatch(alertActions.error(msg));
}


axios.interceptors.request.use(
    config => {
        store.dispatch(alertActions.clear());
        let token = Utils.getToken();
        if (token)
            config.headers.Authorization = token;
        return config;
    },
    error => {
        showError(error.message);
        return Promise.reject(error);
    });

axios.interceptors.response.use(undefined,
    error => {
    if (error.response && error.response.status && [401, 403].indexOf(error.response.status) !== -1)
        showError('Ошибка авторизации');
    else if (error.response && error.response.data && error.response.data.message)
        showError(error.response.data.message);
    else
        showError(error.message);
    return Promise.reject(error);
    });

export default new BackendService()
