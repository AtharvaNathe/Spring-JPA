package com.predator.Spring.JPA.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.predator.Spring.JPA.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
	
	Account findByAccno(int accno);
	

}
