package androidx.compose.foundation.layout;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class l implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f2860a = new l();

    private l() {
    }

    @Override // androidx.compose.foundation.layout.k
    public androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f11, boolean z10) {
        if (f11 > 0.0d) {
            return fVar.e(new LayoutWeightElement(RangesKt.h(f11, Float.MAX_VALUE), z10));
        }
        throw new IllegalArgumentException(("invalid weight " + f11 + "; must be greater than zero").toString());
    }

    @Override // androidx.compose.foundation.layout.k
    public androidx.compose.ui.f b(androidx.compose.ui.f fVar, androidx.compose.ui.b.InterfaceC0044b interfaceC0044b) {
        return fVar.e(new HorizontalAlignElement(interfaceC0044b));
    }
}
