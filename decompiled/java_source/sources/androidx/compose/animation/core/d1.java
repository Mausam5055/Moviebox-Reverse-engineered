package androidx.compose.animation.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class d1 implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f2416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f2417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f2418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f2419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f2420e;

    public d1(e0 e0Var) {
        this.f2416a = e0Var;
        this.f2420e = e0Var.a();
    }

    @Override // androidx.compose.animation.core.x0
    public float a() {
        return this.f2420e;
    }

    @Override // androidx.compose.animation.core.x0
    public o b(long j11, o oVar, o oVar2) {
        if (this.f2418c == null) {
            this.f2418c = p.g(oVar);
        }
        o oVar3 = this.f2418c;
        if (oVar3 == null) {
            Intrinsics.z("velocityVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar4 = this.f2418c;
            if (oVar4 == null) {
                Intrinsics.z("velocityVector");
                oVar4 = null;
            }
            oVar4.e(i11, this.f2416a.b(j11, oVar.a(i11), oVar2.a(i11)));
        }
        o oVar5 = this.f2418c;
        if (oVar5 != null) {
            return oVar5;
        }
        Intrinsics.z("velocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.x0
    public long c(o oVar, o oVar2) {
        if (this.f2418c == null) {
            this.f2418c = p.g(oVar);
        }
        o oVar3 = this.f2418c;
        if (oVar3 == null) {
            Intrinsics.z("velocityVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        long jMax = 0;
        for (int i11 = 0; i11 < iB; i11++) {
            jMax = Math.max(jMax, this.f2416a.c(oVar.a(i11), oVar2.a(i11)));
        }
        return jMax;
    }

    @Override // androidx.compose.animation.core.x0
    public o d(o oVar, o oVar2) {
        if (this.f2419d == null) {
            this.f2419d = p.g(oVar);
        }
        o oVar3 = this.f2419d;
        if (oVar3 == null) {
            Intrinsics.z("targetVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar4 = this.f2419d;
            if (oVar4 == null) {
                Intrinsics.z("targetVector");
                oVar4 = null;
            }
            oVar4.e(i11, this.f2416a.d(oVar.a(i11), oVar2.a(i11)));
        }
        o oVar5 = this.f2419d;
        if (oVar5 != null) {
            return oVar5;
        }
        Intrinsics.z("targetVector");
        return null;
    }

    @Override // androidx.compose.animation.core.x0
    public o e(long j11, o oVar, o oVar2) {
        if (this.f2417b == null) {
            this.f2417b = p.g(oVar);
        }
        o oVar3 = this.f2417b;
        if (oVar3 == null) {
            Intrinsics.z("valueVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar4 = this.f2417b;
            if (oVar4 == null) {
                Intrinsics.z("valueVector");
                oVar4 = null;
            }
            oVar4.e(i11, this.f2416a.e(j11, oVar.a(i11), oVar2.a(i11)));
        }
        o oVar5 = this.f2417b;
        if (oVar5 != null) {
            return oVar5;
        }
        Intrinsics.z("valueVector");
        return null;
    }
}
