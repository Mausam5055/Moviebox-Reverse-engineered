package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class SystemClock implements Clock {
    SystemClock() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.Clock
    public HandlerWrapper createHandler(Looper looper, @Nullable Handler.Callback callback) {
        return new SystemHandlerWrapper(new Handler(looper, callback));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.Clock
    public long elapsedRealtime() {
        return android.os.SystemClock.elapsedRealtime();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.Clock
    public void sleep(long j11) {
        android.os.SystemClock.sleep(j11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.Clock
    public long uptimeMillis() {
        return android.os.SystemClock.uptimeMillis();
    }
}
