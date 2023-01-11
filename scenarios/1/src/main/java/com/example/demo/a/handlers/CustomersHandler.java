package com.example.demo.a.handlers;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.a.data.entities.Customer;

import com.example.demo.a.data.repositories.CustomerRepository;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class CustomersHandler {

    private final CustomerRepository customerRepository;

    public List<Customer> getCustomers() {
        return customerRepository.findAll();
    }

}
