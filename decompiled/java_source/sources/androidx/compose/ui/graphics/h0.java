package androidx.compose.ui.graphics;

import android.graphics.Canvas;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Canvas f4449a = new Canvas();

    public static final m1 a(e4 e4Var) {
        g0 g0Var = new g0();
        g0Var.w(new Canvas(q0.b(e4Var)));
        return g0Var;
    }

    public static final m1 b(Canvas canvas) {
        g0 g0Var = new g0();
        g0Var.w(canvas);
        return g0Var;
    }

    public static final Canvas d(m1 m1Var) {
        Intrinsics.f(m1Var, "null cannot be cast to non-null type androidx.compose.ui.graphics.AndroidCanvas");
        return ((g0) m1Var).v();
    }
}
