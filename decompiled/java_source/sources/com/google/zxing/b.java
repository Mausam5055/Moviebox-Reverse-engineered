package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f32850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private id.b f32851b;

    public b(a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.f32850a = aVar;
    }

    public id.b a() {
        if (this.f32851b == null) {
            this.f32851b = this.f32850a.b();
        }
        return this.f32851b;
    }

    public id.a b(int i11, id.a aVar) {
        return this.f32850a.c(i11, aVar);
    }

    public int c() {
        return this.f32850a.d();
    }

    public int d() {
        return this.f32850a.f();
    }

    public boolean e() {
        return this.f32850a.e().f();
    }

    public b f() {
        return new b(this.f32850a.a(this.f32850a.e().g()));
    }

    public String toString() {
        try {
            return a().toString();
        } catch (NotFoundException unused) {
            return "";
        }
    }
}
