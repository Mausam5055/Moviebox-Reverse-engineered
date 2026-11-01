package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f3418a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f3419b = 0;

    private k() {
    }

    public final j a(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, androidx.compose.runtime.i iVar, int i11, int i12, int i13) {
        long jH;
        long jH2 = (i13 & 1) != 0 ? e.f3409a.a(iVar, 6).h() : j11;
        if ((i13 & 2) != 0) {
            e eVar = e.f3409a;
            jH = w1.h(u1.k(eVar.a(iVar, 6).g(), c.f3398a.b(iVar, 6), 0.0f, 0.0f, 0.0f, 14, null), eVar.a(iVar, 6).l());
        } else {
            jH = j12;
        }
        long jH3 = (i13 & 4) != 0 ? e.f3409a.a(iVar, 6).h() : j13;
        long jK = (i13 & 8) != 0 ? u1.k(jH3, 0.24f, 0.0f, 0.0f, 0.0f, 14, null) : j14;
        long jK2 = (i13 & 16) != 0 ? u1.k(e.f3409a.a(iVar, 6).g(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long jK3 = (i13 & 32) != 0 ? u1.k(jK2, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long jK4 = (i13 & 64) != 0 ? u1.k(ColorsKt.b(jH3, iVar, (i11 >> 6) & 14), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long jK5 = (i13 & 128) != 0 ? u1.k(jH3, 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j18;
        long jK6 = (i13 & 256) != 0 ? u1.k(jK4, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long jK7 = (i13 & 512) != 0 ? u1.k(jK3, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j20;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(436017687, i11, i12, "androidx.compose.material.SliderDefaults.colors (Slider.kt:500)");
        }
        d dVar = new d(jH2, jH, jH3, jK, jK2, jK3, jK4, jK5, jK6, jK7, null);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return dVar;
    }
}
