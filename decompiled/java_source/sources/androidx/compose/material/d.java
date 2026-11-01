package androidx.compose.material;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class d implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f3399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f3400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f3401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f3404f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f3405g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f3406h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f3407i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f3408j;

    private d(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20) {
        this.f3399a = j11;
        this.f3400b = j12;
        this.f3401c = j13;
        this.f3402d = j14;
        this.f3403e = j15;
        this.f3404f = j16;
        this.f3405g = j17;
        this.f3406h = j18;
        this.f3407i = j19;
        this.f3408j = j20;
    }

    public /* synthetic */ d(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13, j14, j15, j16, j17, j18, j19, j20);
    }

    @Override // androidx.compose.material.j
    public a3 a(boolean z10, boolean z11, androidx.compose.runtime.i iVar, int i11) {
        long j11;
        iVar.P(-1491563694);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1491563694, i11, -1, "androidx.compose.material.DefaultSliderColors.tickColor (Slider.kt:1111)");
        }
        if (z10) {
            j11 = z11 ? this.f3405g : this.f3406h;
        } else {
            j11 = z11 ? this.f3407i : this.f3408j;
        }
        a3 a3VarI = r2.i(u1.g(j11), iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return a3VarI;
    }

    @Override // androidx.compose.material.j
    public a3 b(boolean z10, boolean z11, androidx.compose.runtime.i iVar, int i11) {
        long j11;
        iVar.P(1575395620);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1575395620, i11, -1, "androidx.compose.material.DefaultSliderColors.trackColor (Slider.kt:1100)");
        }
        if (z10) {
            j11 = z11 ? this.f3401c : this.f3402d;
        } else {
            j11 = z11 ? this.f3403e : this.f3404f;
        }
        a3 a3VarI = r2.i(u1.g(j11), iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return a3VarI;
    }

    @Override // androidx.compose.material.j
    public a3 c(boolean z10, androidx.compose.runtime.i iVar, int i11) {
        iVar.P(-1733795637);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1733795637, i11, -1, "androidx.compose.material.DefaultSliderColors.thumbColor (Slider.kt:1095)");
        }
        a3 a3VarI = r2.i(u1.g(z10 ? this.f3399a : this.f3400b), iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return a3VarI;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return u1.m(this.f3399a, dVar.f3399a) && u1.m(this.f3400b, dVar.f3400b) && u1.m(this.f3401c, dVar.f3401c) && u1.m(this.f3402d, dVar.f3402d) && u1.m(this.f3403e, dVar.f3403e) && u1.m(this.f3404f, dVar.f3404f) && u1.m(this.f3405g, dVar.f3405g) && u1.m(this.f3406h, dVar.f3406h) && u1.m(this.f3407i, dVar.f3407i) && u1.m(this.f3408j, dVar.f3408j);
    }

    public int hashCode() {
        return (((((((((((((((((u1.s(this.f3399a) * 31) + u1.s(this.f3400b)) * 31) + u1.s(this.f3401c)) * 31) + u1.s(this.f3402d)) * 31) + u1.s(this.f3403e)) * 31) + u1.s(this.f3404f)) * 31) + u1.s(this.f3405g)) * 31) + u1.s(this.f3406h)) * 31) + u1.s(this.f3407i)) * 31) + u1.s(this.f3408j);
    }
}
