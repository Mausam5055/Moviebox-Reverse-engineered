package com.mbridge.msdk.foundation.same.task;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f35640a;

    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("mb-task-loader-thread");
            return thread;
        }
    }

    private static int a(int i11, String str) {
        try {
            int iB = q0.a().b(str, i11);
            return iB <= 0 ? i11 : iB;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return i11;
            }
            o0.b("CommonTaskLoaderThreadPool", e11.getMessage());
            return i11;
        }
    }

    private static ThreadFactory a() {
        return new a();
    }

    public static ThreadPoolExecutor b() {
        c();
        if (f35640a == null) {
            int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
            f35640a = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f35640a.allowCoreThreadTimeOut(true);
        }
        return f35640a;
    }

    private static void c() {
        if (f35640a != null) {
            return;
        }
        int iA = a(10, "c_t_l_t_p_c");
        int iA2 = a(50, "c_t_l_t_p_m");
        int iA3 = a(5, "c_t_l_t_p_t");
        int i11 = iA2 < iA ? iA : iA2;
        try {
            if (MBridgeConstans.DEBUG) {
                o0.a("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor for core " + iA + " max " + i11 + " timeout " + iA3);
            }
            long j11 = iA3;
            if (j11 <= 0) {
                j11 = 1;
            }
            f35640a = new ThreadPoolExecutor(iA, i11, j11, TimeUnit.SECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f35640a.allowCoreThreadTimeOut(true);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor failed ", e11);
            }
        }
    }
}
