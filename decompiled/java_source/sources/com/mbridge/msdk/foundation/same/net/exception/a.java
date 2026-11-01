package com.mbridge.msdk.foundation.same.net.exception;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f35429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f35430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.mbridge.msdk.foundation.same.net.toolbox.a f35431c;

    public a(int i11, com.mbridge.msdk.foundation.same.net.toolbox.a aVar) {
        this.f35429a = i11;
        this.f35431c = aVar;
    }

    public a(int i11, com.mbridge.msdk.foundation.same.net.toolbox.a aVar, String str) {
        this.f35429a = i11;
        this.f35431c = aVar;
        this.f35430b = str;
    }
}
