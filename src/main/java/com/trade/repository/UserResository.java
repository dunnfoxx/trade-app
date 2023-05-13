package com.trade.repository;

import com.trade.entity.Plan;
import com.trade.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface UserResository extends JpaRepository<User, Integer> {

    User findByEmail(String email);

    List<User>findAllByEmailOrMobile(String mobile,String email);
List<User>findByAble(boolean able);

}
