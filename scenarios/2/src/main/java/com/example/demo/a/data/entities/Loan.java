package com.example.demo.a.data.entities;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import javax.persistence.FetchType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.Getter;

@Getter
@Entity
public class Loan {

    @Id()
    private UUID id;

    @Column(name = "customer_id")
    private UUID customerId;
    
    @Column(name = "attendant_id")
    private UUID attendantId;
    
    private LocalDateTime createdAt;
    
    private LocalDateTime updatedAt;

    @OneToMany
    @JoinColumn(name="loan_id")
    private List<LoanItem> loanItens;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="attendant_id", insertable = false, updatable = false)
    private Attendant attendant;

}
