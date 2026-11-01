package androidx.compose.material.ripple;

import y.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f3499a = o0.i.g(10);

    public static final float a(o0.e eVar, boolean z10, long j11) {
        float fK = y.g.k(y.h.a(m.i(j11), m.g(j11))) / 2.0f;
        return z10 ? fK + eVar.E0(f3499a) : fK;
    }

    public static final float b(long j11) {
        return Math.max(m.i(j11), m.g(j11)) * 0.3f;
    }
}
