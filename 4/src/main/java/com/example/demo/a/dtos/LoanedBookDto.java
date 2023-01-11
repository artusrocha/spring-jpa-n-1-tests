package com.example.demo.a.dto;

import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public class LoanedBookDto implements ILoanedBookDto {

    private final UUID bookId;
    private final String bookName;
    private final String bookDescription;
    private final LocalDateTime loanDateTime;

}