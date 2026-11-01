package com.transsion.json;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f46057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f46058b;

    public g(Class cls) {
        this.f46057a = cls;
    }

    public synchronized Object a() {
        try {
            if (this.f46058b == null) {
                this.f46058b = this.f46057a.newInstance();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f46058b;
    }
}
