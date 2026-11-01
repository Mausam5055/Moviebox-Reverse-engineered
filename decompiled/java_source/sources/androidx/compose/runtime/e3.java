package androidx.compose.runtime;

import android.os.Trace;

/* JADX INFO: loaded from: classes.dex */
public final class e3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e3 f3694a = new e3();

    private e3() {
    }

    public final Object a(String str) {
        Trace.beginSection(str);
        return null;
    }

    public final void b(Object obj) {
        Trace.endSection();
    }
}
