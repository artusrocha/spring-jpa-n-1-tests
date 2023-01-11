package com.example.demo.a.dto;

import java.util.Set;
import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.Builder;

import com.example.demo.a.data.entities.Customer;

@Getter
@Builder
public class CustomerReportDto {

    private final UUID id;
    private final String firstName;
    private final String lastName;
    private final Set<LoanedBookDto> loanedBook;

    public static CustomerReportDto from(final Customer customer,
                                         final Set<LoanedBookDto> loanedBooks) {
        return CustomerReportDto.builder()
            .id( customer.getId() )
            .firstName( customer.getFirstName() )
            .lastName( customer.getLastName() )
            .loanedBook( loanedBooks )
            .build();
    }
}