package com.blankj.utilcode.util;

import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class LogUtils$4 implements Runnable {
    final /* synthetic */ File val$aFile;

    LogUtils$4(File file) {
        this.val$aFile = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.val$aFile.delete()) {
            return;
        }
        Log.e("LogUtils", "delete " + this.val$aFile + " failed!");
    }
}
