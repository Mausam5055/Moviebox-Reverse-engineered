package f4;

import android.os.Trace;

/* JADX INFO: loaded from: classes2.dex */
abstract class b {
    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
