package com.example.demo.a.data.entities;

import java.time.LocalDateTime;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;

@Getter
@Entity
public class Book {

    @Id()
    private UUID id;

    private String name;
    
    private String description;
    
    private LocalDateTime createdAt;
    
    private LocalDateTime updatedAt;

}
