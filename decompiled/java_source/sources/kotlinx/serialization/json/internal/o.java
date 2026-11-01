package kotlinx.serialization.json.internal;

/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class o {
    public static /* synthetic */ String a(long j11, int i11) {
        if (j11 == 0) {
            return "0";
        }
        if (j11 > 0) {
            return Long.toString(j11, i11);
        }
        if (i11 < 2 || i11 > 36) {
            i11 = 10;
        }
        int i12 = 64;
        char[] cArr = new char[64];
        int i13 = i11 - 1;
        if ((i11 & i13) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i11);
            do {
                i12--;
                cArr[i12] = Character.forDigit(((int) j11) & i13, i11);
                j11 >>>= iNumberOfTrailingZeros;
            } while (j11 != 0);
        } else {
            long jA = (i11 & 1) == 0 ? (j11 >>> 1) / ((long) (i11 >>> 1)) : kotlin.text.x.a(j11, i11);
            long j12 = i11;
            cArr[63] = Character.forDigit((int) (j11 - (jA * j12)), i11);
            i12 = 63;
            while (jA > 0) {
                i12--;
                cArr[i12] = Character.forDigit((int) (jA % j12), i11);
                jA /= j12;
            }
        }
        return new String(cArr, i12, 64 - i12);
    }
}
