package com.bytedance.sdk.openadsdk.dNu;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface sP {
    Context getContext();

    Handler getHandler();

    int getOnceLogCount();

    int getOnceLogInterval();

    HandlerThread getSafeHandlerThread(String str, int i11);

    int getUploadIntervalTime();

    boolean isMonitorOpen();

    void onMonitorUpload(List<com.bytedance.sdk.openadsdk.dNu.sP.Sj> list);
}
