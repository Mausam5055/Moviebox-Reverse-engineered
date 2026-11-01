package com.cloud.sdk.commonutil.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f23201a = new j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f23202b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f23203c = new HashMap();

    private j() {
    }

    private final synchronized HandlerThread b(String str) {
        HandlerThread handlerThread;
        Map map = f23202b;
        handlerThread = (HandlerThread) map.get(str);
        if (handlerThread == null) {
            handlerThread = new HandlerThread(str);
            handlerThread.start();
            map.put(str, handlerThread);
        }
        return handlerThread;
    }

    public final synchronized Handler a(String threadName) {
        Handler handler;
        Looper looper;
        Intrinsics.h(threadName, "threadName");
        Map map = f23203c;
        handler = (Handler) map.get(threadName);
        if (handler == null && (looper = b(threadName).getLooper()) != null) {
            handler = new Handler(looper);
            map.put(threadName, handler);
        }
        return handler;
    }
}
