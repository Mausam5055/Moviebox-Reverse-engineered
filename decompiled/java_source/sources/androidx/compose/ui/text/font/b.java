package androidx.compose.ui.text.font;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class b implements w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6112b;

    public b(int i11) {
        this.f6112b = i11;
    }

    @Override // androidx.compose.ui.text.font.w
    public p a(p pVar) {
        int i11 = this.f6112b;
        return (i11 == 0 || i11 == Integer.MAX_VALUE) ? pVar : new p(RangesKt.m(pVar.h() + this.f6112b, 1, 1000));
    }

    @Override // androidx.compose.ui.text.font.w
    public /* synthetic */ int b(int i11) {
        return v.b(this, i11);
    }

    @Override // androidx.compose.ui.text.font.w
    public /* synthetic */ int c(int i11) {
        return v.c(this, i11);
    }

    @Override // androidx.compose.ui.text.font.w
    public /* synthetic */ h d(h hVar) {
        return v.a(this, hVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f6112b == ((b) obj).f6112b;
    }

    public int hashCode() {
        return this.f6112b;
    }

    public String toString() {
        return "AndroidFontResolveInterceptor(fontWeightAdjustment=" + this.f6112b + ')';
    }
}
