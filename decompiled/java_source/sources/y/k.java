package y;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f78481i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final k f78482j = l.c(0.0f, 0.0f, 0.0f, 0.0f, y.a.f78464a.a());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f78483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f78484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f78485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f78486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f78487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f78488f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f78489g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f78490h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private k(float f11, float f12, float f13, float f14, long j11, long j12, long j13, long j14) {
        this.f78483a = f11;
        this.f78484b = f12;
        this.f78485c = f13;
        this.f78486d = f14;
        this.f78487e = j11;
        this.f78488f = j12;
        this.f78489g = j13;
        this.f78490h = j14;
    }

    public /* synthetic */ k(float f11, float f12, float f13, float f14, long j11, long j12, long j13, long j14, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14, j11, j12, j13, j14);
    }

    public final float a() {
        return this.f78486d;
    }

    public final long b() {
        return this.f78490h;
    }

    public final long c() {
        return this.f78489g;
    }

    public final float d() {
        return this.f78486d - this.f78484b;
    }

    public final float e() {
        return this.f78483a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return Float.compare(this.f78483a, kVar.f78483a) == 0 && Float.compare(this.f78484b, kVar.f78484b) == 0 && Float.compare(this.f78485c, kVar.f78485c) == 0 && Float.compare(this.f78486d, kVar.f78486d) == 0 && y.a.c(this.f78487e, kVar.f78487e) && y.a.c(this.f78488f, kVar.f78488f) && y.a.c(this.f78489g, kVar.f78489g) && y.a.c(this.f78490h, kVar.f78490h);
    }

    public final float f() {
        return this.f78485c;
    }

    public final float g() {
        return this.f78484b;
    }

    public final long h() {
        return this.f78487e;
    }

    public int hashCode() {
        return (((((((((((((Float.floatToIntBits(this.f78483a) * 31) + Float.floatToIntBits(this.f78484b)) * 31) + Float.floatToIntBits(this.f78485c)) * 31) + Float.floatToIntBits(this.f78486d)) * 31) + y.a.f(this.f78487e)) * 31) + y.a.f(this.f78488f)) * 31) + y.a.f(this.f78489g)) * 31) + y.a.f(this.f78490h);
    }

    public final long i() {
        return this.f78488f;
    }

    public final float j() {
        return this.f78485c - this.f78483a;
    }

    public String toString() {
        long j11 = this.f78487e;
        long j12 = this.f78488f;
        long j13 = this.f78489g;
        long j14 = this.f78490h;
        String str = c.a(this.f78483a, 1) + ", " + c.a(this.f78484b, 1) + ", " + c.a(this.f78485c, 1) + ", " + c.a(this.f78486d, 1);
        if (!y.a.c(j11, j12) || !y.a.c(j12, j13) || !y.a.c(j13, j14)) {
            return "RoundRect(rect=" + str + ", topLeft=" + ((Object) y.a.g(j11)) + ", topRight=" + ((Object) y.a.g(j12)) + ", bottomRight=" + ((Object) y.a.g(j13)) + ", bottomLeft=" + ((Object) y.a.g(j14)) + ')';
        }
        if (y.a.d(j11) == y.a.e(j11)) {
            return "RoundRect(rect=" + str + ", radius=" + c.a(y.a.d(j11), 1) + ')';
        }
        return "RoundRect(rect=" + str + ", x=" + c.a(y.a.d(j11), 1) + ", y=" + c.a(y.a.e(j11), 1) + ')';
    }
}
