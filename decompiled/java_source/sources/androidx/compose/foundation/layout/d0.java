package androidx.compose.foundation.layout;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class d0 implements c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f2849a = new d0();

    private d0() {
    }

    @Override // androidx.compose.foundation.layout.c0
    public androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f11, boolean z10) {
        if (f11 > 0.0d) {
            return fVar.e(new LayoutWeightElement(RangesKt.h(f11, Float.MAX_VALUE), z10));
        }
        throw new IllegalArgumentException(("invalid weight " + f11 + "; must be greater than zero").toString());
    }
}
