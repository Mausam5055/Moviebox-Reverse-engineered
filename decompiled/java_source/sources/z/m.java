package z;

import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.p4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class m extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f79115e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f79116f = c5.f4318a.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f79117g = d5.f4430a.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f79118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f79119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f79120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f79121d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return m.f79116f;
        }
    }

    private m(float f11, float f12, int i11, int i12, p4 p4Var) {
        super(null);
        this.f79118a = f11;
        this.f79119b = f12;
        this.f79120c = i11;
        this.f79121d = i12;
    }

    public /* synthetic */ m(float f11, float f12, int i11, int i12, p4 p4Var, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0.0f : f11, (i13 & 2) != 0 ? 4.0f : f12, (i13 & 4) != 0 ? f79116f : i11, (i13 & 8) != 0 ? f79117g : i12, (i13 & 16) != 0 ? null : p4Var, null);
    }

    public /* synthetic */ m(float f11, float f12, int i11, int i12, p4 p4Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, i11, i12, p4Var);
    }

    public final int b() {
        return this.f79120c;
    }

    public final int c() {
        return this.f79121d;
    }

    public final float d() {
        return this.f79119b;
    }

    public final p4 e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f79118a != mVar.f79118a || this.f79119b != mVar.f79119b || !c5.e(this.f79120c, mVar.f79120c) || !d5.e(this.f79121d, mVar.f79121d)) {
            return false;
        }
        mVar.getClass();
        return Intrinsics.c(null, null);
    }

    public final float f() {
        return this.f79118a;
    }

    public int hashCode() {
        return ((((((Float.floatToIntBits(this.f79118a) * 31) + Float.floatToIntBits(this.f79119b)) * 31) + c5.f(this.f79120c)) * 31) + d5.f(this.f79121d)) * 31;
    }

    public String toString() {
        return "Stroke(width=" + this.f79118a + ", miter=" + this.f79119b + ", cap=" + ((Object) c5.g(this.f79120c)) + ", join=" + ((Object) d5.g(this.f79121d)) + ", pathEffect=" + ((Object) null) + ')';
    }
}
