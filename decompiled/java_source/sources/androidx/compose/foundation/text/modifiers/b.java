package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.style.p;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final long a(long j11, boolean z10, int i11, float f11) {
        return o0.b.f70596b.b(0, c(j11, z10, i11, f11), 0, o0.b.k(j11));
    }

    public static final int b(boolean z10, int i11, int i12) {
        if (z10 || !p.e(i11, p.f6442a.b())) {
            return RangesKt.f(i12, 1);
        }
        return 1;
    }

    public static final int c(long j11, boolean z10, int i11, float f11) {
        int iL = ((z10 || p.e(i11, p.f6442a.b())) && o0.b.h(j11)) ? o0.b.l(j11) : Integer.MAX_VALUE;
        return o0.b.n(j11) == iL ? iL : RangesKt.m(androidx.compose.foundation.text.b.a(f11), o0.b.n(j11), iL);
    }
}
