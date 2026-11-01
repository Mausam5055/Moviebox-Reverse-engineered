package o9;

import com.google.android.exoplayer2.util.d0;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes4.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f70892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f70893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f70894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f70895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f70896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f70897f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f70903l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p f70905n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f70907p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f70908q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f70909r;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long[] f70898g = new long[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f70899h = new int[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f70900i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f70901j = new long[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean[] f70902k = new boolean[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean[] f70904m = new boolean[0];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final d0 f70906o = new d0();

    public void a(d0 d0Var) {
        d0Var.j(this.f70906o.d(), 0, this.f70906o.f());
        this.f70906o.P(0);
        this.f70907p = false;
    }

    public void b(g9.m mVar) {
        mVar.readFully(this.f70906o.d(), 0, this.f70906o.f());
        this.f70906o.P(0);
        this.f70907p = false;
    }

    public long c(int i11) {
        return this.f70901j[i11];
    }

    public void d(int i11) {
        this.f70906o.L(i11);
        this.f70903l = true;
        this.f70907p = true;
    }

    public void e(int i11, int i12) {
        this.f70896e = i11;
        this.f70897f = i12;
        if (this.f70899h.length < i11) {
            this.f70898g = new long[i11];
            this.f70899h = new int[i11];
        }
        if (this.f70900i.length < i12) {
            int i13 = (i12 * Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) / 100;
            this.f70900i = new int[i13];
            this.f70901j = new long[i13];
            this.f70902k = new boolean[i13];
            this.f70904m = new boolean[i13];
        }
    }

    public void f() {
        this.f70896e = 0;
        this.f70908q = 0L;
        this.f70909r = false;
        this.f70903l = false;
        this.f70907p = false;
        this.f70905n = null;
    }

    public boolean g(int i11) {
        return this.f70903l && this.f70904m[i11];
    }
}
