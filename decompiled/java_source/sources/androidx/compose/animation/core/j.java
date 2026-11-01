package androidx.compose.animation.core;

import kotlin.jvm.internal.FloatCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    public static final i a(float f11, float f12, long j11, long j12, boolean z10) {
        return new i(VectorConvertersKt.b(FloatCompanionObject.f67281a), Float.valueOf(f11), p.a(f12), j11, j12, z10);
    }

    public static final i b(s0 s0Var, Object obj, Object obj2, long j11, long j12, boolean z10) {
        return new i(s0Var, obj, (o) s0Var.a().invoke(obj2), j11, j12, z10);
    }

    public static /* synthetic */ i c(float f11, float f12, long j11, long j12, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f12 = 0.0f;
        }
        long j13 = (i11 & 4) != 0 ? Long.MIN_VALUE : j11;
        long j14 = (i11 & 8) == 0 ? j12 : Long.MIN_VALUE;
        if ((i11 & 16) != 0) {
            z10 = false;
        }
        return a(f11, f12, j13, j14, z10);
    }

    public static final i e(i iVar, float f11, float f12, long j11, long j12, boolean z10) {
        return new i(iVar.e(), Float.valueOf(f11), p.a(f12), j11, j12, z10);
    }

    public static final i f(i iVar, Object obj, o oVar, long j11, long j12, boolean z10) {
        return new i(iVar.e(), obj, oVar, j11, j12, z10);
    }

    public static /* synthetic */ i g(i iVar, float f11, float f12, long j11, long j12, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = ((Number) iVar.getValue()).floatValue();
        }
        if ((i11 & 2) != 0) {
            f12 = ((k) iVar.g()).f();
        }
        float f13 = f12;
        if ((i11 & 4) != 0) {
            j11 = iVar.d();
        }
        long j13 = j11;
        if ((i11 & 8) != 0) {
            j12 = iVar.c();
        }
        long j14 = j12;
        if ((i11 & 16) != 0) {
            z10 = iVar.h();
        }
        return e(iVar, f11, f13, j13, j14, z10);
    }

    public static /* synthetic */ i h(i iVar, Object obj, o oVar, long j11, long j12, boolean z10, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            obj = iVar.getValue();
        }
        if ((i11 & 2) != 0) {
            oVar = p.e(iVar.g());
        }
        o oVar2 = oVar;
        if ((i11 & 4) != 0) {
            j11 = iVar.d();
        }
        long j13 = j11;
        if ((i11 & 8) != 0) {
            j12 = iVar.c();
        }
        long j14 = j12;
        if ((i11 & 16) != 0) {
            z10 = iVar.h();
        }
        return f(iVar, obj, oVar2, j13, j14, z10);
    }

    public static final o i(s0 s0Var, Object obj) {
        o oVar = (o) s0Var.a().invoke(obj);
        oVar.d();
        return oVar;
    }
}
