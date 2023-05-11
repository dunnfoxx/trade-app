package com.trade.model;

public class StatusMessage {

    public StatusMessage(){
        this.status = 200;
        this.message = " ";
    }
    private int status;
    private String message;

    public  String addMessage(String newMessage){
        StringBuilder sb = new StringBuilder(this.message);
       this.message =  sb.append(" ").append(newMessage).toString();
       return this.message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
