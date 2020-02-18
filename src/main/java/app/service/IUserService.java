package app.service;

import app.model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
}
