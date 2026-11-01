package com.cloud.hisavana.net.utils;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes3.dex */
public class CommonWorkThread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f21427a;

    private static class WorkThreadHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final CommonWorkThread f21428a = new CommonWorkThread();

        private WorkThreadHolder() {
        }
    }

    private CommonWorkThread() {
        HandlerThread handlerThread = new HandlerThread("common_work_thread");
        handlerThread.start();
        this.f21427a = new Handler(handlerThread.getLooper());
    }
}
