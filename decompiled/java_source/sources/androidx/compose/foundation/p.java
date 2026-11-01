package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;

/* JADX INFO: loaded from: classes.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3149c = o0.t.f70624b.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EdgeEffect f3150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EdgeEffect f3151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private EdgeEffect f3152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private EdgeEffect f3153g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private EdgeEffect f3154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private EdgeEffect f3155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private EdgeEffect f3156j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private EdgeEffect f3157k;

    public p(Context context, int i11) {
        this.f3147a = context;
        this.f3148b = i11;
    }

    private final EdgeEffect e() {
        EdgeEffect edgeEffectA = o.f3146a.a(this.f3147a);
        edgeEffectA.setColor(this.f3148b);
        if (!o0.t.e(this.f3149c, o0.t.f70624b.a())) {
            edgeEffectA.setSize(o0.t.g(this.f3149c), o0.t.f(this.f3149c));
        }
        return edgeEffectA;
    }

    private final boolean n(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    private final boolean x(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !(o.f3146a.b(edgeEffect) == 0.0f);
    }

    public final boolean A() {
        return x(this.f3150d);
    }

    public final void B(long j11) {
        this.f3149c = j11;
        EdgeEffect edgeEffect = this.f3150d;
        if (edgeEffect != null) {
            edgeEffect.setSize(o0.t.g(j11), o0.t.f(j11));
        }
        EdgeEffect edgeEffect2 = this.f3151e;
        if (edgeEffect2 != null) {
            edgeEffect2.setSize(o0.t.g(j11), o0.t.f(j11));
        }
        EdgeEffect edgeEffect3 = this.f3152f;
        if (edgeEffect3 != null) {
            edgeEffect3.setSize(o0.t.f(j11), o0.t.g(j11));
        }
        EdgeEffect edgeEffect4 = this.f3153g;
        if (edgeEffect4 != null) {
            edgeEffect4.setSize(o0.t.f(j11), o0.t.g(j11));
        }
        EdgeEffect edgeEffect5 = this.f3154h;
        if (edgeEffect5 != null) {
            edgeEffect5.setSize(o0.t.g(j11), o0.t.f(j11));
        }
        EdgeEffect edgeEffect6 = this.f3155i;
        if (edgeEffect6 != null) {
            edgeEffect6.setSize(o0.t.g(j11), o0.t.f(j11));
        }
        EdgeEffect edgeEffect7 = this.f3156j;
        if (edgeEffect7 != null) {
            edgeEffect7.setSize(o0.t.f(j11), o0.t.g(j11));
        }
        EdgeEffect edgeEffect8 = this.f3157k;
        if (edgeEffect8 != null) {
            edgeEffect8.setSize(o0.t.f(j11), o0.t.g(j11));
        }
    }

    public final EdgeEffect f() {
        EdgeEffect edgeEffect = this.f3151e;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3151e = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect g() {
        EdgeEffect edgeEffect = this.f3155i;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3155i = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect h() {
        EdgeEffect edgeEffect = this.f3152f;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3152f = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect i() {
        EdgeEffect edgeEffect = this.f3156j;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3156j = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect j() {
        EdgeEffect edgeEffect = this.f3153g;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3153g = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect k() {
        EdgeEffect edgeEffect = this.f3157k;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3157k = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect l() {
        EdgeEffect edgeEffect = this.f3150d;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3150d = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect m() {
        EdgeEffect edgeEffect = this.f3154h;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f3154h = edgeEffectE;
        return edgeEffectE;
    }

    public final boolean o() {
        return n(this.f3151e);
    }

    public final boolean p() {
        return x(this.f3155i);
    }

    public final boolean q() {
        return x(this.f3151e);
    }

    public final boolean r() {
        return n(this.f3152f);
    }

    public final boolean s() {
        return x(this.f3156j);
    }

    public final boolean t() {
        return x(this.f3152f);
    }

    public final boolean u() {
        return n(this.f3153g);
    }

    public final boolean v() {
        return x(this.f3157k);
    }

    public final boolean w() {
        return x(this.f3153g);
    }

    public final boolean y() {
        return n(this.f3150d);
    }

    public final boolean z() {
        return x(this.f3154h);
    }
}
