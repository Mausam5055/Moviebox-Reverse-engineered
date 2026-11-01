package cm;

import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th2) {
                bm.a.f16624a.d("error", th2.getMessage());
            }
        }
    }
}
