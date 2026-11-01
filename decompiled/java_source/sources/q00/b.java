package q00;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    private static final void a(int i11) {
        if (i11 > 8) {
            throw new IllegalArgumentException("Can't read more than eight bytes into a long value");
        }
    }

    public static long b(byte[] bArr, int i11, int i12) {
        a(i12);
        long j11 = 0;
        for (int i13 = 0; i13 < i12; i13++) {
            j11 |= (((long) bArr[i11 + i13]) & 255) << (i13 * 8);
        }
        return j11;
    }

    public static void c(byte[] bArr, long j11, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[i11 + i13] = (byte) (255 & j11);
            j11 >>= 8;
        }
    }
}
