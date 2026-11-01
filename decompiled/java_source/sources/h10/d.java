package h10;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f64067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f64068b;

    public d() {
        this.f64067a = new byte[64];
    }

    public d(int i11) {
        this.f64067a = new byte[i11];
    }

    d(byte[] bArr) {
        this.f64067a = bArr;
        this.f64068b = bArr.length;
    }

    private void b(int i11) {
        byte[] bArr = this.f64067a;
        int length = bArr.length * 2;
        int i12 = this.f64068b;
        int i13 = i11 + i12;
        if (length <= i13) {
            length = i13;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i12);
        this.f64067a = bArr2;
    }

    final d a(String str, int i11, int i12) {
        int length = str.length();
        int i13 = i11;
        int i14 = i13;
        while (i13 < length) {
            char cCharAt = str.charAt(i13);
            if (cCharAt < 1 || cCharAt > 127) {
                i14 = cCharAt <= 2047 ? i14 + 2 : i14 + 3;
            } else {
                i14++;
            }
            i13++;
        }
        if (i14 > i12) {
            throw new IllegalArgumentException("UTF8 string too large");
        }
        int i15 = this.f64068b;
        int i16 = i15 - i11;
        int i17 = i16 - 2;
        if (i17 >= 0) {
            byte[] bArr = this.f64067a;
            bArr[i17] = (byte) (i14 >>> 8);
            bArr[i16 - 1] = (byte) i14;
        }
        if ((i15 + i14) - i11 > this.f64067a.length) {
            b(i14 - i11);
        }
        int i18 = this.f64068b;
        while (i11 < length) {
            char cCharAt2 = str.charAt(i11);
            if (cCharAt2 >= 1 && cCharAt2 <= 127) {
                this.f64067a[i18] = (byte) cCharAt2;
                i18++;
            } else if (cCharAt2 <= 2047) {
                byte[] bArr2 = this.f64067a;
                int i19 = i18 + 1;
                bArr2[i18] = (byte) (((cCharAt2 >> 6) & 31) | PsExtractor.AUDIO_STREAM);
                i18 += 2;
                bArr2[i19] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                byte[] bArr3 = this.f64067a;
                bArr3[i18] = (byte) (((cCharAt2 >> '\f') & 15) | 224);
                int i20 = i18 + 2;
                bArr3[i18 + 1] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                i18 += 3;
                bArr3[i20] = (byte) ((cCharAt2 & '?') | 128);
            }
            i11++;
        }
        this.f64068b = i18;
        return this;
    }

    final d c(int i11, int i12) {
        int i13 = this.f64068b;
        if (i13 + 2 > this.f64067a.length) {
            b(2);
        }
        byte[] bArr = this.f64067a;
        bArr[i13] = (byte) i11;
        bArr[i13 + 1] = (byte) i12;
        this.f64068b = i13 + 2;
        return this;
    }

    final d d(int i11, int i12, int i13) {
        int i14 = this.f64068b;
        if (i14 + 4 > this.f64067a.length) {
            b(4);
        }
        byte[] bArr = this.f64067a;
        bArr[i14] = (byte) i11;
        bArr[i14 + 1] = (byte) i12;
        bArr[i14 + 2] = (byte) (i13 >>> 8);
        bArr[i14 + 3] = (byte) i13;
        this.f64068b = i14 + 4;
        return this;
    }

    final d e(int i11, int i12) {
        int i13 = this.f64068b;
        if (i13 + 3 > this.f64067a.length) {
            b(3);
        }
        byte[] bArr = this.f64067a;
        bArr[i13] = (byte) i11;
        bArr[i13 + 1] = (byte) (i12 >>> 8);
        bArr[i13 + 2] = (byte) i12;
        this.f64068b = i13 + 3;
        return this;
    }

    final d f(int i11, int i12, int i13) {
        int i14 = this.f64068b;
        if (i14 + 5 > this.f64067a.length) {
            b(5);
        }
        byte[] bArr = this.f64067a;
        bArr[i14] = (byte) i11;
        bArr[i14 + 1] = (byte) (i12 >>> 8);
        bArr[i14 + 2] = (byte) i12;
        bArr[i14 + 3] = (byte) (i13 >>> 8);
        bArr[i14 + 4] = (byte) i13;
        this.f64068b = i14 + 5;
        return this;
    }

    public d g(int i11) {
        int i12 = this.f64068b;
        int i13 = i12 + 1;
        if (i13 > this.f64067a.length) {
            b(1);
        }
        this.f64067a[i12] = (byte) i11;
        this.f64068b = i13;
        return this;
    }

    public d h(byte[] bArr, int i11, int i12) {
        if (this.f64068b + i12 > this.f64067a.length) {
            b(i12);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i11, this.f64067a, this.f64068b, i12);
        }
        this.f64068b += i12;
        return this;
    }

    public d i(int i11) {
        int i12 = this.f64068b;
        if (i12 + 4 > this.f64067a.length) {
            b(4);
        }
        byte[] bArr = this.f64067a;
        bArr[i12] = (byte) (i11 >>> 24);
        bArr[i12 + 1] = (byte) (i11 >>> 16);
        bArr[i12 + 2] = (byte) (i11 >>> 8);
        bArr[i12 + 3] = (byte) i11;
        this.f64068b = i12 + 4;
        return this;
    }

    public d j(long j11) {
        int i11 = this.f64068b;
        if (i11 + 8 > this.f64067a.length) {
            b(8);
        }
        byte[] bArr = this.f64067a;
        int i12 = (int) (j11 >>> 32);
        bArr[i11] = (byte) (i12 >>> 24);
        bArr[i11 + 1] = (byte) (i12 >>> 16);
        bArr[i11 + 2] = (byte) (i12 >>> 8);
        bArr[i11 + 3] = (byte) i12;
        int i13 = (int) j11;
        bArr[i11 + 4] = (byte) (i13 >>> 24);
        bArr[i11 + 5] = (byte) (i13 >>> 16);
        bArr[i11 + 6] = (byte) (i13 >>> 8);
        bArr[i11 + 7] = (byte) i13;
        this.f64068b = i11 + 8;
        return this;
    }

    public d k(int i11) {
        int i12 = this.f64068b;
        if (i12 + 2 > this.f64067a.length) {
            b(2);
        }
        byte[] bArr = this.f64067a;
        bArr[i12] = (byte) (i11 >>> 8);
        bArr[i12 + 1] = (byte) i11;
        this.f64068b = i12 + 2;
        return this;
    }

    public d l(String str) {
        int length = str.length();
        if (length > 65535) {
            throw new IllegalArgumentException("UTF8 string too large");
        }
        int i11 = this.f64068b;
        if (i11 + 2 + length > this.f64067a.length) {
            b(length + 2);
        }
        byte[] bArr = this.f64067a;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (length >>> 8);
        int i13 = i11 + 2;
        bArr[i12] = (byte) length;
        int i14 = 0;
        while (i14 < length) {
            char cCharAt = str.charAt(i14);
            if (cCharAt < 1 || cCharAt > 127) {
                this.f64068b = i13;
                return a(str, i14, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
            bArr[i13] = (byte) cCharAt;
            i14++;
            i13++;
        }
        this.f64068b = i13;
        return this;
    }
}
