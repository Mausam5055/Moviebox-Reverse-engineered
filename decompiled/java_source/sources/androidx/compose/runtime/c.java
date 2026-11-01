package androidx.compose.runtime;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3674a;

    public c(int i11) {
        this.f3674a = i11;
    }

    public final int a() {
        return this.f3674a;
    }

    public final boolean b() {
        return this.f3674a != Integer.MIN_VALUE;
    }

    public final void c(int i11) {
        this.f3674a = i11;
    }

    public final int d(j2 j2Var) {
        return j2Var.c(this);
    }

    public final int e(m2 m2Var) {
        return m2Var.F(this);
    }

    public String toString() {
        return super.toString() + "{ location = " + this.f3674a + " }";
    }
}
