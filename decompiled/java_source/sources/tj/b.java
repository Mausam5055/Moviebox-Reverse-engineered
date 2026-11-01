package tj;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    public static int a(String str) {
        return b(str, 0);
    }

    public static int b(String str, int i11) {
        try {
            return Integer.valueOf(str).intValue();
        } catch (Exception unused) {
            return i11;
        }
    }
}
