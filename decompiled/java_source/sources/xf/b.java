package xf;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static void a(int i11, int i12, int i13) {
        if ((i12 | i13) < 0 || i12 > i11 || i11 - i12 < i13) {
            throw new ArrayIndexOutOfBoundsException(i12);
        }
    }
}
