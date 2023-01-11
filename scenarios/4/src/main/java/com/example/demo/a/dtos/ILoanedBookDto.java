package com.example.demo.a.dto;

import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

public interface ILoanedBookDto {

    UUID getBookId();
    String getBookName();
    String getBookDescription();
    LocalDateTime getLoanDateTime();

}