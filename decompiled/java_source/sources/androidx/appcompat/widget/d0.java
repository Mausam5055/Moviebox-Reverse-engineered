package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes.dex */
class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1974a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1975b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1976c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1977d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1978e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1979f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1980g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1981h = false;

    d0() {
    }

    public int a() {
        return this.f1980g ? this.f1974a : this.f1975b;
    }

    public int b() {
        return this.f1974a;
    }

    public int c() {
        return this.f1975b;
    }

    public int d() {
        return this.f1980g ? this.f1975b : this.f1974a;
    }

    public void e(int i11, int i12) {
        this.f1981h = false;
        if (i11 != Integer.MIN_VALUE) {
            this.f1978e = i11;
            this.f1974a = i11;
        }
        if (i12 != Integer.MIN_VALUE) {
            this.f1979f = i12;
            this.f1975b = i12;
        }
    }

    public void f(boolean z10) {
        if (z10 == this.f1980g) {
            return;
        }
        this.f1980g = z10;
        if (!this.f1981h) {
            this.f1974a = this.f1978e;
            this.f1975b = this.f1979f;
            return;
        }
        if (z10) {
            int i11 = this.f1977d;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.f1978e;
            }
            this.f1974a = i11;
            int i12 = this.f1976c;
            if (i12 == Integer.MIN_VALUE) {
                i12 = this.f1979f;
            }
            this.f1975b = i12;
            return;
        }
        int i13 = this.f1976c;
        if (i13 == Integer.MIN_VALUE) {
            i13 = this.f1978e;
        }
        this.f1974a = i13;
        int i14 = this.f1977d;
        if (i14 == Integer.MIN_VALUE) {
            i14 = this.f1979f;
        }
        this.f1975b = i14;
    }

    public void g(int i11, int i12) {
        this.f1976c = i11;
        this.f1977d = i12;
        this.f1981h = true;
        if (this.f1980g) {
            if (i12 != Integer.MIN_VALUE) {
                this.f1974a = i12;
            }
            if (i11 != Integer.MIN_VALUE) {
                this.f1975b = i11;
                return;
            }
            return;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1974a = i11;
        }
        if (i12 != Integer.MIN_VALUE) {
            this.f1975b = i12;
        }
    }
}
