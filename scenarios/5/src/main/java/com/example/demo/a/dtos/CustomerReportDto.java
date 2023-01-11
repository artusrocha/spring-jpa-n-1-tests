package com.example.demo.a.dto;

import java.util.List;
import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.Builder;

import com.example.demo.a.data.entities.Customer;
import com.example.demo.a.dto.ILoanedBookDto;

@Getter
@Builder
public class CustomerReportDto {

    private final UUID id;
    private final String firstName;
    private final String lastName;
    private final List<ILoanedBookDto> loanedBook;

    public static CustomerReportDto from(final Customer customer,
                                         final List<ILoanedBookDto> customerLoanedBooks) {
        return CustomerReportDto.builder()
            .id( customer.getId() )
            .firstName( customer.getFirstName() )
            .lastName( customer.getLastName() )
            .loanedBook( customerLoanedBooks )
            .build();
    }
}