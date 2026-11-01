package androidx.compose.ui;

import androidx.compose.ui.unit.LayoutDirection;
import o0.q;
import o0.t;

/* JADX INFO: loaded from: classes.dex */
public final class c implements androidx.compose.ui.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4105c;

    public static final class a implements androidx.compose.ui.b.InterfaceC0044b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f4106a;

        public a(float f11) {
            this.f4106a = f11;
        }

        @Override // androidx.compose.ui.b.InterfaceC0044b
        public int a(int i11, int i12, LayoutDirection layoutDirection) {
            return Math.round(((i12 - i11) / 2.0f) * (1 + (layoutDirection == LayoutDirection.Ltr ? this.f4106a : (-1) * this.f4106a)));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Float.compare(this.f4106a, ((a) obj).f4106a) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4106a);
        }

        public String toString() {
            return "Horizontal(bias=" + this.f4106a + ')';
        }
    }

    public static final class b implements androidx.compose.ui.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f4107a;

        public b(float f11) {
            this.f4107a = f11;
        }

        @Override // androidx.compose.ui.b.c
        public int a(int i11, int i12) {
            return Math.round(((i12 - i11) / 2.0f) * (1 + this.f4107a));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Float.compare(this.f4107a, ((b) obj).f4107a) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4107a);
        }

        public String toString() {
            return "Vertical(bias=" + this.f4107a + ')';
        }
    }

    public c(float f11, float f12) {
        this.f4104b = f11;
        this.f4105c = f12;
    }

    @Override // androidx.compose.ui.b
    public long a(long j11, long j12, LayoutDirection layoutDirection) {
        float fG = (t.g(j12) - t.g(j11)) / 2.0f;
        float f11 = (t.f(j12) - t.f(j11)) / 2.0f;
        float f12 = 1;
        return q.a(Math.round(fG * ((layoutDirection == LayoutDirection.Ltr ? this.f4104b : (-1) * this.f4104b) + f12)), Math.round(f11 * (f12 + this.f4105c)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Float.compare(this.f4104b, cVar.f4104b) == 0 && Float.compare(this.f4105c, cVar.f4105c) == 0;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f4104b) * 31) + Float.floatToIntBits(this.f4105c);
    }

    public String toString() {
        return "BiasAlignment(horizontalBias=" + this.f4104b + ", verticalBias=" + this.f4105c + ')';
    }
}
