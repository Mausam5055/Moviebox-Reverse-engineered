package com.mbridge.msdk.dycreator.error;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f34873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34874b;

    public a(int i11, String str) {
        this.f34873a = i11;
        this.f34874b = str;
    }

    public a(b bVar) {
        if (bVar != null) {
            this.f34873a = bVar.b();
            this.f34874b = bVar.c();
        }
    }

    public String toString() {
        return "DyError{errorCode=" + this.f34873a + '}';
    }
}
