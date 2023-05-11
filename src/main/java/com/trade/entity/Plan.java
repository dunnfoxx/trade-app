package com.trade.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Plan {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id ;
   private String name;
   private String amount;
   private String duration;
   private String returnn;
   private String createdAt;
   private boolean selfTrade;
   private boolean enable;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getAmount() {
      return amount;
   }

   public void setAmount(String amount) {
      this.amount = amount;
   }

   public String getDuration() {
      return duration;
   }

   public void setDuration(String duration) {
      this.duration = duration;
   }

   public String getReturnn() {
      return returnn;
   }

   public void setReturnn(String returnn) {
      this.returnn = returnn;
   }

   public String getCreatedAt() {
      return createdAt;
   }

   public void setCreatedAt(String createdAt) {
      this.createdAt = createdAt;
   }

   public boolean isSelfTrade() {
      return selfTrade;
   }

   public void setSelfTrade(boolean selfTrade) {
      this.selfTrade = selfTrade;
   }

   public boolean isEnable() {
      return enable;
   }

   public void setEnable(boolean enable) {
      this.enable = enable;
   }
}
