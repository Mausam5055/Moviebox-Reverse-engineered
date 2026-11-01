package ia;

import android.text.Layout;

/* JADX INFO: loaded from: classes4.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f65127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f65129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65131e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f65137k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f65138l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Layout.Alignment f65141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Layout.Alignment f65142p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f65144r;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65132f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65133g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65134h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65135i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65136j = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65139m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f65140n = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f65143q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f65145s = Float.MAX_VALUE;

    private g r(g gVar, boolean z10) {
        int i11;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f65129c && gVar.f65129c) {
                w(gVar.f65128b);
            }
            if (this.f65134h == -1) {
                this.f65134h = gVar.f65134h;
            }
            if (this.f65135i == -1) {
                this.f65135i = gVar.f65135i;
            }
            if (this.f65127a == null && (str = gVar.f65127a) != null) {
                this.f65127a = str;
            }
            if (this.f65132f == -1) {
                this.f65132f = gVar.f65132f;
            }
            if (this.f65133g == -1) {
                this.f65133g = gVar.f65133g;
            }
            if (this.f65140n == -1) {
                this.f65140n = gVar.f65140n;
            }
            if (this.f65141o == null && (alignment2 = gVar.f65141o) != null) {
                this.f65141o = alignment2;
            }
            if (this.f65142p == null && (alignment = gVar.f65142p) != null) {
                this.f65142p = alignment;
            }
            if (this.f65143q == -1) {
                this.f65143q = gVar.f65143q;
            }
            if (this.f65136j == -1) {
                this.f65136j = gVar.f65136j;
                this.f65137k = gVar.f65137k;
            }
            if (this.f65144r == null) {
                this.f65144r = gVar.f65144r;
            }
            if (this.f65145s == Float.MAX_VALUE) {
                this.f65145s = gVar.f65145s;
            }
            if (z10 && !this.f65131e && gVar.f65131e) {
                u(gVar.f65130d);
            }
            if (z10 && this.f65139m == -1 && (i11 = gVar.f65139m) != -1) {
                this.f65139m = i11;
            }
        }
        return this;
    }

    public g A(String str) {
        this.f65138l = str;
        return this;
    }

    public g B(boolean z10) {
        this.f65135i = z10 ? 1 : 0;
        return this;
    }

    public g C(boolean z10) {
        this.f65132f = z10 ? 1 : 0;
        return this;
    }

    public g D(Layout.Alignment alignment) {
        this.f65142p = alignment;
        return this;
    }

    public g E(int i11) {
        this.f65140n = i11;
        return this;
    }

    public g F(int i11) {
        this.f65139m = i11;
        return this;
    }

    public g G(float f11) {
        this.f65145s = f11;
        return this;
    }

    public g H(Layout.Alignment alignment) {
        this.f65141o = alignment;
        return this;
    }

    public g I(boolean z10) {
        this.f65143q = z10 ? 1 : 0;
        return this;
    }

    public g J(b bVar) {
        this.f65144r = bVar;
        return this;
    }

    public g K(boolean z10) {
        this.f65133g = z10 ? 1 : 0;
        return this;
    }

    public g a(g gVar) {
        return r(gVar, true);
    }

    public int b() {
        if (this.f65131e) {
            return this.f65130d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.f65129c) {
            return this.f65128b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String d() {
        return this.f65127a;
    }

    public float e() {
        return this.f65137k;
    }

    public int f() {
        return this.f65136j;
    }

    public String g() {
        return this.f65138l;
    }

    public Layout.Alignment h() {
        return this.f65142p;
    }

    public int i() {
        return this.f65140n;
    }

    public int j() {
        return this.f65139m;
    }

    public float k() {
        return this.f65145s;
    }

    public int l() {
        int i11 = this.f65134h;
        if (i11 == -1 && this.f65135i == -1) {
            return -1;
        }
        return (i11 == 1 ? 1 : 0) | (this.f65135i == 1 ? 2 : 0);
    }

    public Layout.Alignment m() {
        return this.f65141o;
    }

    public boolean n() {
        return this.f65143q == 1;
    }

    public b o() {
        return this.f65144r;
    }

    public boolean p() {
        return this.f65131e;
    }

    public boolean q() {
        return this.f65129c;
    }

    public boolean s() {
        return this.f65132f == 1;
    }

    public boolean t() {
        return this.f65133g == 1;
    }

    public g u(int i11) {
        this.f65130d = i11;
        this.f65131e = true;
        return this;
    }

    public g v(boolean z10) {
        this.f65134h = z10 ? 1 : 0;
        return this;
    }

    public g w(int i11) {
        this.f65128b = i11;
        this.f65129c = true;
        return this;
    }

    public g x(String str) {
        this.f65127a = str;
        return this;
    }

    public g y(float f11) {
        this.f65137k = f11;
        return this;
    }

    public g z(int i11) {
        this.f65136j = i11;
        return this;
    }
}
