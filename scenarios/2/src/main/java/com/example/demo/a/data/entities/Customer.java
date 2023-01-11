package com.example.demo.a.data.entities;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import lombok.Getter;

@Getter
@Entity
public class Customer {

    @Id()
    private UUID id;

    private String firstName;
    
    private String lastName;
    
    private LocalDateTime createdAt;
    
    private LocalDateTime updatedAt;

    @OneToMany
    @JoinColumn(name="customer_id", insertable = false, updatable = false)
    private List<Loan> loans;

}
