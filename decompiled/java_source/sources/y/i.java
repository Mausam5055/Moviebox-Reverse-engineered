package y;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f78475e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final i f78476f = new i(0.0f, 0.0f, 0.0f, 0.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f78477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f78478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f78479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f78480d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a() {
            return i.f78476f;
        }
    }

    public i(float f11, float f12, float f13, float f14) {
        this.f78477a = f11;
        this.f78478b = f12;
        this.f78479c = f13;
        this.f78480d = f14;
    }

    public final boolean b(long j11) {
        return g.m(j11) >= this.f78477a && g.m(j11) < this.f78479c && g.n(j11) >= this.f78478b && g.n(j11) < this.f78480d;
    }

    public final float c() {
        return this.f78480d;
    }

    public final long d() {
        return h.a(this.f78477a + (k() / 2.0f), this.f78478b + (e() / 2.0f));
    }

    public final float e() {
        return this.f78480d - this.f78478b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Float.compare(this.f78477a, iVar.f78477a) == 0 && Float.compare(this.f78478b, iVar.f78478b) == 0 && Float.compare(this.f78479c, iVar.f78479c) == 0 && Float.compare(this.f78480d, iVar.f78480d) == 0;
    }

    public final float f() {
        return this.f78477a;
    }

    public final float g() {
        return this.f78479c;
    }

    public final long h() {
        return n.a(k(), e());
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f78477a) * 31) + Float.floatToIntBits(this.f78478b)) * 31) + Float.floatToIntBits(this.f78479c)) * 31) + Float.floatToIntBits(this.f78480d);
    }

    public final float i() {
        return this.f78478b;
    }

    public final long j() {
        return h.a(this.f78477a, this.f78478b);
    }

    public final float k() {
        return this.f78479c - this.f78477a;
    }

    public final i l(float f11, float f12, float f13, float f14) {
        return new i(Math.max(this.f78477a, f11), Math.max(this.f78478b, f12), Math.min(this.f78479c, f13), Math.min(this.f78480d, f14));
    }

    public final i m(i iVar) {
        return new i(Math.max(this.f78477a, iVar.f78477a), Math.max(this.f78478b, iVar.f78478b), Math.min(this.f78479c, iVar.f78479c), Math.min(this.f78480d, iVar.f78480d));
    }

    public final boolean n() {
        return this.f78477a >= this.f78479c || this.f78478b >= this.f78480d;
    }

    public final boolean o(i iVar) {
        return this.f78479c > iVar.f78477a && iVar.f78479c > this.f78477a && this.f78480d > iVar.f78478b && iVar.f78480d > this.f78478b;
    }

    public final i p(float f11, float f12) {
        return new i(this.f78477a + f11, this.f78478b + f12, this.f78479c + f11, this.f78480d + f12);
    }

    public final i q(long j11) {
        return new i(this.f78477a + g.m(j11), this.f78478b + g.n(j11), this.f78479c + g.m(j11), this.f78480d + g.n(j11));
    }

    public String toString() {
        return "Rect.fromLTRB(" + c.a(this.f78477a, 1) + ", " + c.a(this.f78478b, 1) + ", " + c.a(this.f78479c, 1) + ", " + c.a(this.f78480d, 1) + ')';
    }
}
