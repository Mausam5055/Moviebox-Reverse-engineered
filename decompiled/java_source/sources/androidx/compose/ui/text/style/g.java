package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f6386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final g f6387d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f6388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6389b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0058a f6390a = new C0058a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final float f6391b = c(0.0f);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final float f6392c = c(0.5f);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final float f6393d = c(-1.0f);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final float f6394e = c(1.0f);

        /* JADX INFO: renamed from: androidx.compose.ui.text.style.g$a$a, reason: collision with other inner class name */
        public static final class C0058a {
            private C0058a() {
            }

            public /* synthetic */ C0058a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final float a() {
                return a.f6392c;
            }

            public final float b() {
                return a.f6393d;
            }
        }

        public static float c(float f11) {
            if ((0.0f > f11 || f11 > 1.0f) && f11 != -1.0f) {
                throw new IllegalStateException("topRatio should be in [0..1] range or -1");
            }
            return f11;
        }

        public static final boolean d(float f11, float f12) {
            return Float.compare(f11, f12) == 0;
        }

        public static int e(float f11) {
            return Float.floatToIntBits(f11);
        }

        public static String f(float f11) {
            if (f11 == f6391b) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (f11 == f6392c) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (f11 == f6393d) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (f11 == f6394e) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + f11 + ')';
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return g.f6387d;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f6395a = new a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f6396b = c(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f6397c = c(16);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f6398d = c(17);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int f6399e = c(0);

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return c.f6398d;
            }

            public final int b() {
                return c.f6399e;
            }
        }

        private static int c(int i11) {
            return i11;
        }

        public static final boolean d(int i11, int i12) {
            return i11 == i12;
        }

        public static int e(int i11) {
            return i11;
        }

        public static final boolean f(int i11) {
            return (i11 & 1) > 0;
        }

        public static final boolean g(int i11) {
            return (i11 & 16) > 0;
        }

        public static String h(int i11) {
            if (i11 == f6396b) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i11 == f6397c) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i11 == f6398d) {
                return "LineHeightStyle.Trim.Both";
            }
            return i11 == f6399e ? "LineHeightStyle.Trim.None" : "Invalid";
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        f6386c = new b(defaultConstructorMarker);
        f6387d = new g(a.f6390a.b(), c.f6395a.a(), defaultConstructorMarker);
    }

    private g(float f11, int i11) {
        this.f6388a = f11;
        this.f6389b = i11;
    }

    public /* synthetic */ g(float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, i11);
    }

    public final float b() {
        return this.f6388a;
    }

    public final int c() {
        return this.f6389b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return a.d(this.f6388a, gVar.f6388a) && c.d(this.f6389b, gVar.f6389b);
    }

    public int hashCode() {
        return (a.e(this.f6388a) * 31) + c.e(this.f6389b);
    }

    public String toString() {
        return "LineHeightStyle(alignment=" + ((Object) a.f(this.f6388a)) + ", trim=" + ((Object) c.h(this.f6389b)) + ')';
    }
}
