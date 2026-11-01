package com.cloud.tmc.integration.audio.recording;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0017\u0018\u0000 32\u00020\u0001:\u00013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0017J\u001a\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u001f\u001a\u00020\u0013H\u0002J\b\u0010 \u001a\u00020\u0013H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0012\u0010#\u001a\u00020\u00132\b\u0010$\u001a\u0004\u0018\u00010\u0015H\u0002J\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020\u0013J\u0010\u0010'\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010(\u001a\u00020\u0013J\u000e\u0010)\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010*\u001a\u00020\u00132\b\u0010+\u001a\u0004\u0018\u00010\bJ.\u0010,\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0006\u00102\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/cloud/tmc/integration/audio/recording/RecorderClient;", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "(Lcom/cloud/tmc/integration/structure/App;)V", "getApp", "()Lcom/cloud/tmc/integration/structure/App;", "audioRecorder", "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;", "callbacks", "", "Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;", "maxDuration", "", "recordFilePath", "", "recorderCallback", "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;", "addRecordingCallback", "", "getRecordFile", "Ljava/io/File;", "isGranted", "", "isPaused", "isRecording", "isStopped", "onRecordingError", "errorCode", "", "errorMsg", "onRecordingPaused", "onRecordingResumed", "onRecordingStarted", "output", "onRecordingStopped", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "pauseRecording", "release", "removeRecordingCallback", "resumeRecording", "setMaxDuration", "setRecorder", RecorderConstants.RECORDER_DIR, "startRecording", NativeRequestBridge.KEY_FILE_PATH, "audioSource", "channelCount", "sampleRate", "bitrate", "stopRecording", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RecorderClient {
    private static final String TAG = "RecorderClient";
    private final App app;
    private RecorderContract.Recorder audioRecorder;
    private final List<RecorderClientCallback> callbacks;
    private long maxDuration;
    private String recordFilePath;
    private RecorderContract.RecorderCallback recorderCallback;

    public RecorderClient(App app) {
        Intrinsics.h(app, "app");
        this.app = app;
        this.callbacks = new ArrayList();
        this.maxDuration = 600000L;
        this.recorderCallback = new RecorderContract.RecorderCallback() { // from class: com.cloud.tmc.integration.audio.recording.RecorderClient$recorderCallback$1
            @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.RecorderCallback
            public void onError(int errorCode, String errorMsg) {
                TmcLogger.d("RecorderClient", "Recorder onError: errorCode: " + errorCode + " errorMsg: " + errorMsg);
                this.this$0.onRecordingError(errorCode, errorMsg);
                RecorderUtils recorderUtils = RecorderUtils.INSTANCE;
                App app2 = this.this$0.getApp();
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", errorMsg);
                Unit unit = Unit.f67061a;
                recorderUtils.dispatchOnErrorListener(app2, jsonObject);
            }

            @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.RecorderCallback
            public void onPauseRecord() {
                TmcLogger.d("RecorderClient", "Recorder onPauseRecord");
                this.this$0.onRecordingPaused();
                RecorderUtils.dispatchOnPauseListener$default(RecorderUtils.INSTANCE, this.this$0.getApp(), null, 2, null);
            }

            @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.RecorderCallback
            public void onRecordProgress(long mills, int amp) {
                TmcLogger.d("RecorderClient", "Recording onRecordProgress: mills: " + mills + " amp: " + amp);
                if (mills >= this.this$0.maxDuration) {
                    TmcLogger.d("RecorderClient", "Recording mills >= maxDuration: mills: " + mills + " maxDuration: " + this.this$0.maxDuration);
                    this.this$0.stopRecording();
                }
            }

            @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.RecorderCallback
            public void onResumeRecord() {
                TmcLogger.d("RecorderClient", "Recorder onResumeRecord");
                this.this$0.onRecordingResumed();
                RecorderUtils.dispatchOnResumeListener$default(RecorderUtils.INSTANCE, this.this$0.getApp(), null, 2, null);
            }

            @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.RecorderCallback
            public void onStartRecord(File output) {
                Intrinsics.h(output, "output");
                TmcLogger.d("RecorderClient", "Recorder onStartRecord");
                this.this$0.onRecordingStarted(output);
                RecorderUtils.dispatchOnStartListener$default(RecorderUtils.INSTANCE, this.this$0.getApp(), null, 2, null);
            }

            @Override // com.cloud.tmc.integration.audio.recording.RecorderContract.RecorderCallback
            public void onStopRecord(File output, long durationMills) {
                String strNotifyNewFileGenerateVUrl$default;
                TmcLogger.d("RecorderClient", "Recorder onStopRecord");
                this.this$0.onRecordingStopped(output);
                RecorderUtils recorderUtils = RecorderUtils.INSTANCE;
                App app2 = this.this$0.getApp();
                JsonObject jsonObject = new JsonObject();
                RecorderClient recorderClient = this.this$0;
                if (output != null) {
                    String appId = recorderClient.getApp().getAppId();
                    Intrinsics.g(appId, "app.appId");
                    strNotifyNewFileGenerateVUrl$default = FileUtil.notifyNewFileGenerateVUrl$default(appId, null, output, null, 8, null);
                } else {
                    strNotifyNewFileGenerateVUrl$default = null;
                }
                jsonObject.addProperty(NativeRequestBridge.KEY_TEMP_FILE_PATH, strNotifyNewFileGenerateVUrl$default);
                jsonObject.addProperty("duration", Long.valueOf(durationMills));
                jsonObject.addProperty("fileSize", output != null ? Long.valueOf(FileExtKt.getTotalSize(output)) : null);
                Unit unit = Unit.f67061a;
                recorderUtils.dispatchOnStopListener(app2, jsonObject);
            }
        };
    }

    private final boolean isGranted() {
        AppContext appContext = this.app.getAppContext();
        Context context = appContext != null ? appContext.getContext() : null;
        if (context == null) {
            return false;
        }
        boolean zIsGranted = RecorderUtils.INSTANCE.isGranted(context, "android.permission.RECORD_AUDIO");
        TmcLogger.d(TAG, "Recording audio permission is " + (zIsGranted ? "granted" : "denied"));
        return zIsGranted;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecordingError(int errorCode, String errorMsg) {
        int size;
        if (this.callbacks.isEmpty() || (size = this.callbacks.size() - 1) < 0) {
            return;
        }
        while (true) {
            int i11 = size - 1;
            this.callbacks.get(size).onError(errorCode, errorMsg);
            if (i11 < 0) {
                return;
            } else {
                size = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecordingPaused() {
        int size;
        if (this.callbacks.isEmpty() || (size = this.callbacks.size() - 1) < 0) {
            return;
        }
        while (true) {
            int i11 = size - 1;
            this.callbacks.get(size).onRecordingPaused();
            if (i11 < 0) {
                return;
            } else {
                size = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecordingResumed() {
        int size;
        if (this.callbacks.isEmpty() || (size = this.callbacks.size() - 1) < 0) {
            return;
        }
        while (true) {
            int i11 = size - 1;
            this.callbacks.get(size).onRecordingResumed();
            if (i11 < 0) {
                return;
            } else {
                size = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecordingStarted(File output) {
        int size;
        if (this.callbacks.isEmpty() || (size = this.callbacks.size() - 1) < 0) {
            return;
        }
        while (true) {
            int i11 = size - 1;
            this.callbacks.get(size).onRecordingStarted(output);
            if (i11 < 0) {
                return;
            } else {
                size = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRecordingStopped(File file) {
        int size;
        if (this.callbacks.isEmpty() || (size = this.callbacks.size() - 1) < 0) {
            return;
        }
        while (true) {
            int i11 = size - 1;
            this.callbacks.get(size).onRecordingStopped(file);
            if (i11 < 0) {
                return;
            } else {
                size = i11;
            }
        }
    }

    public final void addRecordingCallback(RecorderClientCallback recorderCallback) {
        if (recorderCallback != null) {
            this.callbacks.add(recorderCallback);
        }
    }

    public final App getApp() {
        return this.app;
    }

    public final File getRecordFile() {
        String str = this.recordFilePath;
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public final boolean isPaused() {
        RecorderContract.Recorder recorder = this.audioRecorder;
        return recorder != null && recorder.isPaused();
    }

    public final boolean isRecording() {
        RecorderContract.Recorder recorder = this.audioRecorder;
        return recorder != null && recorder.isRecording();
    }

    public final boolean isStopped() {
        RecorderContract.Recorder recorder = this.audioRecorder;
        return recorder != null && recorder.isStopped();
    }

    public final synchronized void pauseRecording() {
        RecorderContract.Recorder recorder;
        if (!isGranted()) {
            TmcLogger.d(TAG, "pauseRecording: permission denied");
            return;
        }
        if (isRecording() && (recorder = this.audioRecorder) != null) {
            recorder.pauseRecording();
        }
    }

    public final void release() {
        RecorderContract.Recorder recorder = this.audioRecorder;
        if (recorder != null) {
            recorder.stopRecording();
        }
        this.callbacks.clear();
    }

    public final void removeRecordingCallback(RecorderClientCallback recorderCallback) {
        if (recorderCallback != null) {
            this.callbacks.remove(recorderCallback);
        }
    }

    public final synchronized void resumeRecording() {
        RecorderContract.Recorder recorder;
        if (!isGranted()) {
            TmcLogger.d(TAG, "resumeRecording: permission denied");
            return;
        }
        if (isPaused() && (recorder = this.audioRecorder) != null) {
            recorder.resumeRecording();
        }
    }

    public final void setMaxDuration(long maxDuration) {
        this.maxDuration = maxDuration;
    }

    public final void setRecorder(RecorderContract.Recorder recorder) {
        this.audioRecorder = recorder;
        if (recorder != null) {
            recorder.setRecorderCallback(this.recorderCallback);
        }
    }

    public final synchronized void startRecording(String filePath, int audioSource, int channelCount, int sampleRate, int bitrate) {
        Intrinsics.h(filePath, "filePath");
        if (!isGranted()) {
            TmcLogger.d(TAG, "startRecording: permission denied");
            return;
        }
        if (isStopped()) {
            this.recordFilePath = filePath;
            RecorderContract.Recorder recorder = this.audioRecorder;
            if (recorder != null) {
                recorder.startRecording(filePath, audioSource, channelCount, sampleRate, bitrate);
            }
        }
    }

    public final synchronized void stopRecording() {
        RecorderContract.Recorder recorder;
        if (!isGranted()) {
            TmcLogger.d(TAG, "stopRecording: permission denied");
            return;
        }
        if (!isStopped() && (recorder = this.audioRecorder) != null) {
            recorder.stopRecording();
        }
    }
}
