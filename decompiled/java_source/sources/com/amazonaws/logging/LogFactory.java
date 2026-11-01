package com.amazonaws.logging;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LogFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f18430a = "LogFactory";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f18431b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Level f18432c = null;

    public enum Level {
        ALL(Integer.MIN_VALUE),
        TRACE(0),
        DEBUG(1),
        INFO(2),
        WARN(3),
        ERROR(4),
        OFF(Integer.MAX_VALUE);

        private final int value;

        Level(int i11) {
            this.value = i11;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static Level a() {
        return f18432c;
    }

    public static synchronized Log b(Class cls) {
        return c(d(cls.getSimpleName()));
    }

    public static synchronized Log c(String str) {
        try {
            String strD = d(str);
            Map map = f18431b;
            Log log = (Log) map.get(strD);
            if (log != null) {
                return log;
            }
            Log consoleLog = Environment.a() ? new ConsoleLog(strD) : new AndroidLog(strD);
            map.put(strD, consoleLog);
            return consoleLog;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static String d(String str) {
        if (str.length() <= 23) {
            return str;
        }
        c(f18430a).j("Truncating log tag length as it exceed 23, the limit imposed by Android on certain API Levels");
        return str.substring(0, 23);
    }
}
