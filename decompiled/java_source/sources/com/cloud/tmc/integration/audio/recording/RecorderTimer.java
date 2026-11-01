package com.cloud.tmc.integration.audio.recording;

import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.integration.BuildConfig;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\b\u0010\u000f\u001a\u00020\rH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ\b\u0010\u0011\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0014\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;", "", "()V", "isPaused", "", "isStarted", "pausedTime", "", "startTime", "timerListener", "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;", "getElapsedTime", "pause", "", "reset", "resetTimer", CampaignEx.JSON_NATIVE_VIDEO_RESUME, "scheduleTimer", "setTimerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "start", "Companion", "TimerListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RecorderTimer {
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private boolean isPaused;
    private boolean isStarted;
    private long pausedTime;
    private long startTime;
    private TimerListener timerListener;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;", "", "onTick", "", "elapsedTime", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface TimerListener {
        void onTick(long elapsedTime);
    }

    private final void resetTimer() {
        handler.removeCallbacksAndMessages(null);
    }

    private final void scheduleTimer() {
        resetTimer();
        final TimerListener timerListener = this.timerListener;
        if (timerListener != null) {
            handler.post(new Runnable() { // from class: com.cloud.tmc.integration.audio.recording.RecorderTimer$scheduleTimer$1$1
                @Override // java.lang.Runnable
                public void run() {
                    timerListener.onTick(this.getElapsedTime());
                    RecorderTimer.handler.postDelayed(this, 13L);
                }
            });
        }
    }

    public final long getElapsedTime() {
        long jCurrentTimeMillis;
        long j11;
        if (!this.isStarted) {
            return 0L;
        }
        if (this.isPaused) {
            jCurrentTimeMillis = this.pausedTime;
            j11 = this.startTime;
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            j11 = this.startTime;
        }
        return jCurrentTimeMillis - j11;
    }

    public final void pause() {
        if (this.isStarted && !this.isPaused) {
            this.pausedTime = System.currentTimeMillis();
            this.isPaused = true;
        }
        resetTimer();
    }

    public final void reset() {
        this.startTime = 0L;
        this.pausedTime = 0L;
        this.isPaused = false;
        this.isStarted = false;
        resetTimer();
    }

    public final void resume() {
        if (this.isStarted && this.isPaused) {
            this.startTime += System.currentTimeMillis() - this.pausedTime;
            this.isPaused = false;
        }
        scheduleTimer();
    }

    public final void setTimerListener(TimerListener listener) {
        this.timerListener = listener;
    }

    public final void start() {
        if (!this.isStarted) {
            this.startTime = System.currentTimeMillis();
            this.isStarted = true;
        } else if (this.isPaused) {
            this.startTime += System.currentTimeMillis() - this.pausedTime;
            this.isPaused = false;
        }
        scheduleTimer();
    }
}
