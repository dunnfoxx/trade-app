package com.trade.util;

public class ResponseBuilder {

    private static  ResponseBuilder instance = new ResponseBuilder();

    private ResponseBuilder (){

    }

    public static ResponseBuilder getInstance(){
        if(instance == null) instance = new ResponseBuilder();
        return instance;
    }
}
