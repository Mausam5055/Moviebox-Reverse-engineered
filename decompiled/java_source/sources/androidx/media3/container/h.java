package androidx.media3.container;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f10673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10676d;

    public h(byte[] bArr, int i11, int i12) {
        j(bArr, i11, i12);
    }

    private void a() {
        int i11;
        int i12 = this.f10675c;
        androidx.media3.common.util.a.g(i12 >= 0 && (i12 < (i11 = this.f10674b) || (i12 == i11 && this.f10676d == 0)));
    }

    private int g() {
        int i11 = 0;
        while (!e()) {
            i11++;
        }
        return ((1 << i11) - 1) + (i11 > 0 ? f(i11) : 0);
    }

    private boolean k(int i11) {
        if (2 <= i11 && i11 < this.f10674b) {
            byte[] bArr = this.f10673a;
            if (bArr[i11] == 3 && bArr[i11 - 2] == 0 && bArr[i11 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public void b() {
        int i11 = this.f10676d;
        if (i11 > 0) {
            m(8 - i11);
        }
    }

    public boolean c(int i11) {
        int i12 = this.f10675c;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        int i15 = (this.f10676d + i11) - (i13 * 8);
        if (i15 > 7) {
            i14++;
            i15 -= 8;
        }
        while (true) {
            i12++;
            if (i12 > i14 || i14 >= this.f10674b) {
                break;
            }
            if (k(i12)) {
                i14++;
                i12 += 2;
            }
        }
        int i16 = this.f10674b;
        if (i14 >= i16) {
            return i14 == i16 && i15 == 0;
        }
        return true;
    }

    public boolean d() {
        int i11 = this.f10675c;
        int i12 = this.f10676d;
        int i13 = 0;
        while (this.f10675c < this.f10674b && !e()) {
            i13++;
        }
        boolean z10 = this.f10675c == this.f10674b;
        this.f10675c = i11;
        this.f10676d = i12;
        return !z10 && c((i13 * 2) + 1);
    }

    public boolean e() {
        boolean z10 = (this.f10673a[this.f10675c] & (128 >> this.f10676d)) != 0;
        l();
        return z10;
    }

    public int f(int i11) {
        int i12;
        this.f10676d += i11;
        int i13 = 0;
        while (true) {
            i12 = this.f10676d;
            int i14 = 2;
            if (i12 <= 8) {
                break;
            }
            int i15 = i12 - 8;
            this.f10676d = i15;
            byte[] bArr = this.f10673a;
            int i16 = this.f10675c;
            i13 |= (bArr[i16] & 255) << i15;
            if (!k(i16 + 1)) {
                i14 = 1;
            }
            this.f10675c = i16 + i14;
        }
        byte[] bArr2 = this.f10673a;
        int i17 = this.f10675c;
        int i18 = ((-1) >>> (32 - i11)) & (i13 | ((bArr2[i17] & 255) >> (8 - i12)));
        if (i12 == 8) {
            this.f10676d = 0;
            this.f10675c = i17 + (k(i17 + 1) ? 2 : 1);
        }
        a();
        return i18;
    }

    public int h() {
        int iG = g();
        return (iG % 2 == 0 ? -1 : 1) * ((iG + 1) / 2);
    }

    public int i() {
        return g();
    }

    public void j(byte[] bArr, int i11, int i12) {
        this.f10673a = bArr;
        this.f10675c = i11;
        this.f10674b = i12;
        this.f10676d = 0;
        a();
    }

    public void l() {
        int i11 = this.f10676d + 1;
        this.f10676d = i11;
        if (i11 == 8) {
            this.f10676d = 0;
            int i12 = this.f10675c;
            this.f10675c = i12 + (k(i12 + 1) ? 2 : 1);
        }
        a();
    }

    public void m(int i11) {
        int i12 = this.f10675c;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        this.f10675c = i14;
        int i15 = this.f10676d + (i11 - (i13 * 8));
        this.f10676d = i15;
        if (i15 > 7) {
            this.f10675c = i14 + 1;
            this.f10676d = i15 - 8;
        }
        while (true) {
            i12++;
            if (i12 > this.f10675c) {
                a();
                return;
            } else if (k(i12)) {
                this.f10675c++;
                i12 += 2;
            }
        }
    }
}
