package com.hisavana.common.utils;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class RunTimer {
    private static final String TAG = "RunTimer";
    private Handler handler;
    private Runnable mTimeoutRunnable;
    private int scheduleTime = 60000;
    private TimeOutCallback timeOutCallback;

    public interface TimeOutCallback {
        void isTimeOut();
    }

    public void cancelTimeTask() {
        this.timeOutCallback = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        this.mTimeoutRunnable = null;
    }

    public void runTimerTask() {
        if (this.handler == null) {
            this.handler = new Handler(Looper.getMainLooper());
        }
        if (this.mTimeoutRunnable == null) {
            this.mTimeoutRunnable = new Runnable() { // from class: com.hisavana.common.utils.RunTimer.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RunTimer.this.timeOutCallback != null) {
                        RunTimer.this.timeOutCallback.isTimeOut();
                    }
                }
            };
        }
        try {
            this.handler.postDelayed(this.mTimeoutRunnable, this.scheduleTime);
        } catch (Throwable th2) {
            Log.e(TAG, Log.getStackTraceString(th2));
        }
    }

    public void setScheduleTime(int i11) {
        this.scheduleTime = i11;
    }

    public void setTimeOutCallback(TimeOutCallback timeOutCallback) {
        this.timeOutCallback = timeOutCallback;
    }
}
