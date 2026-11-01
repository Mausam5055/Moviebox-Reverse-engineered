package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.audio.recording.RecorderClient;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.cloud.tmc.integration.audio.recording.RecorderUtils;
import com.cloud.tmc.integration.model.AudioRecordCache;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0007\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\n\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u000b\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\f\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\r\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u000e\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\u001e\u0010\u0011\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0012\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0013\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0014\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0015\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001e\u0010\u0018\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007JZ\u0010\u0019\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u001a\u001a\u00020\u001b2\b\b\u0001\u0010\u001c\u001a\u00020\u001d2\b\b\u0001\u0010\u001e\u001a\u00020\u001d2\b\b\u0001\u0010\u001f\u001a\u00020\u001d2\b\b\u0001\u0010 \u001a\u00020!2\b\b\u0001\u0010\"\u001a\u00020!2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010#\u001a\u00020\u00042\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006%"}, d2 = {"Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "getAvailableAudioSources", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "offError", "app", "Lcom/cloud/tmc/integration/structure/App;", "offPause", "offResume", "offStart", "offStop", "onError", "onFinalized", "onInitialized", "onPause", "onResume", TmcConstants.NAVIGATION_ON_START, "onStop", "pause", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", CampaignEx.JSON_NATIVE_VIDEO_RESUME, "start", "duration", "", "sampleRate", "", "numberOfChannels", "encodeBitRate", "format", "", "audioSource", "stop", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AudioRecordBridge implements BridgeExtension {
    private static final String ERROR_MSG_A10001 = "Parameter error: A10001";
    private static final String ERROR_MSG_A10008 = "Audio is recording, don't start record again : A10008";
    private static final String ERROR_MSG_A10009 = "Audio is paused, pause record fail : A10009";
    private static final String ERROR_MSG_A10011 = "Audio failed with permission denied : A10011";
    private static final String ERROR_MSG_A10012 = "Audio is stop, don't stop record again : A10012";
    private static final String TAG = "AudioRecordBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void getAvailableAudioSources(@BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        JsonObject jsonObject = new JsonObject();
        JsonArray jsonArray = new JsonArray();
        Iterator<T> it = RecorderUtils.INSTANCE.getAvailableAudioSources().iterator();
        while (it.hasNext()) {
            jsonArray.add((String) it.next());
        }
        Unit unit = Unit.f67061a;
        jsonObject.add("audioSources", jsonArray);
        callback.sendSuccessResponse(jsonObject);
    }

    @ActionFilter("audioRecordOffError")
    @ThreadType(ExecutorType.NORMAL)
    public final void offError(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
        } else {
            BridgeCallback bridgeCallbackRemove = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnErrors().remove(app.getAppId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter("audioRecordOffPause")
    @ThreadType(ExecutorType.NORMAL)
    public final void offPause(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
        } else {
            BridgeCallback bridgeCallbackRemove = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnPauses().remove(app.getAppId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter("audioRecordOffResume")
    @ThreadType(ExecutorType.NORMAL)
    public final void offResume(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
        } else {
            BridgeCallback bridgeCallbackRemove = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnResumes().remove(app.getAppId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter("audioRecordOffStart")
    @ThreadType(ExecutorType.NORMAL)
    public final void offStart(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
        } else {
            BridgeCallback bridgeCallbackRemove = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnStarts().remove(app.getAppId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter("audioRecordOffStop")
    @ThreadType(ExecutorType.NORMAL)
    public final void offStop(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
        } else {
            BridgeCallback bridgeCallbackRemove = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getOnStops().remove(app.getAppId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter("audioRecordOnError")
    @ThreadType(ExecutorType.NORMAL)
    public final void onError(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class, true);
        BridgeCallback bridgeCallback = audioRecordCache.getOnErrors().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.close();
        }
        HashMap<String, BridgeCallback> onErrors = audioRecordCache.getOnErrors();
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        onErrors.put(appId, callback);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized: ");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized: ");
    }

    @ActionFilter("audioRecordOnPause")
    @ThreadType(ExecutorType.NORMAL)
    public final void onPause(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class, true);
        BridgeCallback bridgeCallback = audioRecordCache.getOnPauses().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.close();
        }
        HashMap<String, BridgeCallback> onPauses = audioRecordCache.getOnPauses();
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        onPauses.put(appId, callback);
    }

    @ActionFilter("audioRecordOnResume")
    @ThreadType(ExecutorType.NORMAL)
    public final void onResume(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class, true);
        BridgeCallback bridgeCallback = audioRecordCache.getOnResumes().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.close();
        }
        HashMap<String, BridgeCallback> onResumes = audioRecordCache.getOnResumes();
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        onResumes.put(appId, callback);
    }

    @ActionFilter("audioRecordOnStart")
    @ThreadType(ExecutorType.NORMAL)
    public final void onStart(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class, true);
        BridgeCallback bridgeCallback = audioRecordCache.getOnStarts().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.close();
        }
        HashMap<String, BridgeCallback> onStarts = audioRecordCache.getOnStarts();
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        onStarts.put(appId, callback);
    }

    @ActionFilter("audioRecordOnStop")
    @ThreadType(ExecutorType.NORMAL)
    public final void onStop(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class, true);
        BridgeCallback bridgeCallback = audioRecordCache.getOnStops().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.close();
        }
        HashMap<String, BridgeCallback> onStops = audioRecordCache.getOnStops();
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        onStops.put(appId, callback);
    }

    @ActionFilter("audioRecordPause")
    @ThreadType(ExecutorType.UI)
    public final void pause(@BindingNode(App.class) final App app, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        final RecorderClient recorderClient = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getRecorderClientCache().get(app.getAppId());
        if (recorderClient == null || recorderClient.isStopped()) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", ERROR_MSG_A10012);
            RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject2);
            callback.sendFailResponse(jsonObject2);
            return;
        }
        if (!recorderClient.isPaused()) {
            PermissionUtils.permissionGroup(PermissionConstants.MICROPHONE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.AudioRecordBridge.pause.6
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    BridgeCallback bridgeCallback = callback;
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty("errMsg", AudioRecordBridge.ERROR_MSG_A10011);
                    RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject3);
                    bridgeCallback.sendFailResponse(jsonObject3);
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    recorderClient.pauseRecording();
                    callback.sendSuccessResponse();
                }
            }).request();
            return;
        }
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty("errMsg", ERROR_MSG_A10009);
        RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject3);
        callback.sendFailResponse(jsonObject3);
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter("audioRecordResume")
    @ThreadType(ExecutorType.UI)
    public final void resume(@BindingNode(App.class) final App app, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        final RecorderClient recorderClient = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getRecorderClientCache().get(app.getAppId());
        if (recorderClient == null || recorderClient.isStopped()) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", ERROR_MSG_A10012);
            RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject2);
            callback.sendFailResponse(jsonObject2);
            return;
        }
        if (!recorderClient.isRecording()) {
            PermissionUtils.permissionGroup(PermissionConstants.MICROPHONE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.AudioRecordBridge.resume.6
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    BridgeCallback bridgeCallback = callback;
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty("errMsg", AudioRecordBridge.ERROR_MSG_A10011);
                    RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject3);
                    bridgeCallback.sendFailResponse(jsonObject3);
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    recorderClient.resumeRecording();
                    callback.sendSuccessResponse();
                }
            }).request();
            return;
        }
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty("errMsg", ERROR_MSG_A10008);
        RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject3);
        callback.sendFailResponse(jsonObject3);
    }

    @ActionFilter("audioRecordStart")
    @ThreadType(ExecutorType.UI)
    public final void start(@BindingNode(App.class) final App app, @BindingParam(longDefault = 60000, value = {"duration"}) long duration, @BindingParam(intDefault = 8000, value = {"sampleRate"}) final int sampleRate, @BindingParam(intDefault = 2, value = {"numberOfChannels"}) final int numberOfChannels, @BindingParam(intDefault = 48000, value = {"encodeBitRate"}) final int encodeBitRate, @BindingParam(stringDefault = RecorderConstants.FORMAT_AAC, value = {"format"}) String format, @BindingParam(stringDefault = "auto", value = {"audioSource"}) final String audioSource, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(format, "format");
        Intrinsics.h(audioSource, "audioSource");
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        RecorderUtils recorderUtils = RecorderUtils.INSTANCE;
        if (!recorderUtils.checkSampleRate(sampleRate)) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", "Invalid sampleRate \"" + sampleRate + "\", sampleRate should be one of " + TmcGsonUtilsKt.toJson(recorderUtils.getAvailableSampleRate()) + ": A10002");
            recorderUtils.dispatchOnErrorListener(app, jsonObject2);
            callback.sendFailResponse(jsonObject2);
            return;
        }
        if (!recorderUtils.checkChannels(numberOfChannels)) {
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("errMsg", "Invalid numberOfChannels \"" + numberOfChannels + "\", numberOfChannels should be one of " + TmcGsonUtilsKt.toJson(recorderUtils.getAvailableChannels()) + ": A10003");
            recorderUtils.dispatchOnErrorListener(app, jsonObject3);
            callback.sendFailResponse(jsonObject3);
            return;
        }
        if (!recorderUtils.checkEncodeBitRate(sampleRate, encodeBitRate)) {
            JsonObject jsonObject4 = new JsonObject();
            jsonObject4.addProperty("errMsg", "Invalid encodeBitRate \"" + encodeBitRate + "\", encodeBitRate should be greater than " + recorderUtils.getEncodeBitRateMin(sampleRate) + " and less than " + recorderUtils.getEncodeBitRateMax(sampleRate) + " : A10004");
            recorderUtils.dispatchOnErrorListener(app, jsonObject4);
            callback.sendFailResponse(jsonObject4);
            return;
        }
        if (!recorderUtils.checkRecordingFormat(format)) {
            JsonObject jsonObject5 = new JsonObject();
            jsonObject5.addProperty("errMsg", "Invalid format \"" + format + "\", format should be one of " + TmcGsonUtilsKt.toJson(recorderUtils.getAvailableRecordingFormat()) + " : A10005");
            recorderUtils.dispatchOnErrorListener(app, jsonObject5);
            callback.sendFailResponse(jsonObject5);
            return;
        }
        if (!recorderUtils.checkAudioSources(audioSource)) {
            JsonObject jsonObject6 = new JsonObject();
            jsonObject6.addProperty("errMsg", "Invalid audioSource \"" + audioSource + "\", audioSource should be one of " + TmcGsonUtilsKt.toJson(recorderUtils.getAvailableAudioSources()) + " : A10006");
            recorderUtils.dispatchOnErrorListener(app, jsonObject6);
            callback.sendFailResponse(jsonObject6);
            return;
        }
        if (duration < 0 || duration > 600000) {
            JsonObject jsonObject7 = new JsonObject();
            jsonObject7.addProperty("errMsg", "Invalid duration " + duration + ", duration should be between 0 and 600000 : A10007");
            recorderUtils.dispatchOnErrorListener(app, jsonObject7);
            callback.sendFailResponse(jsonObject7);
            return;
        }
        HashMap<String, RecorderClient> recorderClientCache = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getRecorderClientCache();
        RecorderClient recorderClientCreateAudioClient = recorderClientCache.get(app.getAppId());
        if (recorderClientCreateAudioClient == null) {
            recorderClientCreateAudioClient = recorderUtils.createAudioClient(app, format);
            String appId = app.getAppId();
            Intrinsics.g(appId, "app.appId");
            recorderClientCache.put(appId, recorderClientCreateAudioClient);
        }
        Intrinsics.g(recorderClientCreateAudioClient, "recorderClientCache[app.… = this\n                }");
        recorderClientCreateAudioClient.setMaxDuration(duration);
        if (!recorderClientCreateAudioClient.isStopped()) {
            JsonObject jsonObject8 = new JsonObject();
            jsonObject8.addProperty("errMsg", ERROR_MSG_A10008);
            recorderUtils.dispatchOnErrorListener(app, jsonObject8);
            callback.sendFailResponse(jsonObject8);
            return;
        }
        final File fileProvideRecordFile = recorderUtils.provideRecordFile(app, format);
        if (fileProvideRecordFile != null) {
            final RecorderClient recorderClient = recorderClientCreateAudioClient;
            PermissionUtils.permissionGroup(PermissionConstants.MICROPHONE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.AudioRecordBridge.start.16
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    FileExtKt.getDelete(fileProvideRecordFile);
                    BridgeCallback bridgeCallback = callback;
                    JsonObject jsonObject9 = new JsonObject();
                    jsonObject9.addProperty("errMsg", AudioRecordBridge.ERROR_MSG_A10011);
                    RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject9);
                    bridgeCallback.sendFailResponse(jsonObject9);
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    RecorderClient recorderClient2 = recorderClient;
                    String absolutePath = fileProvideRecordFile.getAbsolutePath();
                    Intrinsics.g(absolutePath, "recordFile.absolutePath");
                    recorderClient2.startRecording(absolutePath, RecorderUtils.INSTANCE.convertKeyToAudioSource(audioSource), numberOfChannels, sampleRate, encodeBitRate);
                    callback.sendSuccessResponse();
                }
            }).request();
        } else {
            JsonObject jsonObject9 = new JsonObject();
            jsonObject9.addProperty("errMsg", "create record file fail : A10010");
            recorderUtils.dispatchOnErrorListener(app, jsonObject9);
            callback.sendFailResponse(jsonObject9);
        }
    }

    @ActionFilter("audioRecordStop")
    @ThreadType(ExecutorType.UI)
    public final void stop(@BindingNode(App.class) final App app, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_A10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        final RecorderClient recorderClient = ((AudioRecordCache) app.getData(AudioRecordCache.class, true)).getRecorderClientCache().get(app.getAppId());
        if (recorderClient != null && !recorderClient.isStopped()) {
            PermissionUtils.permissionGroup(PermissionConstants.MICROPHONE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.AudioRecordBridge.stop.4
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    BridgeCallback bridgeCallback = callback;
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("errMsg", AudioRecordBridge.ERROR_MSG_A10011);
                    RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject2);
                    bridgeCallback.sendFailResponse(jsonObject2);
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    recorderClient.stopRecording();
                    callback.sendSuccessResponse();
                }
            }).request();
            return;
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("errMsg", ERROR_MSG_A10012);
        RecorderUtils.INSTANCE.dispatchOnErrorListener(app, jsonObject2);
        callback.sendFailResponse(jsonObject2);
    }
}
