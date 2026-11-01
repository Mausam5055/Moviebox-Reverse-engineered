package kd;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f66761h = new a(4201, 4096, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f66762i = new a(1033, 1024, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f66763j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f66764k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f66765l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f66766m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f66767n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f66768o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f66769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f66770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f66771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f66772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f66774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f66775g;

    static {
        a aVar = new a(67, 64, 1);
        f66763j = aVar;
        f66764k = new a(19, 16, 1);
        f66765l = new a(285, 256, 0);
        a aVar2 = new a(Sdk$SDKError.Reason.MRAID_ERROR_VALUE, 256, 1);
        f66766m = aVar2;
        f66767n = aVar2;
        f66768o = aVar;
    }

    public a(int i11, int i12, int i13) {
        this.f66774f = i11;
        this.f66773e = i12;
        this.f66775g = i13;
        this.f66769a = new int[i12];
        this.f66770b = new int[i12];
        int i14 = 1;
        for (int i15 = 0; i15 < i12; i15++) {
            this.f66769a[i15] = i14;
            i14 *= 2;
            if (i14 >= i12) {
                i14 = (i14 ^ i11) & (i12 - 1);
            }
        }
        for (int i16 = 0; i16 < i12 - 1; i16++) {
            this.f66770b[this.f66769a[i16]] = i16;
        }
        this.f66771c = new b(this, new int[]{0});
        this.f66772d = new b(this, new int[]{1});
    }

    static int a(int i11, int i12) {
        return i11 ^ i12;
    }

    b b(int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException();
        }
        if (i12 == 0) {
            return this.f66771c;
        }
        int[] iArr = new int[i11 + 1];
        iArr[0] = i12;
        return new b(this, iArr);
    }

    int c(int i11) {
        return this.f66769a[i11];
    }

    public int d() {
        return this.f66775g;
    }

    b e() {
        return this.f66772d;
    }

    public int f() {
        return this.f66773e;
    }

    b g() {
        return this.f66771c;
    }

    int h(int i11) {
        if (i11 != 0) {
            return this.f66769a[(this.f66773e - this.f66770b[i11]) - 1];
        }
        throw new ArithmeticException();
    }

    int i(int i11) {
        if (i11 != 0) {
            return this.f66770b[i11];
        }
        throw new IllegalArgumentException();
    }

    int j(int i11, int i12) {
        if (i11 == 0 || i12 == 0) {
            return 0;
        }
        int[] iArr = this.f66769a;
        int[] iArr2 = this.f66770b;
        return iArr[(iArr2[i11] + iArr2[i12]) % (this.f66773e - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f66774f) + ',' + this.f66773e + ')';
    }
}
