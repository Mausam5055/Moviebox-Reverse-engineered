package com.cloud.tmc.integration.audio.recording;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AudioRecordCache;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u001eJ\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u001eJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u001eJ\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\t0\u001eJ\u000e\u0010\"\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010#\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0016\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0006J\u0010\u0010(\u001a\u00020)2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0018\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0006¨\u0006,"}, d2 = {"Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;", "", "()V", "checkAudioSources", "", "key", "", "checkChannels", "channels", "", "checkEncodeBitRate", "sampleRate", "encodeBitRate", "checkRecordingFormat", "recordingFormat", "checkSampleRate", "convertKeyToAudioSource", "createAudioClient", "Lcom/cloud/tmc/integration/audio/recording/RecorderClient;", "app", "Lcom/cloud/tmc/integration/structure/App;", "dispatchOnErrorListener", "", "jsonObject", "Lcom/google/gson/JsonObject;", "dispatchOnPauseListener", "dispatchOnResumeListener", "dispatchOnStartListener", "dispatchOnStopListener", "getAvailableAudioSources", "", "getAvailableChannels", "getAvailableRecordingFormat", "getAvailableSampleRate", "getEncodeBitRateMax", "getEncodeBitRateMin", "isGranted", "context", "Landroid/content/Context;", TmcConstants.MENU_KEY_PERMISSION, "provideAudioRecorder", "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;", "provideRecordFile", "Ljava/io/File;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RecorderUtils {
    public static final RecorderUtils INSTANCE = new RecorderUtils();

    private RecorderUtils() {
    }

    public static /* synthetic */ void dispatchOnPauseListener$default(RecorderUtils recorderUtils, App app, JsonObject jsonObject, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            jsonObject = new JsonObject();
        }
        recorderUtils.dispatchOnPauseListener(app, jsonObject);
    }

    public static /* synthetic */ void dispatchOnResumeListener$default(RecorderUtils recorderUtils, App app, JsonObject jsonObject, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            jsonObject = new JsonObject();
        }
        recorderUtils.dispatchOnResumeListener(app, jsonObject);
    }

    public static /* synthetic */ void dispatchOnStartListener$default(RecorderUtils recorderUtils, App app, JsonObject jsonObject, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            jsonObject = new JsonObject();
        }
        recorderUtils.dispatchOnStartListener(app, jsonObject);
    }

    private final RecorderContract.Recorder provideAudioRecorder(String recordingFormat) throws IllegalArgumentException {
        if (Intrinsics.c(recordingFormat, RecorderConstants.FORMAT_AAC) ? true : Intrinsics.c(recordingFormat, RecorderConstants.FORMAT_M4A)) {
            return new AudioRecorder();
        }
        throw new IllegalArgumentException("Unknown recording format");
    }

    public final boolean checkAudioSources(String key) {
        Intrinsics.h(key, "key");
        return getAvailableAudioSources().contains(key);
    }

    public final boolean checkChannels(int channels) {
        return getAvailableChannels().contains(Integer.valueOf(channels));
    }

    public final boolean checkEncodeBitRate(int sampleRate, int encodeBitRate) {
        return encodeBitRate <= getEncodeBitRateMax(sampleRate) && getEncodeBitRateMin(sampleRate) <= encodeBitRate;
    }

    public final boolean checkRecordingFormat(String recordingFormat) {
        Intrinsics.h(recordingFormat, "recordingFormat");
        return getAvailableRecordingFormat().contains(recordingFormat);
    }

    public final boolean checkSampleRate(int sampleRate) {
        return getAvailableSampleRate().contains(Integer.valueOf(sampleRate));
    }

    public final int convertKeyToAudioSource(String key) {
        Intrinsics.h(key, "key");
        return Intrinsics.c(key, RecorderConstants.AUDIO_SOURCE_CAMCORDER) ? 5 : 1;
    }

    public final RecorderClient createAudioClient(App app, String recordingFormat) throws IllegalArgumentException {
        Intrinsics.h(app, "app");
        Intrinsics.h(recordingFormat, "recordingFormat");
        RecorderContract.Recorder recorderProvideAudioRecorder = provideAudioRecorder(recordingFormat);
        RecorderClient recorderClient = new RecorderClient(app);
        recorderClient.setRecorder(recorderProvideAudioRecorder);
        return recorderClient;
    }

    public final void dispatchOnErrorListener(App app, JsonObject jsonObject) {
        Intrinsics.h(app, "app");
        Intrinsics.h(jsonObject, "jsonObject");
        BridgeCallback bridgeCallback = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnErrors().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.sendJSONResponse(jsonObject);
        }
    }

    public final void dispatchOnPauseListener(App app, JsonObject jsonObject) {
        Intrinsics.h(app, "app");
        Intrinsics.h(jsonObject, "jsonObject");
        BridgeCallback bridgeCallback = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnPauses().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    public final void dispatchOnResumeListener(App app, JsonObject jsonObject) {
        Intrinsics.h(app, "app");
        Intrinsics.h(jsonObject, "jsonObject");
        BridgeCallback bridgeCallback = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnResumes().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    public final void dispatchOnStartListener(App app, JsonObject jsonObject) {
        Intrinsics.h(app, "app");
        Intrinsics.h(jsonObject, "jsonObject");
        BridgeCallback bridgeCallback = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnStarts().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    public final void dispatchOnStopListener(App app, JsonObject jsonObject) {
        Intrinsics.h(app, "app");
        Intrinsics.h(jsonObject, "jsonObject");
        BridgeCallback bridgeCallback = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnStops().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    public final List<String> getAvailableAudioSources() {
        return CollectionsKt.q("auto", RecorderConstants.AUDIO_SOURCE_MIC, RecorderConstants.AUDIO_SOURCE_CAMCORDER);
    }

    public final List<Integer> getAvailableChannels() {
        return CollectionsKt.q(1, 2);
    }

    public final List<String> getAvailableRecordingFormat() {
        return CollectionsKt.q(RecorderConstants.FORMAT_AAC);
    }

    public final List<Integer> getAvailableSampleRate() {
        return CollectionsKt.q(8000, Integer.valueOf(RecorderConstants.RECORD_SAMPLE_RATE_11025), 12000, 16000, Integer.valueOf(RecorderConstants.RECORD_SAMPLE_RATE_22050), 24000, 32000, Integer.valueOf(RecorderConstants.RECORD_SAMPLE_RATE_44100), 48000);
    }

    public final int getEncodeBitRateMax(int sampleRate) {
        if (sampleRate == 8000 || sampleRate == 11025) {
            return 48000;
        }
        if (sampleRate == 12000) {
            return RecorderConstants.RECORD_ENCODING_BITRATE_64000;
        }
        if (sampleRate == 16000) {
            return RecorderConstants.RECORD_ENCODING_BITRATE_96000;
        }
        int i11 = RecorderConstants.RECORD_ENCODING_BITRATE_128000;
        if (sampleRate != 22050 && sampleRate != 24000) {
            if (sampleRate == 32000) {
                return RecorderConstants.RECORD_ENCODING_BITRATE_192000;
            }
            i11 = RecorderConstants.RECORD_ENCODING_BITRATE_320000;
            if (sampleRate != 44100 && sampleRate != 48000) {
                return 0;
            }
        }
        return i11;
    }

    public final int getEncodeBitRateMin(int sampleRate) {
        if (sampleRate == 8000 || sampleRate == 11025) {
            return 16000;
        }
        int i11 = 24000;
        if (sampleRate != 12000 && sampleRate != 16000) {
            if (sampleRate == 22050 || sampleRate == 24000) {
                return 32000;
            }
            if (sampleRate == 32000) {
                return 48000;
            }
            i11 = RecorderConstants.RECORD_ENCODING_BITRATE_64000;
            if (sampleRate != 44100 && sampleRate != 48000) {
                return 0;
            }
        }
        return i11;
    }

    public final boolean isGranted(Context context, String permission) {
        Intrinsics.h(context, "context");
        Intrinsics.h(permission, "permission");
        return androidx.core.content.b.checkSelfPermission(context, permission) == 0;
    }

    public final File provideRecordFile(App app, String recordingFormat) throws IllegalArgumentException {
        Intrinsics.h(app, "app");
        Intrinsics.h(recordingFormat, "recordingFormat");
        if (!(Intrinsics.c(recordingFormat, RecorderConstants.FORMAT_AAC) ? true : Intrinsics.c(recordingFormat, RecorderConstants.FORMAT_M4A))) {
            throw new IllegalArgumentException("Unknown recording format");
        }
        File fileGenerateFile = FileUtil.generateFile(app, RecorderConstants.RECORDER_DIR + File.separator + FileUtil.addExtension(FileUtil.generateNameMills(), RecorderConstants.FORMAT_M4A));
        if (!FileUtils.createFileByDeleteOldFile(fileGenerateFile)) {
            return null;
        }
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        FileUtil.notifyNewFileGenerateVUrl$default(appId, null, fileGenerateFile, null, 8, null);
        return fileGenerateFile;
    }
}
