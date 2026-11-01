package com.cloud.tmc.kernel.log;

import android.util.Log;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.LogEProxy;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

/* JADX INFO: loaded from: classes3.dex */
public class TmcLogger {
    private static final String EMPTY_TEXT = "";
    private static final String LOG_PREFIX = "Tmc_";
    private static final int LOG_PREFIX_LENGTH = 4;
    private static String LOG_SWITCH_TAG = "miniapp";
    private static final int MAX_LOG_TAG_LENGTH = 23;
    private static final String TAG = "TmcLogger";
    private static boolean isLogOpen = Log.isLoggable(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, 3);
    public static Proxy sDefaultImpl = new DefaultLoggerImpl();

    public static class DefaultLoggerImpl implements Proxy {
        @Override // com.cloud.tmc.kernel.log.TmcLogger.Proxy
        public void d(String str, String str2) {
            boolean unused = TmcLogger.isLogOpen;
        }

        @Override // com.cloud.tmc.kernel.log.TmcLogger.Proxy
        public void debug(String str, String str2) {
            boolean unused = TmcLogger.isLogOpen;
        }

        @Override // com.cloud.tmc.kernel.log.TmcLogger.Proxy
        public void e(String str, String str2, Throwable th2) {
            Log.e(str, str2, th2);
            ((LogEProxy) TmcProxy.get(LogEProxy.class)).e(str, str2);
        }

        @Override // com.cloud.tmc.kernel.log.TmcLogger.Proxy
        public void i(String str, String str2) {
            boolean unused = TmcLogger.isLogOpen;
        }

        @Override // com.cloud.tmc.kernel.log.TmcLogger.Proxy
        public void v(String str, String str2) {
            if (TmcLogger.isLogOpen) {
                Log.v(str, str2);
            }
        }

        @Override // com.cloud.tmc.kernel.log.TmcLogger.Proxy
        public void w(String str, String str2, Throwable th2) {
            if (TmcLogger.isLogOpen) {
                Log.w(str, str2, th2);
            }
        }
    }

    @DefaultImpl("com.cloud.tmc.kernel.log.TmcLogger$DefaultLoggerImpl")
    public interface Proxy extends Proxiable {
        void d(String str, String str2);

        void debug(String str, String str2);

        void e(String str, String str2, Throwable th2);

        void i(String str, String str2);

        void v(String str, String str2);

        void w(String str, String str2, Throwable th2);
    }

    public static void d(String str) {
        d(TAG, str);
    }

    public static void d(String str, String str2) {
        if (isEmpty(str2)) {
            return;
        }
        get().d(str, str2);
    }

    public static void debug(String str, String str2) {
        if (isEmpty(str2)) {
            return;
        }
        get().debug(str, str2);
    }

    public static void e(String str) {
        e(TAG, str, null);
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static void e(String str, String str2, Throwable th2) {
        get().e(str, str2, th2);
    }

    public static void e(String str, Throwable th2) {
        e(TAG, str, th2);
    }

    public static void enableDebugLog(boolean z10) {
        if (z10) {
            isLogOpen = true;
        }
    }

    private static Proxy get() {
        Proxy proxy = (Proxy) TmcProxy.get(Proxy.class);
        return proxy != null ? proxy : sDefaultImpl;
    }

    public static void i(String str) {
        i(TAG, str);
    }

    public static void i(String str, String str2) {
        if (isEmpty(str2)) {
            return;
        }
        get().i(str, str2);
    }

    public static boolean isEmpty(String str) {
        return str == null || "".equals(str);
    }

    public static String makeLogTag(Class cls) {
        return makeLogTag(cls.getSimpleName());
    }

    public static String makeLogTag(String str) {
        int length = str.length();
        int i11 = LOG_PREFIX_LENGTH;
        if (length > 23 - i11) {
            return LOG_PREFIX + str.substring(0, 22 - i11);
        }
        return LOG_PREFIX + str;
    }

    public static void printPerformanceLog(String str, String str2) {
        Log.e("TmcPerformance", "[Thread:" + Thread.currentThread().getName() + "] [Stage:" + str + "] [Info:" + str2 + "] [TimeStamp:" + System.currentTimeMillis() + "]");
    }

    public static void v(String str) {
        v(TAG, str);
    }

    public static void v(String str, String str2) {
        if (isEmpty(str2)) {
            return;
        }
        get().v(str, str2);
    }

    public static void w(String str) {
        w(TAG, str);
    }

    public static void w(String str, String str2) {
        if (isEmpty(str2)) {
            return;
        }
        get().w(str, str2, null);
    }

    public static void w(String str, String str2, Throwable th2) {
        get().w(str, str2, th2);
    }
}
