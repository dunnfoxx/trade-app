package com.trade.repository;

import com.trade.entity.Fund;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FundRepository extends JpaRepository<Fund, Integer> {
    List<Fund>findAllByApproved(boolean approved);
}
