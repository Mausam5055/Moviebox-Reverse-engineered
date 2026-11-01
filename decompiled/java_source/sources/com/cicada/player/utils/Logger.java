package com.cicada.player.utils;

import android.content.Context;
import android.util.Log;
import com.aliyun.utils.NativeLoader;

/* JADX INFO: loaded from: classes3.dex */
public class Logger {
    private static String TAG = "Logger";
    private static Context sAppContext;
    private static volatile Logger sInstance;
    private final Object logCallbackLock = new Object();
    private OnLogCallback mLogCallback = null;
    private boolean mEnableConsoleLog = true;
    private LogLevel mCurrentLogLevel = LogLevel.AF_LOG_LEVEL_INFO;

    public enum LogLevel {
        AF_LOG_LEVEL_NONE(0),
        AF_LOG_LEVEL_FATAL(8),
        AF_LOG_LEVEL_ERROR(16),
        AF_LOG_LEVEL_WARNING(24),
        AF_LOG_LEVEL_INFO(32),
        AF_LOG_LEVEL_DEBUG(48),
        AF_LOG_LEVEL_TRACE(56);

        private int mValue;

        LogLevel(int i11) {
            this.mValue = i11;
        }

        public static LogLevel convert(int i11) {
            LogLevel logLevel = AF_LOG_LEVEL_NONE;
            for (LogLevel logLevel2 : values()) {
                if (logLevel2.getValue() == i11) {
                    return logLevel2;
                }
            }
            return logLevel;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    public interface OnLogCallback {
        void onLog(LogLevel logLevel, String str);
    }

    static {
        NativeLoader.loadPlayer();
        sInstance = null;
        sAppContext = null;
    }

    private Logger() {
    }

    private void callback(LogLevel logLevel, String str) {
        synchronized (this.logCallbackLock) {
            try {
                OnLogCallback onLogCallback = this.mLogCallback;
                if (onLogCallback != null) {
                    onLogCallback.onLog(logLevel, str);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(String str, String str2) {
        log(LogLevel.AF_LOG_LEVEL_DEBUG, str, str2);
    }

    public static void e(String str, String str2) {
        log(LogLevel.AF_LOG_LEVEL_ERROR, str, str2);
    }

    public static Logger getInstance(Context context) {
        if (sInstance == null) {
            synchronized (Logger.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new Logger();
                        sInstance.setLogLevel(LogLevel.AF_LOG_LEVEL_INFO);
                        if (context != null) {
                            sAppContext = context.getApplicationContext();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sInstance;
    }

    private static LogLevel getLevel(int i11) {
        if (i11 == 0) {
            return LogLevel.AF_LOG_LEVEL_NONE;
        }
        if (i11 == 8) {
            return LogLevel.AF_LOG_LEVEL_FATAL;
        }
        if (i11 == 16) {
            return LogLevel.AF_LOG_LEVEL_ERROR;
        }
        if (i11 == 24) {
            return LogLevel.AF_LOG_LEVEL_WARNING;
        }
        if (i11 == 32) {
            return LogLevel.AF_LOG_LEVEL_INFO;
        }
        if (i11 != 48 && i11 == 56) {
            return LogLevel.AF_LOG_LEVEL_TRACE;
        }
        return LogLevel.AF_LOG_LEVEL_DEBUG;
    }

    public static void i(String str, String str2) {
        log(LogLevel.AF_LOG_LEVEL_INFO, str, str2);
    }

    public static void loadClass() {
    }

    private static void log(LogLevel logLevel, String str, String str2) {
        LogLevel logLevel2 = getInstance(sAppContext).mCurrentLogLevel;
        boolean z10 = getInstance(sAppContext).mEnableConsoleLog;
        if (logLevel2 == LogLevel.AF_LOG_LEVEL_NONE || logLevel2.getValue() < logLevel.getValue() || !z10) {
            return;
        }
        if (logLevel == LogLevel.AF_LOG_LEVEL_TRACE) {
            Log.v(str, str2);
            return;
        }
        if (logLevel == LogLevel.AF_LOG_LEVEL_DEBUG || logLevel == LogLevel.AF_LOG_LEVEL_INFO) {
            return;
        }
        if (logLevel == LogLevel.AF_LOG_LEVEL_WARNING) {
            Log.w(str, str2);
        } else if (logLevel == LogLevel.AF_LOG_LEVEL_ERROR) {
            Log.e(str, str2);
        }
    }

    private static native void nEnableConsoleLog(boolean z10);

    private static native int nGetLogLevel();

    private static void nOnLogCallback(int i11, byte[] bArr) {
        LogLevel level = getLevel(i11);
        String strTrim = new String(bArr).trim();
        Context context = sAppContext;
        if (context != null) {
            getInstance(context).callback(level, strTrim);
        }
    }

    private static native void nSetLogLevel(int i11);

    public static void v(String str, String str2) {
        log(LogLevel.AF_LOG_LEVEL_TRACE, str, str2);
    }

    public static void w(String str, String str2) {
        log(LogLevel.AF_LOG_LEVEL_WARNING, str, str2);
    }

    public void enableConsoleLog(boolean z10) {
        this.mEnableConsoleLog = z10;
        nEnableConsoleLog(z10);
    }

    public OnLogCallback getLogCallback() {
        OnLogCallback onLogCallback;
        synchronized (this.logCallbackLock) {
            onLogCallback = this.mLogCallback;
        }
        return onLogCallback;
    }

    public LogLevel getLogLevel() {
        return LogLevel.convert(nGetLogLevel());
    }

    public void setLogCallback(OnLogCallback onLogCallback) {
        synchronized (this.logCallbackLock) {
            this.mLogCallback = onLogCallback;
        }
    }

    public void setLogLevel(LogLevel logLevel) {
        this.mCurrentLogLevel = logLevel;
        nSetLogLevel(logLevel.getValue());
    }
}
