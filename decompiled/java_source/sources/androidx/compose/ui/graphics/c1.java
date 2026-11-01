package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4292a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4293b = D(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4294c = D(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4295d = D(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f4296e = D(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f4297f = D(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f4298g = D(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f4299h = D(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f4300i = D(7);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f4301j = D(8);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f4302k = D(9);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f4303l = D(10);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f4304m = D(11);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f4305n = D(12);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f4306o = D(13);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f4307p = D(14);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f4308q = D(15);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f4309r = D(16);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f4310s = D(17);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f4311t = D(18);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f4312u = D(19);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f4313v = D(20);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f4314w = D(21);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f4315x = D(22);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f4316y = D(23);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f4317z = D(24);
    private static final int A = D(25);
    private static final int B = D(26);
    private static final int C = D(27);
    private static final int D = D(28);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int A() {
            return c1.f4300i;
        }

        public final int B() {
            return c1.f4296e;
        }

        public final int C() {
            return c1.f4304m;
        }

        public final int a() {
            return c1.f4293b;
        }

        public final int b() {
            return c1.C;
        }

        public final int c() {
            return c1.f4312u;
        }

        public final int d() {
            return c1.f4311t;
        }

        public final int e() {
            return c1.f4309r;
        }

        public final int f() {
            return c1.f4315x;
        }

        public final int g() {
            return c1.f4295d;
        }

        public final int h() {
            return c1.f4303l;
        }

        public final int i() {
            return c1.f4299h;
        }

        public final int j() {
            return c1.f4301j;
        }

        public final int k() {
            return c1.f4297f;
        }

        public final int l() {
            return c1.f4316y;
        }

        public final int m() {
            return c1.f4313v;
        }

        public final int n() {
            return c1.A;
        }

        public final int o() {
            return c1.f4310s;
        }

        public final int p() {
            return c1.D;
        }

        public final int q() {
            return c1.f4306o;
        }

        public final int r() {
            return c1.f4317z;
        }

        public final int s() {
            return c1.f4308q;
        }

        public final int t() {
            return c1.f4305n;
        }

        public final int u() {
            return c1.B;
        }

        public final int v() {
            return c1.f4307p;
        }

        public final int w() {
            return c1.f4314w;
        }

        public final int x() {
            return c1.f4294c;
        }

        public final int y() {
            return c1.f4302k;
        }

        public final int z() {
            return c1.f4298g;
        }
    }

    public static int D(int i11) {
        return i11;
    }

    public static final boolean E(int i11, int i12) {
        return i11 == i12;
    }

    public static int F(int i11) {
        return i11;
    }

    public static String G(int i11) {
        if (E(i11, f4293b)) {
            return "Clear";
        }
        if (E(i11, f4294c)) {
            return "Src";
        }
        if (E(i11, f4295d)) {
            return "Dst";
        }
        if (E(i11, f4296e)) {
            return "SrcOver";
        }
        if (E(i11, f4297f)) {
            return "DstOver";
        }
        if (E(i11, f4298g)) {
            return "SrcIn";
        }
        if (E(i11, f4299h)) {
            return "DstIn";
        }
        if (E(i11, f4300i)) {
            return "SrcOut";
        }
        if (E(i11, f4301j)) {
            return "DstOut";
        }
        if (E(i11, f4302k)) {
            return "SrcAtop";
        }
        if (E(i11, f4303l)) {
            return "DstAtop";
        }
        if (E(i11, f4304m)) {
            return "Xor";
        }
        if (E(i11, f4305n)) {
            return "Plus";
        }
        if (E(i11, f4306o)) {
            return "Modulate";
        }
        if (E(i11, f4307p)) {
            return "Screen";
        }
        if (E(i11, f4308q)) {
            return "Overlay";
        }
        if (E(i11, f4309r)) {
            return "Darken";
        }
        if (E(i11, f4310s)) {
            return "Lighten";
        }
        if (E(i11, f4311t)) {
            return "ColorDodge";
        }
        if (E(i11, f4312u)) {
            return "ColorBurn";
        }
        if (E(i11, f4313v)) {
            return "HardLight";
        }
        if (E(i11, f4314w)) {
            return "Softlight";
        }
        if (E(i11, f4315x)) {
            return "Difference";
        }
        if (E(i11, f4316y)) {
            return "Exclusion";
        }
        if (E(i11, f4317z)) {
            return "Multiply";
        }
        if (E(i11, A)) {
            return "Hue";
        }
        if (E(i11, B)) {
            return "Saturation";
        }
        if (E(i11, C)) {
            return "Color";
        }
        return E(i11, D) ? "Luminosity" : "Unknown";
    }
}
