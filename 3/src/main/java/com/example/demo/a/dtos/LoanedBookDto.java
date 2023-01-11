package com.example.demo.a.dto;

import java.time.LocalDateTime;
import java.util.UUID;

import lombok.Getter;
import lombok.Builder;

import com.example.demo.a.data.entities.LoanItem;

@Getter
@Builder
public class LoanedBookDto {

    private final UUID bookId;
    private final String bookName;
    private final String bookDescription;
    private final LocalDateTime loanDateTime;

    public static LoanedBookDto from(final LoanItem loanItem) {
        return LoanedBookDto.builder()
            .bookId( loanItem.getBook().getId() )
            .bookName( loanItem.getBook().getName() )
            .bookDescription( loanItem.getBook().getDescription() )
            .loanDateTime( loanItem.getCreatedAt() )
            .build();
    }
}