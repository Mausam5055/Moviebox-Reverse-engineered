package com.transsion.json;

/* JADX INFO: loaded from: classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f46103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f46104b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f46105c;

    public u(a aVar) {
        this.f46103a = aVar;
    }

    public void a() {
        this.f46104b = Math.max(this.f46104b - 1, 0);
    }

    public void b(String str) {
        this.f46105c = str;
    }

    public a c() {
        return this.f46103a;
    }

    public void d() {
        this.f46104b++;
    }

    public boolean e() {
        return this.f46104b != 0;
    }
}
