package o3;

import android.text.Layout;

/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f70701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f70703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f70705e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f70711k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f70712l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Layout.Alignment f70715o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Layout.Alignment f70716p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f70718r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f70720t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f70721u;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70706f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f70707g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f70708h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f70709i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f70710j = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70713m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70714n = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f70717q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f70719s = Float.MAX_VALUE;

    private g t(g gVar, boolean z10) {
        int i11;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f70703c && gVar.f70703c) {
                z(gVar.f70702b);
            }
            if (this.f70708h == -1) {
                this.f70708h = gVar.f70708h;
            }
            if (this.f70709i == -1) {
                this.f70709i = gVar.f70709i;
            }
            if (this.f70701a == null && (str = gVar.f70701a) != null) {
                this.f70701a = str;
            }
            if (this.f70706f == -1) {
                this.f70706f = gVar.f70706f;
            }
            if (this.f70707g == -1) {
                this.f70707g = gVar.f70707g;
            }
            if (this.f70714n == -1) {
                this.f70714n = gVar.f70714n;
            }
            if (this.f70715o == null && (alignment2 = gVar.f70715o) != null) {
                this.f70715o = alignment2;
            }
            if (this.f70716p == null && (alignment = gVar.f70716p) != null) {
                this.f70716p = alignment;
            }
            if (this.f70717q == -1) {
                this.f70717q = gVar.f70717q;
            }
            if (this.f70710j == -1) {
                this.f70710j = gVar.f70710j;
                this.f70711k = gVar.f70711k;
            }
            if (this.f70718r == null) {
                this.f70718r = gVar.f70718r;
            }
            if (this.f70719s == Float.MAX_VALUE) {
                this.f70719s = gVar.f70719s;
            }
            if (this.f70720t == null) {
                this.f70720t = gVar.f70720t;
            }
            if (this.f70721u == null) {
                this.f70721u = gVar.f70721u;
            }
            if (z10 && !this.f70705e && gVar.f70705e) {
                w(gVar.f70704d);
            }
            if (z10 && this.f70713m == -1 && (i11 = gVar.f70713m) != -1) {
                this.f70713m = i11;
            }
        }
        return this;
    }

    public g A(String str) {
        this.f70701a = str;
        return this;
    }

    public g B(float f11) {
        this.f70711k = f11;
        return this;
    }

    public g C(int i11) {
        this.f70710j = i11;
        return this;
    }

    public g D(String str) {
        this.f70712l = str;
        return this;
    }

    public g E(boolean z10) {
        this.f70709i = z10 ? 1 : 0;
        return this;
    }

    public g F(boolean z10) {
        this.f70706f = z10 ? 1 : 0;
        return this;
    }

    public g G(Layout.Alignment alignment) {
        this.f70716p = alignment;
        return this;
    }

    public g H(String str) {
        this.f70720t = str;
        return this;
    }

    public g I(int i11) {
        this.f70714n = i11;
        return this;
    }

    public g J(int i11) {
        this.f70713m = i11;
        return this;
    }

    public g K(float f11) {
        this.f70719s = f11;
        return this;
    }

    public g L(Layout.Alignment alignment) {
        this.f70715o = alignment;
        return this;
    }

    public g M(boolean z10) {
        this.f70717q = z10 ? 1 : 0;
        return this;
    }

    public g N(b bVar) {
        this.f70718r = bVar;
        return this;
    }

    public g O(boolean z10) {
        this.f70707g = z10 ? 1 : 0;
        return this;
    }

    public g a(g gVar) {
        return t(gVar, true);
    }

    public int b() {
        if (this.f70705e) {
            return this.f70704d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public String c() {
        return this.f70721u;
    }

    public int d() {
        if (this.f70703c) {
            return this.f70702b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String e() {
        return this.f70701a;
    }

    public float f() {
        return this.f70711k;
    }

    public int g() {
        return this.f70710j;
    }

    public String h() {
        return this.f70712l;
    }

    public Layout.Alignment i() {
        return this.f70716p;
    }

    public String j() {
        return this.f70720t;
    }

    public int k() {
        return this.f70714n;
    }

    public int l() {
        return this.f70713m;
    }

    public float m() {
        return this.f70719s;
    }

    public int n() {
        int i11 = this.f70708h;
        if (i11 == -1 && this.f70709i == -1) {
            return -1;
        }
        return (i11 == 1 ? 1 : 0) | (this.f70709i == 1 ? 2 : 0);
    }

    public Layout.Alignment o() {
        return this.f70715o;
    }

    public boolean p() {
        return this.f70717q == 1;
    }

    public b q() {
        return this.f70718r;
    }

    public boolean r() {
        return this.f70705e;
    }

    public boolean s() {
        return this.f70703c;
    }

    public boolean u() {
        return this.f70706f == 1;
    }

    public boolean v() {
        return this.f70707g == 1;
    }

    public g w(int i11) {
        this.f70704d = i11;
        this.f70705e = true;
        return this;
    }

    public g x(boolean z10) {
        this.f70708h = z10 ? 1 : 0;
        return this;
    }

    public g y(String str) {
        this.f70721u = str;
        return this;
    }

    public g z(int i11) {
        this.f70702b = i11;
        this.f70703c = true;
        return this;
    }
}
