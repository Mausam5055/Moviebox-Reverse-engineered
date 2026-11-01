package com.cloud.tmc.worker.utils;

import android.webkit.JavascriptInterface;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.TraceLog;

/* JADX INFO: loaded from: classes3.dex */
public class QuickJSConsole {
    @JavascriptInterface
    public void log(Object obj) {
        TraceLog.i(TmcConstants.WORKER_TAG, "[INFO Object] " + obj);
    }

    @JavascriptInterface
    public void log(String str) {
        TraceLog.i(TmcConstants.WORKER_TAG, "[INFO String] " + str);
    }
}
