package com.example.demo.a.data.entities;

import java.io.Serializable;
import java.util.UUID;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class LoanItemId implements Serializable {

    private UUID loanId;

    private UUID customerId;
    
    private UUID bookId;

}
