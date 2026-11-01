package com.mbridge.msdk.foundation.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class i implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f35210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35212c;

    public i(String str, String str2, int i11) {
        this.f35211b = str;
        this.f35212c = str2;
        this.f35210a = i11;
    }

    public String a() {
        return this.f35211b;
    }

    public String b() {
        return this.f35212c;
    }
}
