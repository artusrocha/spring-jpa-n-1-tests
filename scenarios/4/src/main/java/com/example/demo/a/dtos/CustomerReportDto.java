package com.example.demo.a.dto;

import java.util.Set;
import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.Builder;

@Getter
@Builder
public class CustomerReportDto {

    private final UUID id;
    private final String firstName;
    private final String lastName;
    private final Set<ILoanedBookDto> loanedBook;

}