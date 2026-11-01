package com.tencent.tinker.loader.shareutil;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes5.dex */
public class ShareTinkerLog {
    private static final TinkerLogImp debugLog;
    private static final TinkerLogImp[] tinkerLogImpRef;
    private static final Handler[] tinkerLogInlineFenceRef;

    public interface TinkerLogImp {
        void d(String str, String str2, Object... objArr);

        void e(String str, String str2, Object... objArr);

        void i(String str, String str2, Object... objArr);

        void printErrStackTrace(String str, Throwable th2, String str2, Object... objArr);

        void v(String str, String str2, Object... objArr);

        void w(String str, String str2, Object... objArr);
    }

    static {
        Handler[] handlerArr = {null};
        tinkerLogInlineFenceRef = handlerArr;
        TinkerLogImp tinkerLogImp = new TinkerLogImp() { // from class: com.tencent.tinker.loader.shareutil.ShareTinkerLog.1
            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void d(String str, String str2, Object... objArr) {
                if (objArr == null || objArr.length == 0) {
                    return;
                }
                String.format(str2, objArr);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void e(String str, String str2, Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = String.format(str2, objArr);
                }
                Log.e(str, str2);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void i(String str, String str2, Object... objArr) {
                if (objArr == null || objArr.length == 0) {
                    return;
                }
                String.format(str2, objArr);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void printErrStackTrace(String str, Throwable th2, String str2, Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = String.format(str2, objArr);
                }
                if (str2 == null) {
                    str2 = "";
                }
                Log.e(str, str2 + "  " + Log.getStackTraceString(th2));
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void v(String str, String str2, Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = String.format(str2, objArr);
                }
                Log.v(str, str2);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void w(String str, String str2, Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = String.format(str2, objArr);
                }
                Log.w(str, str2);
            }
        };
        debugLog = tinkerLogImp;
        tinkerLogImpRef = new TinkerLogImp[]{tinkerLogImp};
        synchronized (handlerArr) {
            try {
                int i11 = TinkerLogInlineFence.f40699a;
                Constructor declaredConstructor = TinkerLogInlineFence.class.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                handlerArr[0] = (Handler) declaredConstructor.newInstance(null);
            } catch (Throwable th2) {
                Log.e("Tinker.ShareTinkerLog", "[-] Fail to create inline fence instance.", th2);
                tinkerLogInlineFenceRef[0] = null;
            }
        }
    }

    public static void d(String str, String str2, Object... objArr) {
        printLog(3, str, str2, objArr);
    }

    public static void e(String str, String str2, Object... objArr) {
        printLog(6, str, str2, objArr);
    }

    public static TinkerLogImp getDefaultImpl() {
        return debugLog;
    }

    public static TinkerLogImp getImpl() {
        TinkerLogImp tinkerLogImp;
        TinkerLogImp[] tinkerLogImpArr = tinkerLogImpRef;
        synchronized (tinkerLogImpArr) {
            tinkerLogImp = tinkerLogImpArr[0];
        }
        return tinkerLogImp;
    }

    private static Handler getInlineFence() {
        Handler handler;
        Handler[] handlerArr = tinkerLogInlineFenceRef;
        synchronized (handlerArr) {
            handler = handlerArr[0];
        }
        return handler;
    }

    public static void i(String str, String str2, Object... objArr) {
        printLog(4, str, str2, objArr);
    }

    public static void printErrStackTrace(String str, Throwable th2, String str2, Object... objArr) {
        printLog(str, th2, str2, objArr);
    }

    private static void printLog(int i11, String str, String str2, Object... objArr) {
        Object[] objArr2 = {Integer.valueOf(i11), Long.valueOf(System.currentTimeMillis()), str, str2, objArr};
        Handler inlineFence = getInlineFence();
        if (inlineFence != null) {
            Message messageObtain = Message.obtain(inlineFence, i11, objArr2);
            inlineFence.handleMessage(messageObtain);
            messageObtain.recycle();
        } else {
            debugLog.e(str, "!! NO_LOG_IMPL !! Original Log: " + str2, objArr);
        }
    }

    private static void printLog(String str, Throwable th2, String str2, Object... objArr) {
        Object[] objArr2 = {4001, Long.valueOf(System.currentTimeMillis()), str, th2, str2, objArr};
        Handler inlineFence = getInlineFence();
        if (inlineFence != null) {
            Message messageObtain = Message.obtain(inlineFence, 4001, objArr2);
            inlineFence.handleMessage(messageObtain);
            messageObtain.recycle();
        } else {
            debugLog.printErrStackTrace(str, th2, "!! NO_LOG_IMPL !! Original Log: " + str2, objArr);
        }
    }

    public static void printPendingLogs() {
        Handler inlineFence = getInlineFence();
        if (inlineFence != null) {
            Message messageObtain = Message.obtain(inlineFence, 4002);
            inlineFence.handleMessage(messageObtain);
            messageObtain.recycle();
        }
    }

    public static void setTinkerLogImp(TinkerLogImp tinkerLogImp) {
        TinkerLogImp[] tinkerLogImpArr = tinkerLogImpRef;
        synchronized (tinkerLogImpArr) {
            try {
                tinkerLogImpArr[0] = tinkerLogImp;
                if (tinkerLogImp != null && tinkerLogImp != debugLog) {
                    printPendingLogs();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void v(String str, String str2, Object... objArr) {
        printLog(2, str, str2, objArr);
    }

    public static void w(String str, String str2, Object... objArr) {
        printLog(5, str, str2, objArr);
    }
}
