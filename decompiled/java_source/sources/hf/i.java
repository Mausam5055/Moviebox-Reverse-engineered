package hf;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private short[] f64457c;

    public i(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("initSize < 0");
        }
        this.f64457c = new short[i11];
    }

    private void f(int i11) {
        int iC = c();
        short[] sArr = this.f64457c;
        if (sArr.length - iC < i11) {
            short[] sArr2 = new short[sArr.length + (sArr.length >> 1)];
            System.arraycopy(sArr, 0, sArr2, 0, iC);
            this.f64457c = sArr2;
        }
    }

    public short[] g() {
        int iC = c();
        short[] sArr = this.f64457c;
        if (iC == sArr.length) {
            return sArr;
        }
        short[] sArr2 = new short[iC];
        System.arraycopy(sArr, 0, sArr2, 0, iC);
        return sArr2;
    }

    public void h(short s11) {
        f(1);
        this.f64457c[c()] = s11;
        a(1);
    }

    public void i(short s11, short s12) {
        h(s11);
        h(s12);
    }

    public void j(short s11, short s12, short s13) {
        h(s11);
        h(s12);
        h(s13);
    }

    public void k(short s11, short s12, short s13, short s14) {
        h(s11);
        h(s12);
        h(s13);
        h(s14);
    }

    public void l(short s11, short s12, short s13, short s14, short s15) {
        h(s11);
        h(s12);
        h(s13);
        h(s14);
        h(s15);
    }

    public void m(byte[] bArr) {
        int i11 = 0;
        boolean z10 = true;
        for (byte b11 : bArr) {
            if (z10) {
                i11 = b11 & 255;
                z10 = false;
            } else {
                int i12 = (b11 << 8) | i11;
                h((short) i12);
                i11 = i12;
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        h((short) i11);
    }

    public void n(int[] iArr) {
        for (int i11 : iArr) {
            q(i11);
        }
    }

    public void o(long[] jArr) {
        for (long j11 : jArr) {
            r(j11);
        }
    }

    public void p(short[] sArr) {
        for (short s11 : sArr) {
            h(s11);
        }
    }

    public void q(int i11) {
        h((short) i11);
        h((short) (i11 >> 16));
    }

    public void r(long j11) {
        h((short) j11);
        h((short) (j11 >> 16));
        h((short) (j11 >> 32));
        h((short) (j11 >> 48));
    }
}
