package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f3398a = new c();

    private c() {
    }

    private final float a(float f11, float f12, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1528360391, i11, -1, "androidx.compose.material.ContentAlpha.contentAlpha (ContentAlpha.kt:76)");
        }
        long jU = ((u1) iVar.l(ContentColorKt.a())).u();
        if (!e.f3409a.a(iVar, 6).m() ? w1.i(jU) >= 0.5d : w1.i(jU) <= 0.5d) {
            f11 = f12;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return f11;
    }

    public final float b(androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(621183615, i11, -1, "androidx.compose.material.ContentAlpha.<get-disabled> (ContentAlpha.kt:57)");
        }
        float fA = a(0.38f, 0.38f, iVar, ((i11 << 6) & 896) | 54);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fA;
    }
}
