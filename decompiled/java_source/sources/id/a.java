package id;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f65151c = new int[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f65152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65153b;

    public a() {
        this.f65153b = 0;
        this.f65152a = f65151c;
    }

    public a(int i11) {
        this.f65153b = i11;
        this.f65152a = p(i11);
    }

    a(int[] iArr, int i11) {
        this.f65152a = iArr;
        this.f65153b = i11;
    }

    private void g(int i11) {
        if (i11 > this.f65152a.length * 32) {
            int[] iArrP = p((int) Math.ceil(i11 / 0.75f));
            int[] iArr = this.f65152a;
            System.arraycopy(iArr, 0, iArrP, 0, iArr.length);
            this.f65152a = iArrP;
        }
    }

    private static int[] p(int i11) {
        return new int[(i11 + 31) / 32];
    }

    public void a(boolean z10) {
        g(this.f65153b + 1);
        if (z10) {
            int[] iArr = this.f65152a;
            int i11 = this.f65153b;
            int i12 = i11 / 32;
            iArr[i12] = (1 << (i11 & 31)) | iArr[i12];
        }
        this.f65153b++;
    }

    public void b(a aVar) {
        int i11 = aVar.f65153b;
        g(this.f65153b + i11);
        for (int i12 = 0; i12 < i11; i12++) {
            a(aVar.i(i12));
        }
    }

    public void c(int i11, int i12) {
        if (i12 < 0 || i12 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        int i13 = this.f65153b;
        g(i13 + i12);
        for (int i14 = i12 - 1; i14 >= 0; i14--) {
            if (((1 << i14) & i11) != 0) {
                int[] iArr = this.f65152a;
                int i15 = i13 / 32;
                iArr[i15] = iArr[i15] | (1 << (i13 & 31));
            }
            i13++;
        }
        this.f65153b = i13;
    }

    public void e() {
        int length = this.f65152a.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.f65152a[i11] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f65153b == aVar.f65153b && Arrays.equals(this.f65152a, aVar.f65152a);
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a clone() {
        return new a((int[]) this.f65152a.clone(), this.f65153b);
    }

    public int hashCode() {
        return (this.f65153b * 31) + Arrays.hashCode(this.f65152a);
    }

    public boolean i(int i11) {
        return ((1 << (i11 & 31)) & this.f65152a[i11 / 32]) != 0;
    }

    public int[] j() {
        return this.f65152a;
    }

    public int k(int i11) {
        int i12 = this.f65153b;
        if (i11 >= i12) {
            return i12;
        }
        int i13 = i11 / 32;
        int i14 = (-(1 << (i11 & 31))) & this.f65152a[i13];
        while (i14 == 0) {
            i13++;
            int[] iArr = this.f65152a;
            if (i13 == iArr.length) {
                return this.f65153b;
            }
            i14 = iArr[i13];
        }
        return Math.min((i13 * 32) + Integer.numberOfTrailingZeros(i14), this.f65153b);
    }

    public int l(int i11) {
        int i12 = this.f65153b;
        if (i11 >= i12) {
            return i12;
        }
        int i13 = i11 / 32;
        int i14 = (-(1 << (i11 & 31))) & (~this.f65152a[i13]);
        while (i14 == 0) {
            i13++;
            int[] iArr = this.f65152a;
            if (i13 == iArr.length) {
                return this.f65153b;
            }
            i14 = ~iArr[i13];
        }
        return Math.min((i13 * 32) + Integer.numberOfTrailingZeros(i14), this.f65153b);
    }

    public int m() {
        return this.f65153b;
    }

    public int n() {
        return (this.f65153b + 7) / 8;
    }

    public boolean o(int i11, int i12, boolean z10) {
        if (i12 < i11 || i11 < 0 || i12 > this.f65153b) {
            throw new IllegalArgumentException();
        }
        if (i12 == i11) {
            return true;
        }
        int i13 = i12 - 1;
        int i14 = i11 / 32;
        int i15 = i13 / 32;
        int i16 = i14;
        while (i16 <= i15) {
            int i17 = (2 << (i16 >= i15 ? 31 & i13 : 31)) - (1 << (i16 > i14 ? 0 : i11 & 31));
            int i18 = this.f65152a[i16] & i17;
            if (!z10) {
                i17 = 0;
            }
            if (i18 != i17) {
                return false;
            }
            i16++;
        }
        return true;
    }

    public void q() {
        int[] iArr = new int[this.f65152a.length];
        int i11 = (this.f65153b - 1) / 32;
        int i12 = i11 + 1;
        for (int i13 = 0; i13 < i12; i13++) {
            iArr[i11 - i13] = Integer.reverse(this.f65152a[i13]);
        }
        int i14 = this.f65153b;
        int i15 = i12 * 32;
        if (i14 != i15) {
            int i16 = i15 - i14;
            int i17 = iArr[0] >>> i16;
            for (int i18 = 1; i18 < i12; i18++) {
                int i19 = iArr[i18];
                iArr[i18 - 1] = i17 | (i19 << (32 - i16));
                i17 = i19 >>> i16;
            }
            iArr[i11] = i17;
        }
        this.f65152a = iArr;
    }

    public void r(int i11) {
        int[] iArr = this.f65152a;
        int i12 = i11 / 32;
        iArr[i12] = (1 << (i11 & 31)) | iArr[i12];
    }

    public void s(int i11, int i12) {
        this.f65152a[i11 / 32] = i12;
    }

    public void t(int i11, byte[] bArr, int i12, int i13) {
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = 0;
            for (int i16 = 0; i16 < 8; i16++) {
                if (i(i11)) {
                    i15 |= 1 << (7 - i16);
                }
                i11++;
            }
            bArr[i12 + i14] = (byte) i15;
        }
    }

    public String toString() {
        int i11 = this.f65153b;
        StringBuilder sb2 = new StringBuilder(i11 + (i11 / 8) + 1);
        for (int i12 = 0; i12 < this.f65153b; i12++) {
            if ((i12 & 7) == 0) {
                sb2.append(' ');
            }
            sb2.append(i(i12) ? 'X' : '.');
        }
        return sb2.toString();
    }

    public void u(a aVar) {
        if (this.f65153b != aVar.f65153b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i11 = 0;
        while (true) {
            int[] iArr = this.f65152a;
            if (i11 >= iArr.length) {
                return;
            }
            iArr[i11] = iArr[i11] ^ aVar.f65152a[i11];
            i11++;
        }
    }
}
