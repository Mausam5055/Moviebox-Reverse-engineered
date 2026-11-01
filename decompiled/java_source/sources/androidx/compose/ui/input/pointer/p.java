package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {
    public static final boolean a(w wVar) {
        return (wVar.p() || wVar.l() || !wVar.i()) ? false : true;
    }

    public static final boolean b(w wVar) {
        return !wVar.l() && wVar.i();
    }

    public static final boolean c(w wVar) {
        return (wVar.p() || !wVar.l() || wVar.i()) ? false : true;
    }

    public static final boolean d(w wVar) {
        return wVar.l() && !wVar.i();
    }

    public static final boolean e(w wVar, long j11) {
        long jH = wVar.h();
        float fM = y.g.m(jH);
        float fN = y.g.n(jH);
        return fM < 0.0f || fM > ((float) o0.t.g(j11)) || fN < 0.0f || fN > ((float) o0.t.f(j11));
    }

    public static final boolean f(w wVar, long j11, long j12) {
        if (!h0.g(wVar.n(), h0.f4998a.d())) {
            return e(wVar, j11);
        }
        long jH = wVar.h();
        float fM = y.g.m(jH);
        float fN = y.g.n(jH);
        return fM < (-y.m.i(j12)) || fM > ((float) o0.t.g(j11)) + y.m.i(j12) || fN < (-y.m.g(j12)) || fN > ((float) o0.t.f(j11)) + y.m.g(j12);
    }

    public static final long g(w wVar) {
        return i(wVar, false);
    }

    public static final long h(w wVar) {
        return i(wVar, true);
    }

    private static final long i(w wVar, boolean z10) {
        long jQ = y.g.q(wVar.h(), wVar.k());
        return (z10 || !wVar.p()) ? jQ : y.g.f78470b.c();
    }

    public static final boolean j(w wVar) {
        return !y.g.j(i(wVar, true), y.g.f78470b.c());
    }
}
