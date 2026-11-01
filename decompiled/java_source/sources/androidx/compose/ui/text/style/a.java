package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0057a f6354b = new C0057a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float f6355c = c(0.5f);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float f6356d = c(-0.5f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f6357e = c(0.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f6358a;

    /* JADX INFO: renamed from: androidx.compose.ui.text.style.a$a, reason: collision with other inner class name */
    public static final class C0057a {
        private C0057a() {
        }

        public /* synthetic */ C0057a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float a() {
            return a.f6357e;
        }
    }

    private /* synthetic */ a(float f11) {
        this.f6358a = f11;
    }

    public static final /* synthetic */ a b(float f11) {
        return new a(f11);
    }

    public static float c(float f11) {
        return f11;
    }

    public static boolean d(float f11, Object obj) {
        return (obj instanceof a) && Float.compare(f11, ((a) obj).h()) == 0;
    }

    public static final boolean e(float f11, float f12) {
        return Float.compare(f11, f12) == 0;
    }

    public static int f(float f11) {
        return Float.floatToIntBits(f11);
    }

    public static String g(float f11) {
        return "BaselineShift(multiplier=" + f11 + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f6358a, obj);
    }

    public final /* synthetic */ float h() {
        return this.f6358a;
    }

    public int hashCode() {
        return f(this.f6358a);
    }

    public String toString() {
        return g(this.f6358a);
    }
}
