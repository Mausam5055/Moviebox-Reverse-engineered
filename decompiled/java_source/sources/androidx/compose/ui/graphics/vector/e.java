package androidx.compose.ui.graphics.vector;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4780b;

    public static final class a extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4782d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4783e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f4784f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f4785g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final float f4786h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final float f4787i;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(float f11, float f12, float f13, boolean z10, boolean z11, float f14, float f15) {
            boolean z12 = false;
            super(z12, z12, 3, null);
            this.f4781c = f11;
            this.f4782d = f12;
            this.f4783e = f13;
            this.f4784f = z10;
            this.f4785g = z11;
            this.f4786h = f14;
            this.f4787i = f15;
        }

        public final float c() {
            return this.f4786h;
        }

        public final float d() {
            return this.f4787i;
        }

        public final float e() {
            return this.f4781c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.f4781c, aVar.f4781c) == 0 && Float.compare(this.f4782d, aVar.f4782d) == 0 && Float.compare(this.f4783e, aVar.f4783e) == 0 && this.f4784f == aVar.f4784f && this.f4785g == aVar.f4785g && Float.compare(this.f4786h, aVar.f4786h) == 0 && Float.compare(this.f4787i, aVar.f4787i) == 0;
        }

        public final float f() {
            return this.f4783e;
        }

        public final float g() {
            return this.f4782d;
        }

        public final boolean h() {
            return this.f4784f;
        }

        public int hashCode() {
            return (((((((((((Float.floatToIntBits(this.f4781c) * 31) + Float.floatToIntBits(this.f4782d)) * 31) + Float.floatToIntBits(this.f4783e)) * 31) + androidx.compose.foundation.e.a(this.f4784f)) * 31) + androidx.compose.foundation.e.a(this.f4785g)) * 31) + Float.floatToIntBits(this.f4786h)) * 31) + Float.floatToIntBits(this.f4787i);
        }

        public final boolean i() {
            return this.f4785g;
        }

        public String toString() {
            return "ArcTo(horizontalEllipseRadius=" + this.f4781c + ", verticalEllipseRadius=" + this.f4782d + ", theta=" + this.f4783e + ", isMoreThanHalf=" + this.f4784f + ", isPositiveArc=" + this.f4785g + ", arcStartX=" + this.f4786h + ", arcStartY=" + this.f4787i + ')';
        }
    }

    public static final class b extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f4788c = new b();

        /* JADX WARN: Illegal instructions before constructor call */
        private b() {
            boolean z10 = false;
            super(z10, z10, 3, null);
        }
    }

    public static final class c extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4789c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4790d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4791e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f4792f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final float f4793g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final float f4794h;

        public c(float f11, float f12, float f13, float f14, float f15, float f16) {
            super(true, false, 2, null);
            this.f4789c = f11;
            this.f4790d = f12;
            this.f4791e = f13;
            this.f4792f = f14;
            this.f4793g = f15;
            this.f4794h = f16;
        }

        public final float c() {
            return this.f4789c;
        }

        public final float d() {
            return this.f4791e;
        }

        public final float e() {
            return this.f4793g;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Float.compare(this.f4789c, cVar.f4789c) == 0 && Float.compare(this.f4790d, cVar.f4790d) == 0 && Float.compare(this.f4791e, cVar.f4791e) == 0 && Float.compare(this.f4792f, cVar.f4792f) == 0 && Float.compare(this.f4793g, cVar.f4793g) == 0 && Float.compare(this.f4794h, cVar.f4794h) == 0;
        }

        public final float f() {
            return this.f4790d;
        }

        public final float g() {
            return this.f4792f;
        }

        public final float h() {
            return this.f4794h;
        }

        public int hashCode() {
            return (((((((((Float.floatToIntBits(this.f4789c) * 31) + Float.floatToIntBits(this.f4790d)) * 31) + Float.floatToIntBits(this.f4791e)) * 31) + Float.floatToIntBits(this.f4792f)) * 31) + Float.floatToIntBits(this.f4793g)) * 31) + Float.floatToIntBits(this.f4794h);
        }

        public String toString() {
            return "CurveTo(x1=" + this.f4789c + ", y1=" + this.f4790d + ", x2=" + this.f4791e + ", y2=" + this.f4792f + ", x3=" + this.f4793g + ", y3=" + this.f4794h + ')';
        }
    }

    public static final class d extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4795c;

        /* JADX WARN: Illegal instructions before constructor call */
        public d(float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4795c = f11;
        }

        public final float c() {
            return this.f4795c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Float.compare(this.f4795c, ((d) obj).f4795c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4795c);
        }

        public String toString() {
            return "HorizontalTo(x=" + this.f4795c + ')';
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.vector.e$e, reason: collision with other inner class name */
    public static final class C0049e extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4796c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4797d;

        /* JADX WARN: Illegal instructions before constructor call */
        public C0049e(float f11, float f12) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4796c = f11;
            this.f4797d = f12;
        }

        public final float c() {
            return this.f4796c;
        }

        public final float d() {
            return this.f4797d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0049e)) {
                return false;
            }
            C0049e c0049e = (C0049e) obj;
            return Float.compare(this.f4796c, c0049e.f4796c) == 0 && Float.compare(this.f4797d, c0049e.f4797d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4796c) * 31) + Float.floatToIntBits(this.f4797d);
        }

        public String toString() {
            return "LineTo(x=" + this.f4796c + ", y=" + this.f4797d + ')';
        }
    }

    public static final class f extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4798c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4799d;

        /* JADX WARN: Illegal instructions before constructor call */
        public f(float f11, float f12) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4798c = f11;
            this.f4799d = f12;
        }

        public final float c() {
            return this.f4798c;
        }

        public final float d() {
            return this.f4799d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return Float.compare(this.f4798c, fVar.f4798c) == 0 && Float.compare(this.f4799d, fVar.f4799d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4798c) * 31) + Float.floatToIntBits(this.f4799d);
        }

        public String toString() {
            return "MoveTo(x=" + this.f4798c + ", y=" + this.f4799d + ')';
        }
    }

    public static final class g extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4800c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4801d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4802e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f4803f;

        public g(float f11, float f12, float f13, float f14) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4800c = f11;
            this.f4801d = f12;
            this.f4802e = f13;
            this.f4803f = f14;
        }

        public final float c() {
            return this.f4800c;
        }

        public final float d() {
            return this.f4802e;
        }

        public final float e() {
            return this.f4801d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return Float.compare(this.f4800c, gVar.f4800c) == 0 && Float.compare(this.f4801d, gVar.f4801d) == 0 && Float.compare(this.f4802e, gVar.f4802e) == 0 && Float.compare(this.f4803f, gVar.f4803f) == 0;
        }

        public final float f() {
            return this.f4803f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4800c) * 31) + Float.floatToIntBits(this.f4801d)) * 31) + Float.floatToIntBits(this.f4802e)) * 31) + Float.floatToIntBits(this.f4803f);
        }

        public String toString() {
            return "QuadTo(x1=" + this.f4800c + ", y1=" + this.f4801d + ", x2=" + this.f4802e + ", y2=" + this.f4803f + ')';
        }
    }

    public static final class h extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4804c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4805d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4806e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f4807f;

        public h(float f11, float f12, float f13, float f14) {
            super(true, false, 2, null);
            this.f4804c = f11;
            this.f4805d = f12;
            this.f4806e = f13;
            this.f4807f = f14;
        }

        public final float c() {
            return this.f4804c;
        }

        public final float d() {
            return this.f4806e;
        }

        public final float e() {
            return this.f4805d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Float.compare(this.f4804c, hVar.f4804c) == 0 && Float.compare(this.f4805d, hVar.f4805d) == 0 && Float.compare(this.f4806e, hVar.f4806e) == 0 && Float.compare(this.f4807f, hVar.f4807f) == 0;
        }

        public final float f() {
            return this.f4807f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4804c) * 31) + Float.floatToIntBits(this.f4805d)) * 31) + Float.floatToIntBits(this.f4806e)) * 31) + Float.floatToIntBits(this.f4807f);
        }

        public String toString() {
            return "ReflectiveCurveTo(x1=" + this.f4804c + ", y1=" + this.f4805d + ", x2=" + this.f4806e + ", y2=" + this.f4807f + ')';
        }
    }

    public static final class i extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4808c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4809d;

        public i(float f11, float f12) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4808c = f11;
            this.f4809d = f12;
        }

        public final float c() {
            return this.f4808c;
        }

        public final float d() {
            return this.f4809d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Float.compare(this.f4808c, iVar.f4808c) == 0 && Float.compare(this.f4809d, iVar.f4809d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4808c) * 31) + Float.floatToIntBits(this.f4809d);
        }

        public String toString() {
            return "ReflectiveQuadTo(x=" + this.f4808c + ", y=" + this.f4809d + ')';
        }
    }

    public static final class j extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4810c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4811d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4812e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f4813f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f4814g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final float f4815h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final float f4816i;

        /* JADX WARN: Illegal instructions before constructor call */
        public j(float f11, float f12, float f13, boolean z10, boolean z11, float f14, float f15) {
            boolean z12 = false;
            super(z12, z12, 3, null);
            this.f4810c = f11;
            this.f4811d = f12;
            this.f4812e = f13;
            this.f4813f = z10;
            this.f4814g = z11;
            this.f4815h = f14;
            this.f4816i = f15;
        }

        public final float c() {
            return this.f4815h;
        }

        public final float d() {
            return this.f4816i;
        }

        public final float e() {
            return this.f4810c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return Float.compare(this.f4810c, jVar.f4810c) == 0 && Float.compare(this.f4811d, jVar.f4811d) == 0 && Float.compare(this.f4812e, jVar.f4812e) == 0 && this.f4813f == jVar.f4813f && this.f4814g == jVar.f4814g && Float.compare(this.f4815h, jVar.f4815h) == 0 && Float.compare(this.f4816i, jVar.f4816i) == 0;
        }

        public final float f() {
            return this.f4812e;
        }

        public final float g() {
            return this.f4811d;
        }

        public final boolean h() {
            return this.f4813f;
        }

        public int hashCode() {
            return (((((((((((Float.floatToIntBits(this.f4810c) * 31) + Float.floatToIntBits(this.f4811d)) * 31) + Float.floatToIntBits(this.f4812e)) * 31) + androidx.compose.foundation.e.a(this.f4813f)) * 31) + androidx.compose.foundation.e.a(this.f4814g)) * 31) + Float.floatToIntBits(this.f4815h)) * 31) + Float.floatToIntBits(this.f4816i);
        }

        public final boolean i() {
            return this.f4814g;
        }

        public String toString() {
            return "RelativeArcTo(horizontalEllipseRadius=" + this.f4810c + ", verticalEllipseRadius=" + this.f4811d + ", theta=" + this.f4812e + ", isMoreThanHalf=" + this.f4813f + ", isPositiveArc=" + this.f4814g + ", arcStartDx=" + this.f4815h + ", arcStartDy=" + this.f4816i + ')';
        }
    }

    public static final class k extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4818d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f4820f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final float f4821g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final float f4822h;

        public k(float f11, float f12, float f13, float f14, float f15, float f16) {
            super(true, false, 2, null);
            this.f4817c = f11;
            this.f4818d = f12;
            this.f4819e = f13;
            this.f4820f = f14;
            this.f4821g = f15;
            this.f4822h = f16;
        }

        public final float c() {
            return this.f4817c;
        }

        public final float d() {
            return this.f4819e;
        }

        public final float e() {
            return this.f4821g;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return Float.compare(this.f4817c, kVar.f4817c) == 0 && Float.compare(this.f4818d, kVar.f4818d) == 0 && Float.compare(this.f4819e, kVar.f4819e) == 0 && Float.compare(this.f4820f, kVar.f4820f) == 0 && Float.compare(this.f4821g, kVar.f4821g) == 0 && Float.compare(this.f4822h, kVar.f4822h) == 0;
        }

        public final float f() {
            return this.f4818d;
        }

        public final float g() {
            return this.f4820f;
        }

        public final float h() {
            return this.f4822h;
        }

        public int hashCode() {
            return (((((((((Float.floatToIntBits(this.f4817c) * 31) + Float.floatToIntBits(this.f4818d)) * 31) + Float.floatToIntBits(this.f4819e)) * 31) + Float.floatToIntBits(this.f4820f)) * 31) + Float.floatToIntBits(this.f4821g)) * 31) + Float.floatToIntBits(this.f4822h);
        }

        public String toString() {
            return "RelativeCurveTo(dx1=" + this.f4817c + ", dy1=" + this.f4818d + ", dx2=" + this.f4819e + ", dy2=" + this.f4820f + ", dx3=" + this.f4821g + ", dy3=" + this.f4822h + ')';
        }
    }

    public static final class l extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4823c;

        /* JADX WARN: Illegal instructions before constructor call */
        public l(float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4823c = f11;
        }

        public final float c() {
            return this.f4823c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof l) && Float.compare(this.f4823c, ((l) obj).f4823c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4823c);
        }

        public String toString() {
            return "RelativeHorizontalTo(dx=" + this.f4823c + ')';
        }
    }

    public static final class m extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4824c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4825d;

        /* JADX WARN: Illegal instructions before constructor call */
        public m(float f11, float f12) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4824c = f11;
            this.f4825d = f12;
        }

        public final float c() {
            return this.f4824c;
        }

        public final float d() {
            return this.f4825d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof m)) {
                return false;
            }
            m mVar = (m) obj;
            return Float.compare(this.f4824c, mVar.f4824c) == 0 && Float.compare(this.f4825d, mVar.f4825d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4824c) * 31) + Float.floatToIntBits(this.f4825d);
        }

        public String toString() {
            return "RelativeLineTo(dx=" + this.f4824c + ", dy=" + this.f4825d + ')';
        }
    }

    public static final class n extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4826c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4827d;

        /* JADX WARN: Illegal instructions before constructor call */
        public n(float f11, float f12) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4826c = f11;
            this.f4827d = f12;
        }

        public final float c() {
            return this.f4826c;
        }

        public final float d() {
            return this.f4827d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof n)) {
                return false;
            }
            n nVar = (n) obj;
            return Float.compare(this.f4826c, nVar.f4826c) == 0 && Float.compare(this.f4827d, nVar.f4827d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4826c) * 31) + Float.floatToIntBits(this.f4827d);
        }

        public String toString() {
            return "RelativeMoveTo(dx=" + this.f4826c + ", dy=" + this.f4827d + ')';
        }
    }

    public static final class o extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4828c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4829d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4830e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f4831f;

        public o(float f11, float f12, float f13, float f14) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4828c = f11;
            this.f4829d = f12;
            this.f4830e = f13;
            this.f4831f = f14;
        }

        public final float c() {
            return this.f4828c;
        }

        public final float d() {
            return this.f4830e;
        }

        public final float e() {
            return this.f4829d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof o)) {
                return false;
            }
            o oVar = (o) obj;
            return Float.compare(this.f4828c, oVar.f4828c) == 0 && Float.compare(this.f4829d, oVar.f4829d) == 0 && Float.compare(this.f4830e, oVar.f4830e) == 0 && Float.compare(this.f4831f, oVar.f4831f) == 0;
        }

        public final float f() {
            return this.f4831f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4828c) * 31) + Float.floatToIntBits(this.f4829d)) * 31) + Float.floatToIntBits(this.f4830e)) * 31) + Float.floatToIntBits(this.f4831f);
        }

        public String toString() {
            return "RelativeQuadTo(dx1=" + this.f4828c + ", dy1=" + this.f4829d + ", dx2=" + this.f4830e + ", dy2=" + this.f4831f + ')';
        }
    }

    public static final class p extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4832c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4833d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4834e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f4835f;

        public p(float f11, float f12, float f13, float f14) {
            super(true, false, 2, null);
            this.f4832c = f11;
            this.f4833d = f12;
            this.f4834e = f13;
            this.f4835f = f14;
        }

        public final float c() {
            return this.f4832c;
        }

        public final float d() {
            return this.f4834e;
        }

        public final float e() {
            return this.f4833d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof p)) {
                return false;
            }
            p pVar = (p) obj;
            return Float.compare(this.f4832c, pVar.f4832c) == 0 && Float.compare(this.f4833d, pVar.f4833d) == 0 && Float.compare(this.f4834e, pVar.f4834e) == 0 && Float.compare(this.f4835f, pVar.f4835f) == 0;
        }

        public final float f() {
            return this.f4835f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4832c) * 31) + Float.floatToIntBits(this.f4833d)) * 31) + Float.floatToIntBits(this.f4834e)) * 31) + Float.floatToIntBits(this.f4835f);
        }

        public String toString() {
            return "RelativeReflectiveCurveTo(dx1=" + this.f4832c + ", dy1=" + this.f4833d + ", dx2=" + this.f4834e + ", dy2=" + this.f4835f + ')';
        }
    }

    public static final class q extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4836c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4837d;

        public q(float f11, float f12) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4836c = f11;
            this.f4837d = f12;
        }

        public final float c() {
            return this.f4836c;
        }

        public final float d() {
            return this.f4837d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof q)) {
                return false;
            }
            q qVar = (q) obj;
            return Float.compare(this.f4836c, qVar.f4836c) == 0 && Float.compare(this.f4837d, qVar.f4837d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4836c) * 31) + Float.floatToIntBits(this.f4837d);
        }

        public String toString() {
            return "RelativeReflectiveQuadTo(dx=" + this.f4836c + ", dy=" + this.f4837d + ')';
        }
    }

    public static final class r extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4838c;

        /* JADX WARN: Illegal instructions before constructor call */
        public r(float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4838c = f11;
        }

        public final float c() {
            return this.f4838c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof r) && Float.compare(this.f4838c, ((r) obj).f4838c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4838c);
        }

        public String toString() {
            return "RelativeVerticalTo(dy=" + this.f4838c + ')';
        }
    }

    public static final class s extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4839c;

        /* JADX WARN: Illegal instructions before constructor call */
        public s(float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4839c = f11;
        }

        public final float c() {
            return this.f4839c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof s) && Float.compare(this.f4839c, ((s) obj).f4839c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4839c);
        }

        public String toString() {
            return "VerticalTo(y=" + this.f4839c + ')';
        }
    }

    private e(boolean z10, boolean z11) {
        this.f4779a = z10;
        this.f4780b = z11;
    }

    public /* synthetic */ e(boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? false : z11, null);
    }

    public /* synthetic */ e(boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11);
    }

    public final boolean a() {
        return this.f4779a;
    }

    public final boolean b() {
        return this.f4780b;
    }
}
