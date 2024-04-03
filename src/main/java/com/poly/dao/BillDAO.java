package com.poly.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.Bill;


public interface BillDAO extends JpaRepository<Bill, String> {
	 @Query("SELECT SUM(bill.payed) FROM Bill bill WHERE MONTH(bill.createDate) = :month AND YEAR(bill.createDate) = :year")
	    Double calculateTotalSalaryForMonthInYear(@Param("month") int month, @Param("year") int year);
	
	@Query("select bill from Bill bill where bill.id=?1")
	Page<Bill> findBillbyId(Pageable pageable);
	
}
