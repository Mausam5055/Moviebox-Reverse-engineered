package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final gf.a f40640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f40641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f40642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f40643d;

    public n(l lVar, int i11) {
        this(lVar.a(), i11);
    }

    public n(gf.a aVar, int i11) {
        this.f40640a = aVar;
        this.f40641b = i11;
    }

    private void a(int i11) {
        if (c() != i11) {
            throw new IllegalStateException(String.format("Expected %x but was %x", Integer.valueOf(i11), Integer.valueOf(c())));
        }
    }

    public int b() {
        return this.f40642c;
    }

    public int c() {
        if (this.f40641b == -1) {
            byte b11 = this.f40640a.readByte();
            this.f40641b = b11 & 31;
            this.f40643d = (b11 & 224) >> 5;
        }
        return this.f40641b;
    }

    public int d() {
        a(29);
        this.f40641b = -1;
        this.f40642c = p.b(this.f40640a);
        return p.b(this.f40640a);
    }

    public int e() {
        return p.b(this.f40640a);
    }

    public int f() {
        a(28);
        this.f40641b = -1;
        return p.b(this.f40640a);
    }

    public boolean g() {
        a(31);
        this.f40641b = -1;
        return this.f40643d != 0;
    }

    public byte h() {
        a(0);
        this.f40641b = -1;
        return (byte) m.a(this.f40640a, this.f40643d);
    }

    public char i() {
        a(3);
        this.f40641b = -1;
        return (char) m.c(this.f40640a, this.f40643d, false);
    }

    public double j() {
        a(17);
        this.f40641b = -1;
        return Double.longBitsToDouble(m.d(this.f40640a, this.f40643d, true));
    }

    public int k() {
        a(27);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public int l() {
        a(25);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public float m() {
        a(16);
        this.f40641b = -1;
        return Float.intBitsToFloat(m.c(this.f40640a, this.f40643d, true));
    }

    public int n() {
        a(4);
        this.f40641b = -1;
        return m.a(this.f40640a, this.f40643d);
    }

    public long o() {
        a(6);
        this.f40641b = -1;
        return m.b(this.f40640a, this.f40643d);
    }

    public int p() {
        a(26);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public int q() {
        a(22);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public int r() {
        a(21);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public void s() {
        a(30);
        this.f40641b = -1;
    }

    public short t() {
        a(2);
        this.f40641b = -1;
        return (short) m.a(this.f40640a, this.f40643d);
    }

    public int u() {
        a(23);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public int v() {
        a(24);
        this.f40641b = -1;
        return m.c(this.f40640a, this.f40643d, false);
    }

    public void w() {
        int iC = c();
        if (iC == 0) {
            h();
            return;
        }
        if (iC == 6) {
            o();
            return;
        }
        if (iC == 2) {
            t();
            return;
        }
        if (iC == 3) {
            i();
            return;
        }
        if (iC == 4) {
            n();
            return;
        }
        if (iC == 16) {
            m();
            return;
        }
        if (iC == 17) {
            j();
            return;
        }
        int i11 = 0;
        switch (iC) {
            case 21:
                r();
                return;
            case 22:
                q();
                return;
            case 23:
                u();
                return;
            case 24:
                v();
                return;
            case 25:
                l();
                return;
            case 26:
                p();
                return;
            case 27:
                k();
                return;
            case 28:
                int iF = f();
                while (i11 < iF) {
                    w();
                    i11++;
                }
                return;
            case NOTIFICATION_REDIRECT_VALUE:
                int iD = d();
                while (i11 < iD) {
                    e();
                    w();
                    i11++;
                }
                return;
            case 30:
                s();
                return;
            case TEMPLATE_HTML_SIZE_VALUE:
                g();
                return;
            default:
                throw new DexException("Unexpected type: " + Integer.toHexString(this.f40641b));
        }
    }
}
