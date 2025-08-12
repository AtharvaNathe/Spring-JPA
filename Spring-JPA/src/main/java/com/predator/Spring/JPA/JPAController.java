package com.predator.Spring.JPA;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.predator.Spring.JPA.entities.Account;
import com.predator.Spring.JPA.services.AccountServices;

@Controller
public class JPAController {
	
	@Autowired
	private AccountServices accServ;
	
	@GetMapping("/")
	public String HomePage() {
		return "index.jsp";
	}
	
	@GetMapping("/add")
	public String add() {
		return "AddAccount.html";
	}
	
	@PostMapping("/addacc")
	public String addAccount(Account obj,Model m) {
		String status=accServ.addAccount(obj); 
		m.addAttribute("status",status);
		return "ActivityStatus.jsp";
	} 
	
	@GetMapping("/close")
	public String close() {
		return "CloseForm.html";
	}
	
	@PostMapping("/closeacc")
	public String closeAcc(int accno,Model m) {
		String status=accServ.deleteAccount(accno);
		m.addAttribute("status", status);
		return "ActivityStatus.jsp";
	}
	
	@GetMapping("/deposit")
	public String deposit() {
		return "DepositForm.html";
	}
	
	@PostMapping("/depoamt")
	public String depositAmount(int accno,float amount,Model m) {
		String status=accServ.depoAmount(accno, amount);
		m.addAttribute("status",status);
		return "ActivityStatus.jsp";
	}

	// New endpoint for withdraw form
	@GetMapping("/withdraw")
	public String withdraw() {
		return "WithdrawForm.html";
	}

	// New endpoint for processing withdraw
	@PostMapping("/withdrawamt")
	public String withdrawAmount(int accno, float amount, Model m) {
		String status = accServ.withdrawAmount(accno, amount);
		m.addAttribute("status", status);
		return "ActivityStatus.jsp";
	}

	// New endpoint for transfer form
	@GetMapping("/transfer")
	public String transfer() {
		return "TransferForm.html";
	}

	// New endpoint for processing transfer
	@PostMapping("/transferamt")
	public String transferAmount(int fromAccno, int toAccno, float amount, Model m) {
		String status = accServ.transferAmount(fromAccno, toAccno, amount);
		m.addAttribute("status", status);
		return "ActivityStatus.jsp";
	}

	// New endpoint for search form
	@GetMapping("/search")
	public String search() {
		return "SearchForm.html";
	}

	// New endpoint for processing search
	@PostMapping("/searchacc")
	public String searchAccount(int accno, Model m) {
		Account account = accServ.searchAccount(accno);
		if (account != null) {
			m.addAttribute("account", account);
			return "AccountDetails.jsp"; // A new JSP to display account details
		} else {
			m.addAttribute("status", "not_found"); // Custom status for account not found
			return "ActivityStatus.jsp";
		}
	}
}
