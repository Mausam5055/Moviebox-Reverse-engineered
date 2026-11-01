package hf;

import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final short[] f64456c;

    public h(short[] sArr) {
        if (sArr == null) {
            throw new NullPointerException("array == null");
        }
        this.f64456c = sArr;
    }

    public boolean f() {
        return c() < this.f64456c.length;
    }

    public int g() throws EOFException {
        try {
            short s11 = this.f64456c[c()];
            a(1);
            return s11 & 65535;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new EOFException();
        }
    }

    public int h() {
        return g() | (g() << 16);
    }

    public long i() {
        return ((long) g()) | (((long) g()) << 16) | (((long) g()) << 32) | (((long) g()) << 48);
    }
}
