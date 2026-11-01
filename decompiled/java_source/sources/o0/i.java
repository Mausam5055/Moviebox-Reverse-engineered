package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70603b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float f70604c = g(0.0f);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float f70605d = g(Float.POSITIVE_INFINITY);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f70606e = g(Float.NaN);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f70607a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float a() {
            return i.f70604c;
        }

        public final float b() {
            return i.f70606e;
        }
    }

    private /* synthetic */ i(float f11) {
        this.f70607a = f11;
    }

    public static final /* synthetic */ i d(float f11) {
        return new i(f11);
    }

    public static int f(float f11, float f12) {
        return Float.compare(f11, f12);
    }

    public static float g(float f11) {
        return f11;
    }

    public static boolean h(float f11, Object obj) {
        return (obj instanceof i) && Float.compare(f11, ((i) obj).l()) == 0;
    }

    public static final boolean i(float f11, float f12) {
        return Float.compare(f11, f12) == 0;
    }

    public static int j(float f11) {
        return Float.floatToIntBits(f11);
    }

    public static String k(float f11) {
        if (Float.isNaN(f11)) {
            return "Dp.Unspecified";
        }
        return f11 + ".dp";
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return e(((i) obj).l());
    }

    public int e(float f11) {
        return f(this.f70607a, f11);
    }

    public boolean equals(Object obj) {
        return h(this.f70607a, obj);
    }

    public int hashCode() {
        return j(this.f70607a);
    }

    public final /* synthetic */ float l() {
        return this.f70607a;
    }

    public String toString() {
        return k(this.f70607a);
    }
}
