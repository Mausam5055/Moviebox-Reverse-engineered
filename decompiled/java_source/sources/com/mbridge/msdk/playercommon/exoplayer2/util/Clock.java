package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface Clock {
    public static final Clock DEFAULT = new SystemClock();

    HandlerWrapper createHandler(Looper looper, @Nullable Handler.Callback callback);

    long elapsedRealtime();

    void sleep(long j11);

    long uptimeMillis();
}
