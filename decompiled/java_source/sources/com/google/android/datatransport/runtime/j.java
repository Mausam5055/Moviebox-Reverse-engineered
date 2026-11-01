package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
abstract class j {
    static Executor a() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
