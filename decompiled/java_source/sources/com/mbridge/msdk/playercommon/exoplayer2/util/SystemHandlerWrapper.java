package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
final class SystemHandlerWrapper implements HandlerWrapper {
    private final Handler handler;

    public SystemHandlerWrapper(Handler handler) {
        this.handler = handler;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public Looper getLooper() {
        return this.handler.getLooper();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i11) {
        return this.handler.obtainMessage(i11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i11, int i12, int i13) {
        return this.handler.obtainMessage(i11, i12, i13);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i11, int i12, int i13, Object obj) {
        return this.handler.obtainMessage(i11, i12, i13, obj);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i11, Object obj) {
        return this.handler.obtainMessage(i11, obj);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public boolean post(Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public boolean postDelayed(Runnable runnable, long j11) {
        return this.handler.postDelayed(runnable, j11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public void removeCallbacksAndMessages(Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public void removeMessages(int i11) {
        this.handler.removeMessages(i11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessage(int i11) {
        return this.handler.sendEmptyMessage(i11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageAtTime(int i11, long j11) {
        return this.handler.sendEmptyMessageAtTime(i11, j11);
    }
}
