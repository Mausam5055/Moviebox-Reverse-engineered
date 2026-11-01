package com.bytedance.sdk.component.utils;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private static HandlerThread Sj;

    public static HandlerThread Sj(String str) {
        return Sj(str, 0);
    }

    public static HandlerThread Sj(String str, int i11) {
        if (com.bytedance.sdk.component.Dq.uA.sCrashHappened) {
            return Sj;
        }
        try {
            HandlerThread handlerThread = new HandlerThread(str, i11) { // from class: com.bytedance.sdk.component.utils.Dq.1
                boolean Sj = false;

                @Override // java.lang.Thread
                public synchronized void start() {
                    if (this.Sj) {
                        return;
                    }
                    this.Sj = true;
                    super.start();
                }
            };
            handlerThread.start();
            return handlerThread;
        } catch (Throwable th2) {
            sU.Sj("HandlerThreadUtils", "new handlerThread error", th2);
            return Sj;
        }
    }

    public static void Sj(HandlerThread handlerThread) {
        Sj = handlerThread;
    }
}
