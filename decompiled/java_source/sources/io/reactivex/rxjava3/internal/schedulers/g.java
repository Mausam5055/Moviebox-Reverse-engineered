package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f65522a = b(true, "rx3.purge-enabled", true, true, new a());

    /* JADX INFO: loaded from: classes7.dex */
    static final class a implements lz.h {
        a() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(String str) {
            return System.getProperty(str);
        }
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, threadFactory);
        scheduledThreadPoolExecutor.setRemoveOnCancelPolicy(f65522a);
        return scheduledThreadPoolExecutor;
    }

    static boolean b(boolean z10, String str, boolean z11, boolean z12, lz.h hVar) {
        if (!z10) {
            return z12;
        }
        try {
            String str2 = (String) hVar.apply(str);
            return str2 == null ? z11 : "true".equals(str2);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            return z11;
        }
    }
}
