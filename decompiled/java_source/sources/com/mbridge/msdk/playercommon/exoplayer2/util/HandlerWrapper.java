package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public interface HandlerWrapper {
    Looper getLooper();

    Message obtainMessage(int i11);

    Message obtainMessage(int i11, int i12, int i13);

    Message obtainMessage(int i11, int i12, int i13, Object obj);

    Message obtainMessage(int i11, Object obj);

    boolean post(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j11);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i11);

    boolean sendEmptyMessage(int i11);

    boolean sendEmptyMessageAtTime(int i11, long j11);
}
