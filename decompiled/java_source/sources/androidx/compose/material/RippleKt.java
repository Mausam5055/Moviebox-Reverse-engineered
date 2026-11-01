package androidx.compose.material;

import androidx.compose.foundation.b0;
import androidx.compose.foundation.x;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class RippleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f3368a = CompositionLocalKt.f(new Function0<Boolean>() { // from class: androidx.compose.material.RippleKt$LocalUseFallbackRippleImplementation$1
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s1 f3369b = CompositionLocalKt.d(null, new Function0<g>() { // from class: androidx.compose.material.RippleKt$LocalRippleConfiguration$1
        @Override // kotlin.jvm.functions.Function0
        public final g invoke() {
            return new g(0L, null, 3, null);
        }
    }, 1, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final i f3370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final i f3371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.compose.material.ripple.c f3372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.compose.material.ripple.c f3373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final androidx.compose.material.ripple.c f3374g;

    static {
        o0.i.a aVar = o0.i.f70603b;
        float fB = aVar.b();
        u1.a aVar2 = u1.f4658b;
        f3370c = new i(true, fB, aVar2.e(), (DefaultConstructorMarker) null);
        f3371d = new i(false, aVar.b(), aVar2.e(), (DefaultConstructorMarker) null);
        f3372e = new androidx.compose.material.ripple.c(0.16f, 0.24f, 0.08f, 0.24f);
        f3373f = new androidx.compose.material.ripple.c(0.08f, 0.12f, 0.04f, 0.12f);
        f3374g = new androidx.compose.material.ripple.c(0.08f, 0.12f, 0.04f, 0.1f);
    }

    public static final s1 d() {
        return f3369b;
    }

    public static final b0 e(boolean z10, float f11, long j11) {
        if (o0.i.i(f11, o0.i.f70603b.b()) && u1.m(j11, u1.f4658b.e())) {
            return z10 ? f3370c : f3371d;
        }
        return new i(z10, f11, j11, (DefaultConstructorMarker) null);
    }

    public static final x f(boolean z10, float f11, long j11, androidx.compose.runtime.i iVar, int i11, int i12) {
        x xVarE;
        if ((i12 & 1) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i12 & 2) != 0) {
            f11 = o0.i.f70603b.b();
        }
        float f12 = f11;
        if ((i12 & 4) != 0) {
            j11 = u1.f4658b.e();
        }
        long j12 = j11;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-58830494, i11, -1, "androidx.compose.material.rippleOrFallbackImplementation (Ripple.kt:264)");
        }
        if (((Boolean) iVar.l(f3368a)).booleanValue()) {
            iVar.P(96412190);
            xVarE = androidx.compose.material.ripple.h.f(z11, f12, j12, iVar, i11 & 1022, 0);
            iVar.K();
        } else {
            iVar.P(96503175);
            iVar.K();
            xVarE = e(z11, f12, j12);
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return xVarE;
    }
}
