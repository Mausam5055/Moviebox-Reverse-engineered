package xe;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes5.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f78226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f78227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78228c;

    public n(byte[] bArr, int i11, int i12) {
        this.f78226a = bArr;
        this.f78227b = i11;
        this.f78228c = i12;
    }

    public static byte[] e(byte[] bArr, int i11, int i12) {
        int i13 = i11 * i12;
        byte[] bArr2 = new byte[i13];
        int i14 = i13 - 1;
        for (int i15 = 0; i15 < i13; i15++) {
            bArr2[i14] = bArr[i15];
            i14--;
        }
        return bArr2;
    }

    public static byte[] f(byte[] bArr, int i11, int i12) {
        int i13 = i11 * i12;
        byte[] bArr2 = new byte[i13];
        int i14 = i13 - 1;
        for (int i15 = 0; i15 < i11; i15++) {
            for (int i16 = i12 - 1; i16 >= 0; i16--) {
                bArr2[i14] = bArr[(i16 * i11) + i15];
                i14--;
            }
        }
        return bArr2;
    }

    public static byte[] g(byte[] bArr, int i11, int i12) {
        byte[] bArr2 = new byte[i11 * i12];
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            for (int i15 = i12 - 1; i15 >= 0; i15--) {
                bArr2[i13] = bArr[(i15 * i11) + i14];
                i13++;
            }
        }
        return bArr2;
    }

    public n a(Rect rect, int i11) {
        int iWidth = rect.width() / i11;
        int iHeight = rect.height() / i11;
        int i12 = rect.top;
        byte[] bArr = new byte[iWidth * iHeight];
        if (i11 == 1) {
            int i13 = (i12 * this.f78227b) + rect.left;
            for (int i14 = 0; i14 < iHeight; i14++) {
                System.arraycopy(this.f78226a, i13, bArr, i14 * iWidth, iWidth);
                i13 += this.f78227b;
            }
        } else {
            int i15 = (i12 * this.f78227b) + rect.left;
            for (int i16 = 0; i16 < iHeight; i16++) {
                int i17 = i16 * iWidth;
                int i18 = i15;
                for (int i19 = 0; i19 < iWidth; i19++) {
                    bArr[i17] = this.f78226a[i18];
                    i18 += i11;
                    i17++;
                }
                i15 += this.f78227b * i11;
            }
        }
        return new n(bArr, iWidth, iHeight);
    }

    public byte[] b() {
        return this.f78226a;
    }

    public int c() {
        return this.f78228c;
    }

    public int d() {
        return this.f78227b;
    }

    public n h(int i11) {
        if (i11 == 90) {
            return new n(g(this.f78226a, this.f78227b, this.f78228c), this.f78228c, this.f78227b);
        }
        if (i11 != 180) {
            return i11 != 270 ? this : new n(f(this.f78226a, this.f78227b, this.f78228c), this.f78228c, this.f78227b);
        }
        return new n(e(this.f78226a, this.f78227b, this.f78228c), this.f78227b, this.f78228c);
    }
}
