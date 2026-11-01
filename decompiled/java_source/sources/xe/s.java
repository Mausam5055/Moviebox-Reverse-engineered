package xe;

import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public class s {
    public static void a() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("Must be called from the main thread.");
        }
    }
}
