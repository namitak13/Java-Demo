package com.cybage.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cybage.model.Book;

public interface AuthorRepository extends JpaRepository<Book, Integer> {

}
