package com.transsion.push.bean;

import fm.a;

/* JADX INFO: loaded from: classes6.dex */
public class TrackerResponse {

    @a(name = "data")
    public TrackerConfig config;
    public String message;
    public int status;

    public String toString() {
        return "TrackerResponse{status=" + this.status + ", message='" + this.message + "', config=" + this.config + '}';
    }
}
