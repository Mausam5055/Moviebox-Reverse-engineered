package com.amazonaws.logging;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Environment {
    public static boolean a() {
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (stackTraceElement.getClassName().startsWith("org.junit.")) {
                return true;
            }
        }
        return false;
    }
}
