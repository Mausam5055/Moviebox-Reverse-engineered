package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32900b;

    protected e(int i11, int i12) {
        this.f32899a = i11;
        this.f32900b = i12;
    }

    public final int a() {
        return this.f32900b;
    }

    public abstract byte[] b();

    public abstract byte[] c(int i11, byte[] bArr);

    public final int d() {
        return this.f32899a;
    }

    public e e() {
        return new d(this);
    }

    public boolean f() {
        return false;
    }

    public e g() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public final String toString() {
        char c11;
        int i11 = this.f32899a;
        byte[] bArrC = new byte[i11];
        StringBuilder sb2 = new StringBuilder(this.f32900b * (i11 + 1));
        for (int i12 = 0; i12 < this.f32900b; i12++) {
            bArrC = c(i12, bArrC);
            for (int i13 = 0; i13 < this.f32899a; i13++) {
                int i14 = bArrC[i13] & 255;
                if (i14 < 64) {
                    c11 = '#';
                } else if (i14 < 128) {
                    c11 = '+';
                } else {
                    c11 = i14 < 192 ? '.' : ' ';
                }
                sb2.append(c11);
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
