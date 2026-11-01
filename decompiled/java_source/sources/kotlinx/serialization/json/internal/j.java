package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f68313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68314b;

    public j(h0 writer) {
        Intrinsics.h(writer, "writer");
        this.f68313a = writer;
        this.f68314b = true;
    }

    public final boolean a() {
        return this.f68314b;
    }

    public void b() {
        this.f68314b = true;
    }

    public void c() {
        this.f68314b = false;
    }

    public void d(byte b11) {
        this.f68313a.writeLong(b11);
    }

    public final void e(char c11) {
        this.f68313a.a(c11);
    }

    public void f(double d11) {
        this.f68313a.c(String.valueOf(d11));
    }

    public void g(float f11) {
        this.f68313a.c(String.valueOf(f11));
    }

    public void h(int i11) {
        this.f68313a.writeLong(i11);
    }

    public void i(long j11) {
        this.f68313a.writeLong(j11);
    }

    public final void j(String v11) {
        Intrinsics.h(v11, "v");
        this.f68313a.c(v11);
    }

    public void k(short s11) {
        this.f68313a.writeLong(s11);
    }

    public void l(boolean z10) {
        this.f68313a.c(String.valueOf(z10));
    }

    public final void m(String value) {
        Intrinsics.h(value, "value");
        this.f68313a.b(value);
    }

    protected final void n(boolean z10) {
        this.f68314b = z10;
    }

    public void o() {
    }

    public void p() {
    }
}
