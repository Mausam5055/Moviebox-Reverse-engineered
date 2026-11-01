package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6425c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final m f6426d = new m(1.0f, 0.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f6427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f6428b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            return m.f6426d;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public m() {
        float f11 = 0.0f;
        this(f11, f11, 3, null);
    }

    public m(float f11, float f12) {
        this.f6427a = f11;
        this.f6428b = f12;
    }

    public /* synthetic */ m(float f11, float f12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 1.0f : f11, (i11 & 2) != 0 ? 0.0f : f12);
    }

    public final float b() {
        return this.f6427a;
    }

    public final float c() {
        return this.f6428b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f6427a == mVar.f6427a && this.f6428b == mVar.f6428b;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f6427a) * 31) + Float.floatToIntBits(this.f6428b);
    }

    public String toString() {
        return "TextGeometricTransform(scaleX=" + this.f6427a + ", skewX=" + this.f6428b + ')';
    }
}
