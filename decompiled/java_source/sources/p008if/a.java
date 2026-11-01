package p008if;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {
    public static String a(int i11) {
        char[] cArr = new char[9];
        if (i11 < 0) {
            cArr[0] = '-';
            i11 = -i11;
        } else {
            cArr[0] = '+';
        }
        for (int i12 = 0; i12 < 8; i12++) {
            cArr[8 - i12] = Character.forDigit(i11 & 15, 16);
            i11 >>= 4;
        }
        return new String(cArr);
    }

    public static String b(int i11) {
        char[] cArr = new char[4];
        for (int i12 = 0; i12 < 4; i12++) {
            cArr[3 - i12] = Character.forDigit(i11 & 15, 16);
            i11 >>= 4;
        }
        return new String(cArr);
    }

    public static String c(int i11) {
        return i11 == ((char) i11) ? b(i11) : d(i11);
    }

    public static String d(int i11) {
        char[] cArr = new char[8];
        for (int i12 = 0; i12 < 8; i12++) {
            cArr[7 - i12] = Character.forDigit(i11 & 15, 16);
            i11 >>= 4;
        }
        return new String(cArr);
    }

    public static String e(long j11) {
        char[] cArr = new char[16];
        for (int i11 = 0; i11 < 16; i11++) {
            cArr[15 - i11] = Character.forDigit(((int) j11) & 15, 16);
            j11 >>= 4;
        }
        return new String(cArr);
    }

    public static String f(int i11) {
        return new String(new char[]{Character.forDigit(i11 & 15, 16)});
    }
}
