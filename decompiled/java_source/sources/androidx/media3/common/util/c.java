package androidx.media3.common.util;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Executor f10371a;

    public static synchronized Executor a() {
        try {
            if (f10371a == null) {
                f10371a = a1.S0("ExoPlayer:BackgroundExecutor");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f10371a;
    }
}
