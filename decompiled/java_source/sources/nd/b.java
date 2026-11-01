package nd;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f70304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f70306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f70307d;

    public b(CharSequence charSequence, int i11, int i12) {
        this.f70304a = charSequence;
        this.f70306c = i11;
        this.f70305b = i12;
        byte[] bArr = new byte[i11 * i12];
        this.f70307d = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    private void a(int i11) {
        f(this.f70305b - 1, 0, i11, 1);
        f(this.f70305b - 1, 1, i11, 2);
        f(this.f70305b - 1, 2, i11, 3);
        f(0, this.f70306c - 2, i11, 4);
        f(0, this.f70306c - 1, i11, 5);
        f(1, this.f70306c - 1, i11, 6);
        f(2, this.f70306c - 1, i11, 7);
        f(3, this.f70306c - 1, i11, 8);
    }

    private void b(int i11) {
        f(this.f70305b - 3, 0, i11, 1);
        f(this.f70305b - 2, 0, i11, 2);
        f(this.f70305b - 1, 0, i11, 3);
        f(0, this.f70306c - 4, i11, 4);
        f(0, this.f70306c - 3, i11, 5);
        f(0, this.f70306c - 2, i11, 6);
        f(0, this.f70306c - 1, i11, 7);
        f(1, this.f70306c - 1, i11, 8);
    }

    private void c(int i11) {
        f(this.f70305b - 3, 0, i11, 1);
        f(this.f70305b - 2, 0, i11, 2);
        f(this.f70305b - 1, 0, i11, 3);
        f(0, this.f70306c - 2, i11, 4);
        f(0, this.f70306c - 1, i11, 5);
        f(1, this.f70306c - 1, i11, 6);
        f(2, this.f70306c - 1, i11, 7);
        f(3, this.f70306c - 1, i11, 8);
    }

    private void d(int i11) {
        f(this.f70305b - 1, 0, i11, 1);
        f(this.f70305b - 1, this.f70306c - 1, i11, 2);
        f(0, this.f70306c - 3, i11, 3);
        f(0, this.f70306c - 2, i11, 4);
        f(0, this.f70306c - 1, i11, 5);
        f(1, this.f70306c - 3, i11, 6);
        f(1, this.f70306c - 2, i11, 7);
        f(1, this.f70306c - 1, i11, 8);
    }

    private void f(int i11, int i12, int i13, int i14) {
        if (i11 < 0) {
            int i15 = this.f70305b;
            i11 += i15;
            i12 += 4 - ((i15 + 4) % 8);
        }
        if (i12 < 0) {
            int i16 = this.f70306c;
            i12 += i16;
            i11 += 4 - ((i16 + 4) % 8);
        }
        i(i12, i11, (this.f70304a.charAt(i13) & (1 << (8 - i14))) != 0);
    }

    private boolean g(int i11, int i12) {
        return this.f70307d[(i12 * this.f70306c) + i11] < 0;
    }

    private void i(int i11, int i12, boolean z10) {
        this.f70307d[(i12 * this.f70306c) + i11] = z10 ? (byte) 1 : (byte) 0;
    }

    private void j(int i11, int i12, int i13) {
        int i14 = i11 - 2;
        int i15 = i12 - 2;
        f(i14, i15, i13, 1);
        int i16 = i12 - 1;
        f(i14, i16, i13, 2);
        int i17 = i11 - 1;
        f(i17, i15, i13, 3);
        f(i17, i16, i13, 4);
        f(i17, i12, i13, 5);
        f(i11, i15, i13, 6);
        f(i11, i16, i13, 7);
        f(i11, i12, i13, 8);
    }

    public final boolean e(int i11, int i12) {
        return this.f70307d[(i12 * this.f70306c) + i11] == 1;
    }

    public final void h() {
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 0;
        int i15 = 4;
        while (true) {
            if (i15 == this.f70305b && i13 == 0) {
                a(i14);
                i14++;
            }
            if (i15 == this.f70305b - 2 && i13 == 0 && this.f70306c % 4 != 0) {
                b(i14);
                i14++;
            }
            if (i15 == this.f70305b - 2 && i13 == 0 && this.f70306c % 8 == 4) {
                c(i14);
                i14++;
            }
            if (i15 == this.f70305b + 4 && i13 == 2 && this.f70306c % 8 == 0) {
                d(i14);
                i14++;
            }
            while (true) {
                if (i15 < this.f70305b && i13 >= 0 && g(i13, i15)) {
                    j(i15, i13, i14);
                    i14++;
                }
                int i16 = i15 - 2;
                int i17 = i13 + 2;
                if (i16 < 0 || i17 >= this.f70306c) {
                    break;
                }
                i15 = i16;
                i13 = i17;
            }
            int i18 = i15 - 1;
            int i19 = i13 + 5;
            while (true) {
                if (i18 >= 0 && i19 < this.f70306c && g(i19, i18)) {
                    j(i18, i19, i14);
                    i14++;
                }
                int i20 = i18 + 2;
                int i21 = i19 - 2;
                i11 = this.f70305b;
                if (i20 >= i11 || i21 < 0) {
                    break;
                }
                i18 = i20;
                i19 = i21;
            }
            i15 = i18 + 5;
            i13 = i19 - 1;
            if (i15 >= i11 && i13 >= (i12 = this.f70306c)) {
                break;
            }
        }
        if (g(i12 - 1, i11 - 1)) {
            i(this.f70306c - 1, this.f70305b - 1, true);
            i(this.f70306c - 2, this.f70305b - 2, true);
        }
    }
}
