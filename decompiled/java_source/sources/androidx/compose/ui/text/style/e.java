package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6366a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f6367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6370e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return e.f6367b;
        }

        public final int b() {
            return e.f6370e;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f6371a = new a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f6372b = d(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f6373c = d(2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f6374d = d(3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int f6375e = d(0);

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return b.f6374d;
            }

            public final int b() {
                return b.f6373c;
            }

            public final int c() {
                return b.f6372b;
            }
        }

        public static int d(int i11) {
            return i11;
        }

        public static final boolean e(int i11, int i12) {
            return i11 == i12;
        }

        public static String f(int i11) {
            if (e(i11, f6372b)) {
                return "Strategy.Simple";
            }
            if (e(i11, f6373c)) {
                return "Strategy.HighQuality";
            }
            if (e(i11, f6374d)) {
                return "Strategy.Balanced";
            }
            return e(i11, f6375e) ? "Strategy.Unspecified" : "Invalid";
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f6376a = new a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f6377b = e(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f6378c = e(2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f6379d = e(3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int f6380e = e(4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final int f6381f = e(0);

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return c.f6377b;
            }

            public final int b() {
                return c.f6378c;
            }

            public final int c() {
                return c.f6379d;
            }

            public final int d() {
                return c.f6380e;
            }
        }

        public static int e(int i11) {
            return i11;
        }

        public static final boolean f(int i11, int i12) {
            return i11 == i12;
        }

        public static String g(int i11) {
            if (f(i11, f6377b)) {
                return "Strictness.None";
            }
            if (f(i11, f6378c)) {
                return "Strictness.Loose";
            }
            if (f(i11, f6379d)) {
                return "Strictness.Normal";
            }
            if (f(i11, f6380e)) {
                return "Strictness.Strict";
            }
            return f(i11, f6381f) ? "Strictness.Unspecified" : "Invalid";
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f6382a = new a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f6383b = c(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f6384c = c(2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f6385d = c(0);

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return d.f6383b;
            }

            public final int b() {
                return d.f6384c;
            }
        }

        public static int c(int i11) {
            return i11;
        }

        public static final boolean d(int i11, int i12) {
            return i11 == i12;
        }

        public static String e(int i11) {
            if (d(i11, f6383b)) {
                return "WordBreak.None";
            }
            if (d(i11, f6384c)) {
                return "WordBreak.Phrase";
            }
            return d(i11, f6385d) ? "WordBreak.Unspecified" : "Invalid";
        }
    }

    static {
        b.a aVar = b.f6371a;
        int iC = aVar.c();
        c.a aVar2 = c.f6376a;
        int iC2 = aVar2.c();
        d.a aVar3 = d.f6382a;
        f6367b = c(f.e(iC, iC2, aVar3.a()));
        f6368c = c(f.e(aVar.a(), aVar2.b(), aVar3.b()));
        f6369d = c(f.e(aVar.b(), aVar2.d(), aVar3.a()));
        f6370e = c(0);
    }

    private static int c(int i11) {
        return i11;
    }

    public static final boolean d(int i11, int i12) {
        return i11 == i12;
    }

    public static final int e(int i11) {
        return b.d(f.f(i11));
    }

    public static final int f(int i11) {
        return c.e(f.g(i11));
    }

    public static final int g(int i11) {
        return d.c(f.h(i11));
    }

    public static int h(int i11) {
        return i11;
    }

    public static String i(int i11) {
        return "LineBreak(strategy=" + ((Object) b.f(e(i11))) + ", strictness=" + ((Object) c.g(f(i11))) + ", wordBreak=" + ((Object) d.e(g(i11))) + ')';
    }
}
