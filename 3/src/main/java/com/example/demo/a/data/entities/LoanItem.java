package com.example.demo.a.data.entities;

import java.time.LocalDateTime;
import java.util.UUID;

import javax.persistence.FetchType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;

@Getter
@Entity
@IdClass(LoanItemId.class)
public class LoanItem {

    @Id()
    @Column(name="loan_id")
    private UUID loanId;

    @Id()
    private UUID customerId;
    
    @Id()
    @Column(name="book_id")
    private UUID bookId;
    
    private LocalDateTime createdAt;
    
    private LocalDateTime updatedAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="book_id", insertable = false, updatable = false)
    private Book book;

}
