package com.trade.model;

import com.trade.entity.Fund;
import com.trade.entity.User;

public class FundResponse {

    private User user;
    private Fund fund;

    public FundResponse() {

    }

    public FundResponse(User user, Fund fund) {
        this.user = user;
        this.fund = fund;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Fund getFund() {
        return fund;
    }

    public void setFund(Fund fund) {
        this.fund = fund;
    }
}
