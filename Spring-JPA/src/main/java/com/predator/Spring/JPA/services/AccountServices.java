package com.predator.Spring.JPA.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.predator.Spring.JPA.entities.Account;
import com.predator.Spring.JPA.repositories.AccountRepository;

@Service
public class AccountServices {
	
	@Autowired
	private AccountRepository accRepo;
	
	public String addAccount(Account obj) {
		accRepo.save(obj);
		return "success";
	}
	
	public String deleteAccount(int accno) {
		String status="";
		Account obj=accRepo.findByAccno(accno);
		if(obj!=null) {
		accRepo.delete(obj);
		return status="success";
		}else {
			status="failed";
		}
		return status;
	
	}
	
	public String depoAmount(int no,float amt) {
		String status="";
		Account obj=accRepo.findByAccno(no);
		if(obj!=null) {
			obj.setBalance(obj.getBalance()+amt);
			accRepo.save(obj);
			status="success";
		}else {
			status="failed";
		}
		return status;
	}

	// New method for withdrawing amount
	public String withdrawAmount(int accno, float amount) {
		String status = "";
		Account obj = accRepo.findByAccno(accno);
		if (obj != null) {
			if (obj.getBalance() >= amount) {
				obj.setBalance(obj.getBalance() - amount);
				accRepo.save(obj);
				status = "success";
			} else {
				status = "insufficient_funds"; // Custom status for insufficient funds
			}
		} else {
			status = "failed"; // Account not found
		}
		return status;
	}

	// New method for transferring amount
	public String transferAmount(int fromAccno, int toAccno, float amount) {
		String status = "";
		Account fromAccount = accRepo.findByAccno(fromAccno);
		Account toAccount = accRepo.findByAccno(toAccno);

		if (fromAccount != null && toAccount != null) {
			if (fromAccount.getBalance() >= amount) {
				fromAccount.setBalance(fromAccount.getBalance() - amount);
				toAccount.setBalance(toAccount.getBalance() + amount);
				accRepo.save(fromAccount);
				accRepo.save(toAccount);
				status = "success";
			} else {
				status = "insufficient_funds"; // Custom status for insufficient funds
			}
		} else {
			status = "failed"; // One or both accounts not found
		}
		return status;
	}

	// New method for searching an account
	public Account searchAccount(int accno) {
		return accRepo.findByAccno(accno);
	}
}
