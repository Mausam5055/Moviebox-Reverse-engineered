package f4;

import android.os.Trace;

/* JADX INFO: loaded from: classes2.dex */
abstract class c {
    public static void a(String str, int i11) {
        Trace.beginAsyncSection(str, i11);
    }

    public static void b(String str, int i11) {
        Trace.endAsyncSection(str, i11);
    }

    public static boolean c() {
        return Trace.isEnabled();
    }
}
