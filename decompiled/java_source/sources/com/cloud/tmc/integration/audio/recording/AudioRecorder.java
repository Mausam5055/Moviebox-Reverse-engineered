package com.cloud.tmc.integration.audio.recording;

import android.media.MediaRecorder;
import android.os.Build;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0014H\u0016J\b\u0010\u0018\u001a\u00020\u0014H\u0016J\u0012\u0010\u0019\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u000eH\u0016J0\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001fH\u0016J\b\u0010#\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;", "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;", "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;", "()V", "isPaused", "", "()Z", "isRecording", "isStopped", "recordFile", "Ljava/io/File;", RecorderConstants.RECORDER_DIR, "Landroid/media/MediaRecorder;", "recorderCallback", "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;", "recorderState", "Ljava/util/concurrent/atomic/AtomicInteger;", "timer", "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;", "onTick", "", "elapsedTime", "", "pauseRecording", "resumeRecording", "setRecorderCallback", "callback", "startRecording", "outputFile", "", "audioSource", "", "channelCount", "sampleRate", "bitrate", "stopRecording", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AudioRecorder implements RecorderContract.Recorder, RecorderTimer.TimerListener {
    private static final String ERROR_MSG_1 = "recorder init failed";
    private static final int STATE_PAUSED = 2;
    private static final int STATE_RECORDING = 1;
    private static final int STATE_STOPPED = 0;
    private static final String TAG = "AudioRecorder";
    private File recordFile;
    private MediaRecorder recorder;
    private RecorderContract.RecorderCallback recorderCallback;
    private final AtomicInteger recorderState;
    private final RecorderTimer timer;

    public AudioRecorder() {
        RecorderTimer recorderTimer = new RecorderTimer();
        recorderTimer.setTimerListener(this);
        this.timer = recorderTimer;
        this.recorderState = new AtomicInteger(0);
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public boolean isPaused() {
        return this.recorderState.get() == 2;
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public boolean isRecording() {
        return this.recorderState.get() == 1;
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public boolean isStopped() {
        return this.recorderState.get() == 0;
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderTimer.TimerListener
    public void onTick(long elapsedTime) {
        MediaRecorder mediaRecorder;
        try {
            RecorderContract.RecorderCallback recorderCallback = this.recorderCallback;
            if (recorderCallback == null || (mediaRecorder = this.recorder) == null || recorderCallback == null) {
                return;
            }
            Intrinsics.e(mediaRecorder);
            recorderCallback.onRecordProgress(elapsedTime, mediaRecorder.getMaxAmplitude());
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public void pauseRecording() {
        TmcLogger.d(TAG, "pauseRecording isRecording: " + isRecording());
        if (Build.VERSION.SDK_INT < 24 || !isRecording()) {
            return;
        }
        try {
            MediaRecorder mediaRecorder = this.recorder;
            if (mediaRecorder != null) {
                mediaRecorder.pause();
            }
            this.timer.pause();
            RecorderContract.RecorderCallback recorderCallback = this.recorderCallback;
            if (recorderCallback != null) {
                recorderCallback.onPauseRecord();
            }
            this.recorderState.set(2);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "pauseRecording() failed", th2);
            RecorderContract.RecorderCallback recorderCallback2 = this.recorderCallback;
            if (recorderCallback2 != null) {
                recorderCallback2.onError(3, ERROR_MSG_1);
            }
        }
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public void resumeRecording() {
        TmcLogger.d(TAG, "resumeRecording isPaused: " + isPaused());
        if (Build.VERSION.SDK_INT < 24 || !isPaused()) {
            return;
        }
        try {
            MediaRecorder mediaRecorder = this.recorder;
            if (mediaRecorder != null) {
                mediaRecorder.resume();
            }
            this.timer.resume();
            RecorderContract.RecorderCallback recorderCallback = this.recorderCallback;
            if (recorderCallback != null) {
                recorderCallback.onResumeRecord();
            }
            this.recorderState.set(1);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "unpauseRecording() failed", th2);
            RecorderContract.RecorderCallback recorderCallback2 = this.recorderCallback;
            if (recorderCallback2 != null) {
                recorderCallback2.onError(3, ERROR_MSG_1);
            }
        }
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public void setRecorderCallback(RecorderContract.RecorderCallback callback) {
        this.recorderCallback = callback;
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public void startRecording(String outputFile, int audioSource, int channelCount, int sampleRate, int bitrate) {
        File file;
        Intrinsics.h(outputFile, "outputFile");
        this.recordFile = new File(outputFile);
        TmcLogger.d(TAG, "startRecording file: " + outputFile);
        File file2 = this.recordFile;
        if (file2 == null || !file2.exists() || (file = this.recordFile) == null || !file.isFile()) {
            RecorderContract.RecorderCallback recorderCallback = this.recorderCallback;
            if (recorderCallback != null) {
                recorderCallback.onError(2, "invalid output file");
                return;
            }
            return;
        }
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.recorder = mediaRecorder;
        mediaRecorder.setAudioSource(audioSource);
        MediaRecorder mediaRecorder2 = this.recorder;
        if (mediaRecorder2 != null) {
            mediaRecorder2.setOutputFormat(2);
        }
        MediaRecorder mediaRecorder3 = this.recorder;
        if (mediaRecorder3 != null) {
            mediaRecorder3.setAudioEncoder(3);
        }
        MediaRecorder mediaRecorder4 = this.recorder;
        if (mediaRecorder4 != null) {
            mediaRecorder4.setAudioChannels(channelCount);
        }
        MediaRecorder mediaRecorder5 = this.recorder;
        if (mediaRecorder5 != null) {
            mediaRecorder5.setAudioSamplingRate(sampleRate);
        }
        MediaRecorder mediaRecorder6 = this.recorder;
        if (mediaRecorder6 != null) {
            mediaRecorder6.setAudioEncodingBitRate(bitrate);
        }
        MediaRecorder mediaRecorder7 = this.recorder;
        if (mediaRecorder7 != null) {
            mediaRecorder7.setMaxDuration(-1);
        }
        MediaRecorder mediaRecorder8 = this.recorder;
        if (mediaRecorder8 != null) {
            File file3 = this.recordFile;
            Intrinsics.e(file3);
            mediaRecorder8.setOutputFile(file3.getAbsolutePath());
        }
        try {
            MediaRecorder mediaRecorder9 = this.recorder;
            if (mediaRecorder9 != null) {
                mediaRecorder9.prepare();
            }
            MediaRecorder mediaRecorder10 = this.recorder;
            if (mediaRecorder10 != null) {
                mediaRecorder10.start();
            }
            this.timer.start();
            this.recorderState.set(1);
            RecorderContract.RecorderCallback recorderCallback2 = this.recorderCallback;
            if (recorderCallback2 != null) {
                File file4 = this.recordFile;
                Intrinsics.e(file4);
                recorderCallback2.onStartRecord(file4);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "prepare() failed", th2);
            RecorderContract.RecorderCallback recorderCallback3 = this.recorderCallback;
            if (recorderCallback3 != null) {
                recorderCallback3.onError(3, ERROR_MSG_1);
            }
        }
    }

    @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.Recorder
    public void stopRecording() {
        TmcLogger.d(TAG, "stopRecording isStopped: " + isStopped());
        if (isStopped()) {
            TmcLogger.e(TAG, "Recording has already stopped or hasn't started");
            return;
        }
        try {
            MediaRecorder mediaRecorder = this.recorder;
            if (mediaRecorder != null) {
                mediaRecorder.stop();
            }
            MediaRecorder mediaRecorder2 = this.recorder;
            if (mediaRecorder2 != null) {
                mediaRecorder2.release();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "stopRecording() problems", th2);
        }
        RecorderContract.RecorderCallback recorderCallback = this.recorderCallback;
        if (recorderCallback != null) {
            recorderCallback.onStopRecord(this.recordFile, this.timer.getElapsedTime());
        }
        this.timer.reset();
        this.recordFile = null;
        this.recorderState.set(0);
        this.recorder = null;
    }
}
