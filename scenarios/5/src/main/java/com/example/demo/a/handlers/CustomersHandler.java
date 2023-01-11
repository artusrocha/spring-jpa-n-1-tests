package com.example.demo.a.handlers;

import java.util.UUID;
import java.util.Set;
import java.util.List;
import java.util.Map;
import static java.util.stream.Collectors.groupingBy;

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
        final Page<Customer> customersPage = customerRepository.findAll(pageable);
        final Set<UUID> customersIds = customersPage.map(Customer::getId).toSet();
        final Map<UUID, List<ILoanedBookDto>> loanedBooks = fetchLoanedBooks(customersIds);
        return customersPage.map( customer -> build(customer, loanedBooks));
    }

    private CustomerReportDto build(final Customer customer,
                                    final Map<UUID, List<ILoanedBookDto>> loanedBooks) {
        final List<ILoanedBookDto> customerLoanedBooks = loanedBooks
            .getOrDefault(customer.getId(), List.of());
        return CustomerReportDto.from(customer, customerLoanedBooks);
    }

    private Map<UUID, List<ILoanedBookDto>> fetchLoanedBooks(final Set<UUID> customersIds) {
        return loanItemRepository.findAllByCustomerIds(customersIds)
            .stream()
            .collect(groupingBy(ILoanedBookDto::getCustomerId));
    }
}
