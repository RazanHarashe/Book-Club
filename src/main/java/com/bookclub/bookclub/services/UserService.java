package com.bookclub.bookclub.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookclub.bookclub.models.User;
import com.bookclub.bookclub.repositories.UserRepository;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User registerUser(User user) {
        return userRepository.save(user);
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    
    public User findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

}
