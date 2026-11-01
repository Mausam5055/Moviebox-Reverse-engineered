package nf;

import gf.c;
import gf.d;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static final byte[] A = {68, 88, 68, 73, 70, 70};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ff.a f70425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private short f70426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f70431g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f70432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f70433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f70434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70435k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f70436l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70437m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70438n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f70439o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70440p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f70441q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f70442r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f70443s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f70444t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f70445u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f70446v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f70447w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f70448x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f70449y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private byte[] f70450z;

    public a(InputStream inputStream) {
        this.f70425a = new ff.a(ByteBuffer.wrap(d.a(inputStream)));
        z();
    }

    private void z() {
        ff.a aVar = this.f70425a;
        byte[] bArr = A;
        byte[] bArrL = aVar.l(bArr.length);
        if (c.d(bArrL, bArr) != 0) {
            throw new IllegalStateException("bad dex patch file magic: " + Arrays.toString(bArrL));
        }
        short sB = this.f70425a.B();
        this.f70426b = sB;
        if (sB != 2 && sB != 3) {
            throw new IllegalStateException("bad dex patch file version: " + ((int) this.f70426b));
        }
        if (sB > 2) {
            this.f70427c = this.f70425a.w();
            this.f70428d = this.f70425a.w();
        }
        this.f70429e = this.f70425a.w();
        this.f70430f = this.f70425a.w();
        this.f70431g = this.f70425a.w();
        this.f70432h = this.f70425a.w();
        this.f70433i = this.f70425a.w();
        this.f70434j = this.f70425a.w();
        this.f70435k = this.f70425a.w();
        if (this.f70426b > 2) {
            this.f70436l = this.f70425a.w();
            this.f70437m = this.f70425a.w();
        }
        this.f70438n = this.f70425a.w();
        this.f70439o = this.f70425a.w();
        this.f70440p = this.f70425a.w();
        this.f70441q = this.f70425a.w();
        this.f70442r = this.f70425a.w();
        this.f70443s = this.f70425a.w();
        this.f70444t = this.f70425a.w();
        this.f70445u = this.f70425a.w();
        this.f70446v = this.f70425a.w();
        this.f70447w = this.f70425a.w();
        this.f70448x = this.f70425a.w();
        this.f70449y = this.f70425a.w();
        this.f70450z = this.f70425a.l(20);
        this.f70425a.g(this.f70430f);
    }

    public ff.a a() {
        return this.f70425a;
    }

    public int b() {
        return this.f70427c;
    }

    public byte[] c() {
        return this.f70450z;
    }

    public int d() {
        return this.f70447w;
    }

    public int e() {
        return this.f70441q;
    }

    public int f() {
        return this.f70442r;
    }

    public int g() {
        return this.f70449y;
    }

    public int h() {
        return this.f70436l;
    }

    public int i() {
        return this.f70443s;
    }

    public int j() {
        return this.f70438n;
    }

    public int k() {
        return this.f70444t;
    }

    public int l() {
        return this.f70446v;
    }

    public int m() {
        return this.f70428d;
    }

    public int n() {
        return this.f70429e;
    }

    public int o() {
        return this.f70448x;
    }

    public int p() {
        return this.f70434j;
    }

    public int q() {
        return this.f70439o;
    }

    public int r() {
        return this.f70437m;
    }

    public int s() {
        return this.f70435k;
    }

    public int t() {
        return this.f70433i;
    }

    public int u() {
        return this.f70445u;
    }

    public int v() {
        return this.f70431g;
    }

    public int w() {
        return this.f70432h;
    }

    public int x() {
        return this.f70440p;
    }

    public short y() {
        return this.f70426b;
    }
}
