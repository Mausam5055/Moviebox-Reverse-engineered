package com.cicada.player.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes3.dex */
@NativeUsed
public class VsyncTimer {
    private static final String TAG = "VsyncTimer";
    private static int WHAT_DESTROY = 10003;
    private static int WHAT_INIT = 10000;
    private static int WHAT_PAUSE = 10002;
    private static int WHAT_START = 10001;
    private final Object lockObj = new Object();
    private Choreographer.FrameCallback mFrameCallback = new Choreographer.FrameCallback() { // from class: com.cicada.player.utils.VsyncTimer.1
        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j11) {
            VsyncTimer vsyncTimer = VsyncTimer.this;
            vsyncTimer.onVsync(vsyncTimer.mNativePtr, j11);
            Choreographer.getInstance().postFrameCallback(this);
        }
    };
    private long mNativePtr;
    private Handler mTimerHandler;
    private HandlerThread mTimerThread;

    public VsyncTimer(long j11) {
        this.mNativePtr = j11;
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mTimerThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.mTimerThread.getLooper()) { // from class: com.cicada.player.utils.VsyncTimer.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == VsyncTimer.WHAT_INIT) {
                    VsyncTimer vsyncTimer = VsyncTimer.this;
                    vsyncTimer.onInit(vsyncTimer.mNativePtr);
                    return;
                }
                if (message.what == VsyncTimer.WHAT_START) {
                    Choreographer.getInstance().postFrameCallback(VsyncTimer.this.mFrameCallback);
                    return;
                }
                if (message.what == VsyncTimer.WHAT_PAUSE) {
                    Choreographer.getInstance().removeFrameCallback(VsyncTimer.this.mFrameCallback);
                    return;
                }
                if (message.what == VsyncTimer.WHAT_DESTROY) {
                    Choreographer.getInstance().removeFrameCallback(VsyncTimer.this.mFrameCallback);
                    VsyncTimer vsyncTimer2 = VsyncTimer.this;
                    vsyncTimer2.onDestroy(vsyncTimer2.mNativePtr);
                    VsyncTimer.this.mTimerThread.quit();
                    VsyncTimer.this.mNativePtr = 0L;
                    synchronized (VsyncTimer.this.lockObj) {
                        VsyncTimer.this.lockObj.notifyAll();
                    }
                }
            }
        };
        this.mTimerHandler = handler;
        handler.sendEmptyMessage(WHAT_INIT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void onDestroy(long j11);

    /* JADX INFO: Access modifiers changed from: private */
    public native int onInit(long j11);

    /* JADX INFO: Access modifiers changed from: private */
    public native int onVsync(long j11, long j12);

    public void destroy() {
        synchronized (this.lockObj) {
            this.mTimerHandler.sendEmptyMessage(WHAT_DESTROY);
            try {
                this.lockObj.wait();
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
        }
    }

    public void pause() {
        this.mTimerHandler.sendEmptyMessage(WHAT_PAUSE);
    }

    public void start() {
        this.mTimerHandler.sendEmptyMessage(WHAT_START);
    }
}
