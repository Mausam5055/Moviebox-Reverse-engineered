package f3;

import androidx.media3.common.util.j0;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes2.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f62308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f62309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f62310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f62311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f62312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f62313f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f62319l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public u f62321n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f62323p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f62324q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f62325r;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long[] f62314g = new long[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f62315h = new int[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f62316i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f62317j = new long[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean[] f62318k = new boolean[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean[] f62320m = new boolean[0];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final j0 f62322o = new j0();

    public void a(j0 j0Var) {
        j0Var.l(this.f62322o.e(), 0, this.f62322o.g());
        this.f62322o.W(0);
        this.f62323p = false;
    }

    public void b(l2.s sVar) {
        sVar.readFully(this.f62322o.e(), 0, this.f62322o.g());
        this.f62322o.W(0);
        this.f62323p = false;
    }

    public long c(int i11) {
        return this.f62317j[i11];
    }

    public void d(int i11) {
        this.f62322o.S(i11);
        this.f62319l = true;
        this.f62323p = true;
    }

    public void e(int i11, int i12) {
        this.f62312e = i11;
        this.f62313f = i12;
        if (this.f62315h.length < i11) {
            this.f62314g = new long[i11];
            this.f62315h = new int[i11];
        }
        if (this.f62316i.length < i12) {
            int i13 = (i12 * Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) / 100;
            this.f62316i = new int[i13];
            this.f62317j = new long[i13];
            this.f62318k = new boolean[i13];
            this.f62320m = new boolean[i13];
        }
    }

    public void f() {
        this.f62312e = 0;
        this.f62324q = 0L;
        this.f62325r = false;
        this.f62319l = false;
        this.f62323p = false;
        this.f62321n = null;
    }

    public boolean g(int i11) {
        return this.f62319l && this.f62320m[i11];
    }
}
