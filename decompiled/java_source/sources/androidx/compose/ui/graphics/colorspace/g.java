package androidx.compose.ui.graphics.colorspace;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f4353a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float[] f4354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f4355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final x f4356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final x f4357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Rgb f4358f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Rgb f4359g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Rgb f4360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Rgb f4361i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Rgb f4362j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Rgb f4363k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Rgb f4364l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Rgb f4365m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Rgb f4366n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Rgb f4367o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Rgb f4368p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Rgb f4369q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Rgb f4370r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Rgb f4371s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final c f4372t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final c f4373u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Rgb f4374v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final c f4375w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final c[] f4376x;

    static {
        float[] fArr = {0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f};
        f4354b = fArr;
        float[] fArr2 = {0.67f, 0.33f, 0.21f, 0.71f, 0.14f, 0.08f};
        f4355c = fArr2;
        x xVar = new x(2.4d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 0.0d, 0.0d, 96, null);
        f4356d = xVar;
        x xVar2 = new x(2.2d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 0.0d, 0.0d, 96, null);
        f4357e = xVar2;
        k kVar = k.f4388a;
        Rgb rgb = new Rgb("sRGB IEC61966-2.1", fArr, kVar.e(), xVar, 0);
        f4358f = rgb;
        Rgb rgb2 = new Rgb("sRGB IEC61966-2.1 (Linear)", fArr, kVar.e(), 1.0d, 0.0f, 1.0f, 1);
        f4359g = rgb2;
        Rgb rgb3 = new Rgb("scRGB-nl IEC 61966-2-2:2003", fArr, kVar.e(), null, new j() { // from class: androidx.compose.ui.graphics.colorspace.e
            @Override // androidx.compose.ui.graphics.colorspace.j
            public final double a(double d11) {
                return g.c(d11);
            }
        }, new j() { // from class: androidx.compose.ui.graphics.colorspace.f
            @Override // androidx.compose.ui.graphics.colorspace.j
            public final double a(double d11) {
                return g.d(d11);
            }
        }, -0.799f, 2.399f, xVar, 2);
        f4360h = rgb3;
        Rgb rgb4 = new Rgb("scRGB IEC 61966-2-2:2003", fArr, kVar.e(), 1.0d, -0.5f, 7.499f, 3);
        f4361i = rgb4;
        Rgb rgb5 = new Rgb("Rec. ITU-R BT.709-5", new float[]{0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f}, kVar.e(), new x(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 0.0d, 0.0d, 96, null), 4);
        f4362j = rgb5;
        Rgb rgb6 = new Rgb("Rec. ITU-R BT.2020-1", new float[]{0.708f, 0.292f, 0.17f, 0.797f, 0.131f, 0.046f}, kVar.e(), new x(2.2222222222222223d, 0.9096697898662786d, 0.09033021013372146d, 0.2222222222222222d, 0.08145d, 0.0d, 0.0d, 96, null), 5);
        f4363k = rgb6;
        Rgb rgb7 = new Rgb("SMPTE RP 431-2-2007 DCI (P3)", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, new y(0.314f, 0.351f), 2.6d, 0.0f, 1.0f, 6);
        f4364l = rgb7;
        Rgb rgb8 = new Rgb("Display P3", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, kVar.e(), xVar, 7);
        f4365m = rgb8;
        Rgb rgb9 = new Rgb("NTSC (1953)", fArr2, kVar.a(), new x(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 0.0d, 0.0d, 96, null), 8);
        f4366n = rgb9;
        Rgb rgb10 = new Rgb("SMPTE-C RGB", new float[]{0.63f, 0.34f, 0.31f, 0.595f, 0.155f, 0.07f}, kVar.e(), new x(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 0.0d, 0.0d, 96, null), 9);
        f4367o = rgb10;
        Rgb rgb11 = new Rgb("Adobe RGB (1998)", new float[]{0.64f, 0.33f, 0.21f, 0.71f, 0.15f, 0.06f}, kVar.e(), 2.2d, 0.0f, 1.0f, 10);
        f4368p = rgb11;
        Rgb rgb12 = new Rgb("ROMM RGB ISO 22028-2:2013", new float[]{0.7347f, 0.2653f, 0.1596f, 0.8404f, 0.0366f, 1.0E-4f}, kVar.b(), new x(1.8d, 1.0d, 0.0d, 0.0625d, 0.031248d, 0.0d, 0.0d, 96, null), 11);
        f4369q = rgb12;
        Rgb rgb13 = new Rgb("SMPTE ST 2065-1:2012 ACES", new float[]{0.7347f, 0.2653f, 0.0f, 1.0f, 1.0E-4f, -0.077f}, kVar.d(), 1.0d, -65504.0f, 65504.0f, 12);
        f4370r = rgb13;
        Rgb rgb14 = new Rgb("Academy S-2014-004 ACEScg", new float[]{0.713f, 0.293f, 0.165f, 0.83f, 0.128f, 0.044f}, kVar.d(), 1.0d, -65504.0f, 65504.0f, 13);
        f4371s = rgb14;
        z zVar = new z("Generic XYZ", 14);
        f4372t = zVar;
        l lVar = new l("Generic L*a*b*", 15);
        f4373u = lVar;
        Rgb rgb15 = new Rgb("None", fArr, kVar.e(), xVar2, 16);
        f4374v = rgb15;
        m mVar = new m("Oklab", 17);
        f4375w = mVar;
        f4376x = new c[]{rgb, rgb2, rgb3, rgb4, rgb5, rgb6, rgb7, rgb8, rgb9, rgb10, rgb11, rgb12, rgb13, rgb14, zVar, lVar, rgb15, mVar};
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double c(double d11) {
        return d.a(d11, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double d(double d11) {
        return d.b(d11, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d);
    }

    public final Rgb e() {
        return f4370r;
    }

    public final Rgb f() {
        return f4371s;
    }

    public final Rgb g() {
        return f4368p;
    }

    public final Rgb h() {
        return f4363k;
    }

    public final Rgb i() {
        return f4362j;
    }

    public final c j() {
        return f4373u;
    }

    public final c k() {
        return f4372t;
    }

    public final c[] l() {
        return f4376x;
    }

    public final Rgb m() {
        return f4364l;
    }

    public final Rgb n() {
        return f4365m;
    }

    public final Rgb o() {
        return f4360h;
    }

    public final Rgb p() {
        return f4361i;
    }

    public final Rgb q() {
        return f4359g;
    }

    public final Rgb r() {
        return f4366n;
    }

    public final float[] s() {
        return f4355c;
    }

    public final c t() {
        return f4375w;
    }

    public final Rgb u() {
        return f4369q;
    }

    public final Rgb v() {
        return f4367o;
    }

    public final Rgb w() {
        return f4358f;
    }

    public final float[] x() {
        return f4354b;
    }

    public final Rgb y() {
        return f4374v;
    }
}
