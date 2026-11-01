package com.github.lzyzsd.jsbridge;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Message {
    public String callbackId;
    public String data;
    public String handlerName;
    public String responseData;
    public String responseId;

    public static List<Message> toArrayList(String str) {
        return (List) new Gson().fromJson(str, new TypeToken<List<Message>>() { // from class: com.github.lzyzsd.jsbridge.Message.1
        }.getType());
    }

    public String getCallbackId() {
        return this.callbackId;
    }

    public String getData() {
        return this.data;
    }

    public String getHandlerName() {
        return this.handlerName;
    }

    public String getResponseData() {
        return this.responseData;
    }

    public String getResponseId() {
        return this.responseId;
    }

    public void setCallbackId(String str) {
        this.callbackId = str;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setHandlerName(String str) {
        this.handlerName = str;
    }

    public void setResponseData(String str) {
        this.responseData = str;
    }

    public void setResponseId(String str) {
        this.responseId = str;
    }

    public String toJson() {
        return new Gson().toJson(this);
    }
}
