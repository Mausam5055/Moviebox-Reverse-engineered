package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class x3 {
    public static int a(int i11) {
        return c(i11, 0, 0, 0);
    }

    public static int b(int i11, int i12, int i13) {
        return e(i11, i12, i13, 0, 128, 0);
    }

    public static int c(int i11, int i12, int i13, int i14) {
        return e(i11, i12, i13, 0, 128, i14);
    }

    public static int d(int i11, int i12, int i13, int i14, int i15) {
        return e(i11, i12, i13, i14, i15, 0);
    }

    public static int e(int i11, int i12, int i13, int i14, int i15, int i16) {
        return i11 | i12 | i13 | i14 | i15 | i16;
    }

    public static int f(int i11) {
        return i11 & 24;
    }

    public static int g(int i11) {
        return i11 & 3584;
    }

    public static int h(int i11) {
        return i11 & 384;
    }

    public static int i(int i11) {
        return i11 & 7;
    }

    public static int j(int i11) {
        return i11 & 64;
    }

    public static int k(int i11) {
        return i11 & 32;
    }

    public static boolean l(int i11, boolean z10) {
        int i12 = i(i11);
        return i12 == 4 || (z10 && i12 == 3);
    }
}
