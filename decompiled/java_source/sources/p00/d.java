package p00;

import java.io.IOException;
import java.math.BigInteger;
import org.apache.commons.compress.archivers.zip.r;
import org.apache.commons.compress.archivers.zip.s;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final r f72267a = s.a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final r f72268b = new a();

    static class a implements r {
        a() {
        }

        @Override // org.apache.commons.compress.archivers.zip.r
        public String a(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder(bArr.length);
            for (byte b11 : bArr) {
                if (b11 == 0) {
                    break;
                }
                sb2.append((char) (b11 & 255));
            }
            return sb2.toString();
        }
    }

    private static String a(byte[] bArr, int i11, int i12, int i13, byte b11) {
        return "Invalid byte " + ((int) b11) + " at offset " + (i13 - i11) + " in '" + new String(bArr, i11, i12).replaceAll("\u0000", "{NUL}") + "' len=" + i12;
    }

    private static long b(byte[] bArr, int i11, int i12, boolean z10) {
        int i13 = i12 - 1;
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, i11 + 1, bArr2, 0, i13);
        BigInteger bigInteger = new BigInteger(bArr2);
        if (z10) {
            bigInteger = bigInteger.add(BigInteger.valueOf(-1L)).not();
        }
        if (bigInteger.bitLength() <= 63) {
            long jLongValue = bigInteger.longValue();
            return z10 ? -jLongValue : jLongValue;
        }
        throw new IllegalArgumentException("At offset " + i11 + ", " + i12 + " byte binary number exceeds maximum signed long value");
    }

    private static long c(byte[] bArr, int i11, int i12, boolean z10) {
        if (i12 >= 9) {
            throw new IllegalArgumentException("At offset " + i11 + ", " + i12 + " byte binary number exceeds maximum signed long value");
        }
        long jPow = 0;
        for (int i13 = 1; i13 < i12; i13++) {
            jPow = (jPow << 8) + ((long) (bArr[i11 + i13] & 255));
        }
        if (z10) {
            jPow = (jPow - 1) ^ (((long) Math.pow(2.0d, ((double) (i12 - 1)) * 8.0d)) - 1);
        }
        return z10 ? -jPow : jPow;
    }

    public static boolean d(byte[] bArr, int i11) {
        return bArr[i11] == 1;
    }

    public static String e(byte[] bArr, int i11, int i12) {
        try {
            try {
                return f(bArr, i11, i12, f72267a);
            } catch (IOException unused) {
                return f(bArr, i11, i12, f72268b);
            }
        } catch (IOException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static String f(byte[] bArr, int i11, int i12, r rVar) {
        int i13 = 0;
        for (int i14 = i11; i13 < i12 && bArr[i14] != 0; i14++) {
            i13++;
        }
        if (i13 <= 0) {
            return "";
        }
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, i11, bArr2, 0, i13);
        return rVar.a(bArr2);
    }

    public static long g(byte[] bArr, int i11, int i12) {
        int i13 = i11 + i12;
        if (i12 < 2) {
            throw new IllegalArgumentException("Length " + i12 + " must be at least 2");
        }
        long j11 = 0;
        if (bArr[i11] == 0) {
            return 0L;
        }
        int i14 = i11;
        while (i14 < i13 && bArr[i14] == 32) {
            i14++;
        }
        byte b11 = bArr[i13 - 1];
        while (i14 < i13 && (b11 == 0 || b11 == 32)) {
            b11 = bArr[i13 - 2];
            i13--;
        }
        while (i14 < i13) {
            byte b12 = bArr[i14];
            if (b12 < 48 || b12 > 55) {
                throw new IllegalArgumentException(a(bArr, i11, i12, i14, b12));
            }
            j11 = (j11 << 3) + ((long) (b12 - 48));
            i14++;
        }
        return j11;
    }

    public static long h(byte[] bArr, int i11, int i12) {
        byte b11 = bArr[i11];
        if ((b11 & 128) == 0) {
            return g(bArr, i11, i12);
        }
        boolean z10 = b11 == -1;
        return i12 < 9 ? c(bArr, i11, i12, z10) : b(bArr, i11, i12, z10);
    }

    public static boolean i(byte[] bArr) {
        long jG = g(bArr, 148, 8);
        long j11 = 0;
        long j12 = 0;
        for (int i11 = 0; i11 < bArr.length; i11++) {
            byte b11 = bArr[i11];
            if (148 <= i11 && i11 < 156) {
                b11 = 32;
            }
            j11 += (long) (b11 & 255);
            j12 += (long) b11;
        }
        return jG == j11 || jG == j12;
    }
}
