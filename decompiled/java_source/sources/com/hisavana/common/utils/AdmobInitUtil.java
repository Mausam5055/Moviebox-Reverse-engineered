package com.hisavana.common.utils;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes4.dex */
public class AdmobInitUtil {
    private static volatile HandlerThread handlerThread = null;
    private static volatile boolean started = false;
    private static String threadName = "admob init thread";

    public static synchronized HandlerThread getHanderThread() {
        try {
            if (handlerThread == null) {
                synchronized (AdmobInitUtil.class) {
                    try {
                        if (handlerThread == null) {
                            handlerThread = new HandlerThread(threadName);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return handlerThread;
    }

    public static synchronized void quit() {
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    public static synchronized void start() {
        if (!started && handlerThread != null) {
            handlerThread.start();
            started = !started;
        }
    }
}
