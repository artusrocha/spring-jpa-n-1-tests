package com.example.demo.a.api.rest;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.a.data.entities.Customer;
import com.example.demo.a.handlers.CustomersHandler;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class CustomersRestController {
    
    private final CustomersHandler customersHandler;

    @GetMapping()
    public List<Customer> getCustomers() {
        return customersHandler.getCustomers();   
    }
}
