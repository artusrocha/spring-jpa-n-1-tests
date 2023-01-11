package com.example.demo.a.handlers;

import java.util.Set;
import java.util.stream.Stream;
import java.util.stream.Collectors;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.example.demo.a.data.entities.Customer;

import com.example.demo.a.data.repositories.CustomerRepository;
import com.example.demo.a.dto.CustomerReportDto;
import com.example.demo.a.dto.LoanedBookDto;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class CustomersHandler {

    private final CustomerRepository customerRepository;

    public Page<CustomerReportDto> getCustomers(final Pageable pageable) {
        return customerRepository.findAll(pageable)
            .map(this::convert);
    }

    private CustomerReportDto convert(final Customer customer) {

        final Set<LoanedBookDto> loanedBook = customer.getLoans().stream()
            .map(loan -> loan.getLoanItens())
            .flatMap(List::stream)
            .map(LoanedBookDto::from)
            .collect(Collectors.toSet());

        return CustomerReportDto.builder()
            .id( customer.getId() )
            .firstName( customer.getFirstName() )
            .lastName( customer.getLastName() )
            .loanedBook( loanedBook )
            .build();
    }

}
