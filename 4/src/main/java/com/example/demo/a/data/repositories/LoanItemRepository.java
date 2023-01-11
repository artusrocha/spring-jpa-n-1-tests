package com.example.demo.a.data.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.a.data.entities.LoanItem;
import com.example.demo.a.data.entities.LoanItemId;

@Repository
public interface LoanItemRepository extends JpaRepository<LoanItem, LoanItemId> {

}
