package androidx.compose.animation.core;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s0 f2426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f2427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f2428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0 f2429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f2430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o f2431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f2432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f2433h = Long.MIN_VALUE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i1 f2434i;

    public f(Object obj, s0 s0Var, o oVar, long j11, Object obj2, long j12, boolean z10, Function0 function0) {
        this.f2426a = s0Var;
        this.f2427b = obj2;
        this.f2428c = j12;
        this.f2429d = function0;
        this.f2430e = u2.c(obj, null, 2, null);
        this.f2431f = p.e(oVar);
        this.f2432g = j11;
        this.f2434i = u2.c(Boolean.valueOf(z10), null, 2, null);
    }

    public final void a() {
        k(false);
        this.f2429d.invoke();
    }

    public final long b() {
        return this.f2433h;
    }

    public final long c() {
        return this.f2432g;
    }

    public final long d() {
        return this.f2428c;
    }

    public final Object e() {
        return this.f2430e.getValue();
    }

    public final Object f() {
        return this.f2426a.b().invoke(this.f2431f);
    }

    public final o g() {
        return this.f2431f;
    }

    public final boolean h() {
        return ((Boolean) this.f2434i.getValue()).booleanValue();
    }

    public final void i(long j11) {
        this.f2433h = j11;
    }

    public final void j(long j11) {
        this.f2432g = j11;
    }

    public final void k(boolean z10) {
        this.f2434i.setValue(Boolean.valueOf(z10));
    }

    public final void l(Object obj) {
        this.f2430e.setValue(obj);
    }

    public final void m(o oVar) {
        this.f2431f = oVar;
    }
}
