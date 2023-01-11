package com.example.demo.a.data.entities;

import java.time.LocalDateTime;
import java.util.UUID;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;


import lombok.Getter;

@Getter
@Entity
public class Attendant {

    @Id
    private UUID id;

    private String firstName;
    
    private String lastName;
    
    private LocalDateTime createdAt;
    
    private LocalDateTime updatedAt;

    public String fullName() {
        return new StringBuilder()
            .append(firstName)
            .append(" ")
            .append(lastName)
            .toString();
    }

    @OneToMany()
    @JoinColumn(name="attendant_id", insertable = false, updatable = false)
    private Set<Loan> loans;

}
