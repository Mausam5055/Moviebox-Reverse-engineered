package com.transsion.push.bean;

/* JADX INFO: loaded from: classes6.dex */
public class PushPointInfo {
    public String evt;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f50792id;

    public PushPointInfo(int i11, String str) {
        this.f50792id = i11;
        this.evt = str;
    }

    public String toString() {
        return "PushPointInfo{id=" + this.f50792id + ", evt='" + this.evt + "'}";
    }
}
