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
import com.example.demo.a.data.repositories.LoanItemRepository;
import com.example.demo.a.dto.CustomerReportDto;
import com.example.demo.a.dto.ILoanedBookDto;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class CustomersHandler {

    private final CustomerRepository customerRepository;

    private final LoanItemRepository loanItemRepository;

    public Page<CustomerReportDto> getCustomers(final Pageable pageable) {
        return customerRepository.findAll(pageable)
            .map(this::build);
    }

    private CustomerReportDto build(final Customer customer) {

        final Set<ILoanedBookDto> loanedBook = loanItemRepository.findAllByCustomerIdToInterface(customer.getId());

        return CustomerReportDto.builder()
            .id( customer.getId() )
            .firstName( customer.getFirstName() )
            .lastName( customer.getLastName() )
            .loanedBook( loanedBook )
            .build();
    }

}
