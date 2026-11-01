package androidx.palette.graphics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f14008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f14009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f14010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f14011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f14012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final b f14013j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float[] f14014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final float[] f14015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final float[] f14016c = new float[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f14017d = true;

    static {
        b bVar = new b();
        f14008e = bVar;
        m(bVar);
        p(bVar);
        b bVar2 = new b();
        f14009f = bVar2;
        o(bVar2);
        p(bVar2);
        b bVar3 = new b();
        f14010g = bVar3;
        l(bVar3);
        p(bVar3);
        b bVar4 = new b();
        f14011h = bVar4;
        m(bVar4);
        n(bVar4);
        b bVar5 = new b();
        f14012i = bVar5;
        o(bVar5);
        n(bVar5);
        b bVar6 = new b();
        f14013j = bVar6;
        l(bVar6);
        n(bVar6);
    }

    b() {
        float[] fArr = new float[3];
        this.f14014a = fArr;
        float[] fArr2 = new float[3];
        this.f14015b = fArr2;
        r(fArr);
        r(fArr2);
        q();
    }

    private static void l(b bVar) {
        float[] fArr = bVar.f14015b;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    private static void m(b bVar) {
        float[] fArr = bVar.f14015b;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    private static void n(b bVar) {
        float[] fArr = bVar.f14014a;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    private static void o(b bVar) {
        float[] fArr = bVar.f14015b;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    private static void p(b bVar) {
        float[] fArr = bVar.f14014a;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    private void q() {
        float[] fArr = this.f14016c;
        fArr[0] = 0.24f;
        fArr[1] = 0.52f;
        fArr[2] = 0.24f;
    }

    private static void r(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    public float a() {
        return this.f14016c[1];
    }

    public float b() {
        return this.f14015b[2];
    }

    public float c() {
        return this.f14014a[2];
    }

    public float d() {
        return this.f14015b[0];
    }

    public float e() {
        return this.f14014a[0];
    }

    public float f() {
        return this.f14016c[2];
    }

    public float g() {
        return this.f14016c[0];
    }

    public float h() {
        return this.f14015b[1];
    }

    public float i() {
        return this.f14014a[1];
    }

    public boolean j() {
        return this.f14017d;
    }

    void k() {
        int length = this.f14016c.length;
        float f11 = 0.0f;
        for (int i11 = 0; i11 < length; i11++) {
            float f12 = this.f14016c[i11];
            if (f12 > 0.0f) {
                f11 += f12;
            }
        }
        if (f11 != 0.0f) {
            int length2 = this.f14016c.length;
            for (int i12 = 0; i12 < length2; i12++) {
                float[] fArr = this.f14016c;
                float f13 = fArr[i12];
                if (f13 > 0.0f) {
                    fArr[i12] = f13 / f11;
                }
            }
        }
    }
}
