package com.example.demo.a.dto;

import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

import com.fasterxml.jackson.annotation.JsonIgnore;

public interface ILoanedBookDto {

    @JsonIgnore
    UUID getCustomerId();
    UUID getBookId();
    String getBookName();
    String getBookDescription();
    LocalDateTime getLoanDateTime();

}