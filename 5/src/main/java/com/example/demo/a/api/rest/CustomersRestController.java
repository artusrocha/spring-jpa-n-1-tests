package com.example.demo.a.api.rest;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.a.data.entities.Customer;
import com.example.demo.a.handlers.CustomersHandler;
import com.example.demo.a.dto.CustomerReportDto;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class CustomersRestController {
    
    private final CustomersHandler customersHandler;

    @GetMapping()
    public Page<CustomerReportDto> getCustomers(Pageable pageable) {
        return customersHandler.getCustomers( pageable );
    }
}
