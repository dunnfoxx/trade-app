package com.trade.repository;

import com.trade.entity.Plan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlanRepository extends JpaRepository<Plan,Integer> {
    Plan findById(int id);
    List<Plan>findAllByName(String name);
}
