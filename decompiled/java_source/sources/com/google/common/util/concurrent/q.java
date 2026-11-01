package com.google.common.util.concurrent;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f31035a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Logger f31037c;

    q(Class cls) {
        this.f31036b = cls.getName();
    }

    Logger a() {
        Logger logger = this.f31037c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f31035a) {
            try {
                Logger logger2 = this.f31037c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f31036b);
                this.f31037c = logger3;
                return logger3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
