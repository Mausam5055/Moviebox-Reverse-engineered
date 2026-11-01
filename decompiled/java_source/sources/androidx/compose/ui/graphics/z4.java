package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class z4 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4921d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final z4 f4922e = new z4(0, 0, 0.0f, 7, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f4923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4925c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final z4 a() {
            return z4.f4922e;
        }
    }

    private z4(long j11, long j12, float f11) {
        this.f4923a = j11;
        this.f4924b = j12;
        this.f4925c = f11;
    }

    public /* synthetic */ z4(long j11, long j12, float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? w1.d(4278190080L) : j11, (i11 & 2) != 0 ? y.g.f78470b.c() : j12, (i11 & 4) != 0 ? 0.0f : f11, null);
    }

    public /* synthetic */ z4(long j11, long j12, float f11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, f11);
    }

    public final float b() {
        return this.f4925c;
    }

    public final long c() {
        return this.f4923a;
    }

    public final long d() {
        return this.f4924b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z4)) {
            return false;
        }
        z4 z4Var = (z4) obj;
        return u1.m(this.f4923a, z4Var.f4923a) && y.g.j(this.f4924b, z4Var.f4924b) && this.f4925c == z4Var.f4925c;
    }

    public int hashCode() {
        return (((u1.s(this.f4923a) * 31) + y.g.o(this.f4924b)) * 31) + Float.floatToIntBits(this.f4925c);
    }

    public String toString() {
        return "Shadow(color=" + ((Object) u1.t(this.f4923a)) + ", offset=" + ((Object) y.g.t(this.f4924b)) + ", blurRadius=" + this.f4925c + ')';
    }
}
