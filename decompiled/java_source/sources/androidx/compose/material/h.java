package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f3412a = new h();

    private h() {
    }

    public final androidx.compose.material.ripple.c a(long j11, boolean z10) {
        if (z10) {
            return ((double) w1.i(j11)) > 0.5d ? RippleKt.f3372e : RippleKt.f3373f;
        }
        return RippleKt.f3374g;
    }

    public final long b(long j11, boolean z10) {
        return (z10 || ((double) w1.i(j11)) >= 0.5d) ? j11 : u1.f4658b.f();
    }
}
