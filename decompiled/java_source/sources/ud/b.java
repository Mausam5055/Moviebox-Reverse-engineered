package ud;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f76729f = new b(929, 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f76730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f76731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f76732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f76733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f76734e;

    private b(int i11, int i12) {
        this.f76734e = i11;
        this.f76730a = new int[i11];
        this.f76731b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f76730a[i14] = i13;
            i13 = (i13 * i12) % i11;
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f76731b[this.f76730a[i15]] = i15;
        }
        this.f76732c = new c(this, new int[]{0});
        this.f76733d = new c(this, new int[]{1});
    }

    int a(int i11, int i12) {
        return (i11 + i12) % this.f76734e;
    }

    c b(int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException();
        }
        if (i12 == 0) {
            return this.f76732c;
        }
        int[] iArr = new int[i11 + 1];
        iArr[0] = i12;
        return new c(this, iArr);
    }

    int c(int i11) {
        return this.f76730a[i11];
    }

    c d() {
        return this.f76733d;
    }

    int e() {
        return this.f76734e;
    }

    c f() {
        return this.f76732c;
    }

    int g(int i11) {
        if (i11 != 0) {
            return this.f76730a[(this.f76734e - this.f76731b[i11]) - 1];
        }
        throw new ArithmeticException();
    }

    int h(int i11) {
        if (i11 != 0) {
            return this.f76731b[i11];
        }
        throw new IllegalArgumentException();
    }

    int i(int i11, int i12) {
        if (i11 == 0 || i12 == 0) {
            return 0;
        }
        int[] iArr = this.f76730a;
        int[] iArr2 = this.f76731b;
        return iArr[(iArr2[i11] + iArr2[i12]) % (this.f76734e - 1)];
    }

    int j(int i11, int i12) {
        int i13 = this.f76734e;
        return ((i11 + i13) - i12) % i13;
    }
}
