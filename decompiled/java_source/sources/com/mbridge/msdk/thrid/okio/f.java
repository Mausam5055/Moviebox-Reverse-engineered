package com.mbridge.msdk.thrid.okio;

import com.transsion.api.gateway.utils.EncoderUtil;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class f implements Serializable, Comparable<f> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final char[] f38434d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f38435e = a(new byte[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f38436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    transient int f38437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient String f38438c;

    f(byte[] bArr) {
        this.f38436a = bArr;
    }

    private static int a(char c11) {
        if (c11 >= '0' && c11 <= '9') {
            return c11 - '0';
        }
        if (c11 >= 'a' && c11 <= 'f') {
            return c11 - 'W';
        }
        if (c11 >= 'A' && c11 <= 'F') {
            return c11 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c11);
    }

    static int a(String str, int i11) {
        int length = str.length();
        int iCharCount = 0;
        int i12 = 0;
        while (iCharCount < length) {
            if (i12 == i11) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i12++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = i11 * 2;
            bArr[i11] = (byte) ((a(str.charAt(i12)) << 4) + a(str.charAt(i12 + 1)));
        }
        return a(bArr);
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f38436a));
        } catch (NoSuchAlgorithmException e11) {
            throw new AssertionError(e11);
        }
    }

    public static f c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(u.f38479a));
        fVar.f38438c = str;
        return fVar;
    }

    public byte a(int i11) {
        return this.f38436a[i11];
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int iE = e();
        int iE2 = fVar.e();
        int iMin = Math.min(iE, iE2);
        for (int i11 = 0; i11 < iMin; i11++) {
            int iA = a(i11) & 255;
            int iA2 = fVar.a(i11) & 255;
            if (iA != iA2) {
                return iA < iA2 ? -1 : 1;
            }
        }
        if (iE == iE2) {
            return 0;
        }
        return iE < iE2 ? -1 : 1;
    }

    public f a(int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f38436a;
        if (i12 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f38436a.length + ")");
        }
        int i13 = i12 - i11;
        if (i13 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i11 == 0 && i12 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, i11, bArr2, 0, i13);
        return new f(bArr2);
    }

    public String a() {
        return b.a(this.f38436a);
    }

    void a(c cVar) {
        byte[] bArr = this.f38436a;
        cVar.write(bArr, 0, bArr.length);
    }

    public boolean a(int i11, f fVar, int i12, int i13) {
        return fVar.a(i12, this.f38436a, i11, i13);
    }

    public boolean a(int i11, byte[] bArr, int i12, int i13) {
        if (i11 >= 0) {
            byte[] bArr2 = this.f38436a;
            if (i11 <= bArr2.length - i13 && i12 >= 0 && i12 <= bArr.length - i13 && u.a(bArr2, i11, bArr, i12, i13)) {
                return true;
            }
        }
        return false;
    }

    public String b() {
        byte[] bArr = this.f38436a;
        char[] cArr = new char[bArr.length * 2];
        int i11 = 0;
        for (byte b11 : bArr) {
            int i12 = i11 + 1;
            char[] cArr2 = f38434d;
            cArr[i11] = cArr2[(b11 >> 4) & 15];
            i11 += 2;
            cArr[i12] = cArr2[b11 & 15];
        }
        return new String(cArr);
    }

    public final boolean b(f fVar) {
        return a(0, fVar, 0, fVar.e());
    }

    public f c() {
        return b(EncoderUtil.ALGORITHM_SHA_1);
    }

    public f d() {
        return b(EncoderUtil.ALGORITHM_SHA_256);
    }

    public int e() {
        return this.f38436a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int iE = fVar.e();
            byte[] bArr = this.f38436a;
            if (iE == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public f f() {
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f38436a;
            if (i11 >= bArr.length) {
                return this;
            }
            byte b11 = bArr[i11];
            if (b11 >= 65 && b11 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i11] = (byte) (b11 + 32);
                for (int i12 = i11 + 1; i12 < bArr2.length; i12++) {
                    byte b12 = bArr2[i12];
                    if (b12 >= 65 && b12 <= 90) {
                        bArr2[i12] = (byte) (b12 + 32);
                    }
                }
                return new f(bArr2);
            }
            i11++;
        }
    }

    public byte[] g() {
        return (byte[]) this.f38436a.clone();
    }

    public String h() {
        String str = this.f38438c;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f38436a, u.f38479a);
        this.f38438c = str2;
        return str2;
    }

    public int hashCode() {
        int i11 = this.f38437b;
        if (i11 != 0) {
            return i11;
        }
        int iHashCode = Arrays.hashCode(this.f38436a);
        this.f38437b = iHashCode;
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb2;
        if (this.f38436a.length == 0) {
            return "[size=0]";
        }
        String strH = h();
        int iA = a(strH, 64);
        if (iA == -1) {
            if (this.f38436a.length <= 64) {
                return "[hex=" + b() + "]";
            }
            return "[size=" + this.f38436a.length + " hex=" + a(0, 64).b() + "…]";
        }
        String strReplace = strH.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iA < strH.length()) {
            sb2 = new StringBuilder();
            sb2.append("[size=");
            sb2.append(this.f38436a.length);
            sb2.append(" text=");
            sb2.append(strReplace);
            sb2.append("…]");
        } else {
            sb2 = new StringBuilder();
            sb2.append("[text=");
            sb2.append(strReplace);
            sb2.append("]");
        }
        return sb2.toString();
    }
}
