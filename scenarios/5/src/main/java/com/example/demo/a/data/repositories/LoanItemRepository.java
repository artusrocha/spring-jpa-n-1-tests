package com.example.demo.a.data.repositories;

import java.util.UUID;
import java.util.Set;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.a.data.entities.LoanItem;
import com.example.demo.a.data.entities.LoanItemId;

import com.example.demo.a.dto.ILoanedBookDto;

@Repository
public interface LoanItemRepository extends JpaRepository<LoanItem, LoanItemId> {

    @Query("SELECT " + 
           "  li.customerId as customerId, " +
           "  b.id as bookId, " + 
           "  b.name as bookName, " + 
           "  b.description as bookDescription, " + 
           "  li.createdAt as loanDateTime " +
           "FROM LoanItem li " +
           "JOIN li.book b " +
           "WHERE li.customerId IN (:customerIds)")
    Set<ILoanedBookDto> findAllByCustomerIds(@Param("customerIds") Set<UUID> customerIds);

}
