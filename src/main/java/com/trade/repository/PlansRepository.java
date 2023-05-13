package com.trade.repository;


import com.trade.entity.Plans;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlansRepository extends JpaRepository<Plans,Integer> {
List<Plans>findAllByUserId(int id);
}
