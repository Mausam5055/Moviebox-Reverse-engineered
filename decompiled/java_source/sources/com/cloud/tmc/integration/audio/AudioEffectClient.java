package com.cloud.tmc.integration.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.network.a;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.google.gson.JsonObject;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 /2\u00020\u0001:\u0002/0B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\"\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00032\b\u0010 \u001a\u0004\u0018\u00010\u0003H\u0002J \u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u001c\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010\u0003H\u0002J\u001a\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010&\u001a\u00020\u0017J\u000e\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)J*\u0010*\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00032\b\u0010+\u001a\u0004\u0018\u00010,2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010.\u001a\u00020\u0017R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u00061"}, d2 = {"Lcom/cloud/tmc/integration/audio/AudioEffectClient;", "", "mAppId", "", "size", "", "(Ljava/lang/String;I)V", "isAPPPause", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getMAppId", "()Ljava/lang/String;", "setMAppId", "(Ljava/lang/String;)V", "mPlayConfigMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;", "mSoundPool", "Landroid/media/SoundPool;", "getSize", "()I", "setSize", "(I)V", PushConstants.PROVIDER_FIELD_DESTROY, "", "id", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "downloadAndLoad", "context", "Landroid/content/Context;", "pc", "getLocalSrc", "path", "getOption", "optionName", "getStoreKVSrc", "key", MediaItem.MUSIC_FLOAT_STATE_PLAY, "releaseAll", "setAppPause", "isPause", "", "setOption", "option", "Lcom/google/gson/JsonObject;", "stop", "stopAll", "Companion", "PlayConfig", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AudioEffectClient {
    private static final String ATTR_PRIORITY = "priority";
    private static final String ATTR_RATE = "rate";
    private static final String ATTR_SRC = "src";
    private static final String ATTR_VOLUME = "volume";
    private static final int DEFAULT_MAX_STREAM = 1;
    private static final int MAX_STREAM = 5;
    private static final String TAG = "AudioEffectClient";
    private AtomicBoolean isAPPPause;
    private String mAppId;
    private ConcurrentHashMap<String, PlayConfig> mPlayConfigMap;
    private SoundPool mSoundPool;
    private int size;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,J\b\u0010-\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010 \u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000b\"\u0004\b\"\u0010\rR\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0006\"\u0004\b%\u0010\u0004R\u001e\u0010&\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b'\u0010\u001c\"\u0004\b(\u0010\u001e¨\u0006."}, d2 = {"Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;", "", "id", "", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "leftVolume", "", "getLeftVolume", "()F", "setLeftVolume", "(F)V", "loop", "", "getLoop", "()I", "setLoop", "(I)V", "priority", "getPriority", "setPriority", AudioEffectClient.ATTR_RATE, "getRate", "setRate", "resId", "getResId", "()Ljava/lang/Integer;", "setResId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "rightVolume", "getRightVolume", "setRightVolume", AudioEffectClient.ATTR_SRC, "getSrc", "setSrc", "streamId", "getStreamId", "setStreamId", "convertParam", "", "jsonObject", "Lcom/google/gson/JsonObject;", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PlayConfig {
        private String id;
        private float leftVolume;
        private int loop;
        private int priority;
        private float rate;
        private Integer resId;
        private float rightVolume;
        private String src;
        private Integer streamId;

        public PlayConfig(String id2) {
            Intrinsics.h(id2, "id");
            this.id = id2;
            this.leftVolume = 1.0f;
            this.rightVolume = 1.0f;
            this.rate = 1.0f;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final boolean convertParam(JsonObject jsonObject) {
            String str;
            if (jsonObject != null) {
                for (String str2 : jsonObject.keySet()) {
                    if (str2 != null) {
                        switch (str2.hashCode()) {
                            case -1165461084:
                                if (!str2.equals("priority")) {
                                    continue;
                                } else {
                                    int asInt = jsonObject.get(str2).getAsInt();
                                    if (asInt < 0) {
                                        return false;
                                    }
                                    this.priority = asInt;
                                }
                                break;
                            case -810883302:
                                if (!str2.equals(AudioEffectClient.ATTR_VOLUME)) {
                                    continue;
                                } else {
                                    float asFloat = jsonObject.get(str2).getAsFloat();
                                    if (asFloat < 0.0f || asFloat > 1.0f) {
                                        return false;
                                    }
                                    this.leftVolume = jsonObject.get(str2).getAsFloat();
                                    this.rightVolume = jsonObject.get(str2).getAsFloat();
                                }
                                break;
                            case 114148:
                                if (str2.equals(AudioEffectClient.ATTR_SRC)) {
                                    this.src = jsonObject.get(str2).getAsString();
                                }
                                break;
                            case 3493088:
                                if (!str2.equals(AudioEffectClient.ATTR_RATE)) {
                                    continue;
                                } else {
                                    float asFloat2 = jsonObject.get(str2).getAsFloat();
                                    if (asFloat2 < 0.5f || asFloat2 > 2.0f) {
                                        return false;
                                    }
                                    this.rate = asFloat2;
                                }
                                break;
                        }
                    }
                }
            }
            String str3 = this.src;
            return (str3 == null || str3.length() == 0 || (str = this.src) == null || !StringsKt.W(str, "http", false, 2, null)) ? false : true;
        }

        public final String getId() {
            return this.id;
        }

        public final float getLeftVolume() {
            return this.leftVolume;
        }

        public final int getLoop() {
            return this.loop;
        }

        public final int getPriority() {
            return this.priority;
        }

        public final float getRate() {
            return this.rate;
        }

        public final Integer getResId() {
            return this.resId;
        }

        public final float getRightVolume() {
            return this.rightVolume;
        }

        public final String getSrc() {
            return this.src;
        }

        public final Integer getStreamId() {
            return this.streamId;
        }

        public final void setId(String str) {
            Intrinsics.h(str, "<set-?>");
            this.id = str;
        }

        public final void setLeftVolume(float f11) {
            this.leftVolume = f11;
        }

        public final void setLoop(int i11) {
            this.loop = i11;
        }

        public final void setPriority(int i11) {
            this.priority = i11;
        }

        public final void setRate(float f11) {
            this.rate = f11;
        }

        public final void setResId(Integer num) {
            this.resId = num;
        }

        public final void setRightVolume(float f11) {
            this.rightVolume = f11;
        }

        public final void setSrc(String str) {
            this.src = str;
        }

        public final void setStreamId(Integer num) {
            this.streamId = num;
        }

        public String toString() {
            return "PlayConfig(id='" + this.id + "', loop=" + this.loop + ", leftVolume=" + this.leftVolume + ", rightVolume=" + this.rightVolume + ", src=" + this.src + ", rate=" + this.rate + ", priority=" + this.priority + ", resId=" + this.resId + ", streamId=" + this.streamId + ")";
        }
    }

    public AudioEffectClient(String mAppId, int i11) {
        Intrinsics.h(mAppId, "mAppId");
        this.mAppId = mAppId;
        this.size = i11;
        this.isAPPPause = new AtomicBoolean(false);
        this.mPlayConfigMap = new ConcurrentHashMap<>();
        this.mSoundPool = new SoundPool.Builder().setMaxStreams(RangesKt.i(this.size, 5)).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).build()).build();
    }

    public /* synthetic */ AudioEffectClient(String str, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i12 & 2) != 0 ? 1 : i11);
    }

    private final void downloadAndLoad(final Context context, final PlayConfig pc2, final BridgeCallback callback) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(jCurrentTimeMillis);
        String string = sb2.toString();
        final String src = pc2.getSrc();
        if (src == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        List listS0 = StringsKt.S0(src, new String[]{"/"}, false, 0, 6, null);
        if (!listS0.isEmpty()) {
            string = (String) listS0.get(listS0.size() - 1);
        }
        final String str = ((PathProxy) TmcProxy.get(PathProxy.class)).getBaseMiniAppPath(this.mAppId) + "/temp_data/" + string;
        FileUtils.createOrExistsFile(str);
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(this.mAppId, pc2.getSrc(), str, new HashMap(), null, new PackageDownloadCallback() { // from class: com.cloud.tmc.integration.audio.AudioEffectClient.downloadAndLoad.1
            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
            public void onCancel(String url, String callbackId) {
                TmcLogger.e(AudioEffectClient.TAG, url + " cancel request.");
                BridgeCallback bridgeCallback = callback;
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            }

            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
            public void onFailed(String url, String errorCode, String errorMsg, IOException e11, String callbackId) {
                Intrinsics.h(errorCode, "errorCode");
                Intrinsics.h(e11, "e");
                TmcLogger.e(AudioEffectClient.TAG, errorMsg);
                BridgeCallback bridgeCallback = callback;
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            }

            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
            public void onFinish(String url, String callbackId) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, this.getMAppId(), src, str);
                PlayConfig playConfig = pc2;
                SoundPool soundPool = this.mSoundPool;
                playConfig.setResId(soundPool != null ? Integer.valueOf(soundPool.load(str, pc2.getPriority())) : null);
                BridgeCallback bridgeCallback = callback;
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse();
                }
            }

            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
            public void onPrepare(String url, String callbackId) {
            }

            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
            public void onProgress(String url, int progress, String callbackId) {
            }

            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
            public /* synthetic */ void progressUpdate(String str2, int i11, String str3, long j11, long j12) {
                a.a(this, str2, i11, str3, j11, j12);
            }
        });
    }

    private final String getLocalSrc(String path) {
        IResourceProcessor iResourceProcessor;
        File file;
        if (path == null || path.length() == 0) {
            return null;
        }
        if ((StringsKt.W(path, "http", false, 2, null) && !StringsKt.c0(path, ".miniapp.transsion.com", false, 2, null)) || (iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class)) == null || (file = iResourceProcessor.get(path, this.mAppId)) == null) {
            return null;
        }
        return file.getAbsolutePath();
    }

    private final String getStoreKVSrc(Context context, String key) {
        String string;
        if (key != null && key.length() != 0 && (string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, this.mAppId, key)) != null) {
            if (new File(string).exists()) {
                return string;
            }
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, this.mAppId, key);
        }
        return null;
    }

    public static /* synthetic */ void play$default(AudioEffectClient audioEffectClient, String str, BridgeCallback bridgeCallback, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bridgeCallback = null;
        }
        audioEffectClient.play(str, bridgeCallback);
    }

    public final synchronized void destroy(String id2, BridgeCallback callback) {
        try {
            Intrinsics.h(id2, "id");
            try {
                TmcLogger.e(TAG, "destroy !" + id2);
                PlayConfig playConfigRemove = this.mPlayConfigMap.remove(id2);
                if (playConfigRemove == null) {
                    if (callback != null) {
                        callback.sendFailResponse();
                    }
                    return;
                }
                Integer resId = playConfigRemove.getResId();
                if (resId == null) {
                    if (callback != null) {
                        callback.sendFailResponse();
                    }
                    return;
                }
                SoundPool soundPool = this.mSoundPool;
                if (soundPool != null) {
                    soundPool.unload(resId.intValue());
                }
                if (callback != null) {
                    callback.sendSuccessResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                if (callback != null) {
                    callback.sendFailResponse();
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public final String getMAppId() {
        return this.mAppId;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final synchronized void getOption(String id2, String optionName, BridgeCallback callback) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(optionName, "optionName");
        try {
            PlayConfig playConfig = this.mPlayConfigMap.get(id2);
            if (playConfig == null) {
                if (callback != null) {
                    callback.sendFailResponse();
                }
                return;
            }
            JsonObject jsonObject = new JsonObject();
            switch (optionName.hashCode()) {
                case -1165461084:
                    if (optionName.equals("priority")) {
                        jsonObject.addProperty("priority", Integer.valueOf(playConfig.getPriority()));
                    }
                    break;
                case -810883302:
                    if (optionName.equals(ATTR_VOLUME)) {
                        jsonObject.addProperty(ATTR_VOLUME, Float.valueOf(playConfig.getLeftVolume()));
                    }
                    break;
                case 114148:
                    if (optionName.equals(ATTR_SRC)) {
                        jsonObject.addProperty(ATTR_SRC, playConfig.getSrc());
                    }
                    break;
                case 3493088:
                    if (optionName.equals(ATTR_RATE)) {
                        jsonObject.addProperty(ATTR_RATE, Float.valueOf(playConfig.getRate()));
                    }
                    break;
            }
            jsonObject.addProperty("id", id2);
            jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.TRUE);
            if (callback != null) {
                callback.sendJSONResponse(jsonObject);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    public final int getSize() {
        return this.size;
    }

    public final synchronized void play(String id2, BridgeCallback callback) {
        Intrinsics.h(id2, "id");
        try {
            if (this.isAPPPause.get()) {
                if (callback != null) {
                    callback.sendFailResponse();
                }
                TmcLogger.e(TAG, "app is on background, must not play!");
                return;
            }
            PlayConfig playConfig = this.mPlayConfigMap.get(id2);
            if (playConfig == null) {
                if (callback != null) {
                    callback.sendFailResponse();
                }
                return;
            }
            Integer resId = playConfig.getResId();
            if (resId == null) {
                if (callback != null) {
                    callback.sendFailResponse();
                }
            } else {
                SoundPool soundPool = this.mSoundPool;
                playConfig.setStreamId(soundPool != null ? Integer.valueOf(soundPool.play(resId.intValue(), playConfig.getLeftVolume(), playConfig.getRightVolume(), playConfig.getPriority(), playConfig.getLoop(), playConfig.getRate())) : null);
                if (callback != null) {
                    callback.sendSuccessResponse();
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    public final synchronized void releaseAll() {
        try {
            TmcLogger.e(TAG, "releaseAll !");
            this.mPlayConfigMap.clear();
            SoundPool soundPool = this.mSoundPool;
            if (soundPool != null) {
                soundPool.release();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void setAppPause(boolean isPause) {
        this.isAPPPause.set(isPause);
    }

    public final void setMAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.mAppId = str;
    }

    public final synchronized void setOption(Context context, String id2, JsonObject option, BridgeCallback callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(id2, "id");
        try {
            PlayConfig playConfig = this.mPlayConfigMap.get(id2);
            if (playConfig != null) {
                if (callback != null) {
                    callback.sendFailResponse();
                }
                TmcLogger.e(TAG, id2 + " has existed!!!");
                return;
            }
            if (playConfig == null) {
                playConfig = new PlayConfig(id2);
                this.mPlayConfigMap.put(id2, playConfig);
            }
            if (!playConfig.convertParam(option)) {
                if (callback != null) {
                    callback.sendFailResponse();
                }
                TmcLogger.e(TAG, id2 + " convertParam error.");
                return;
            }
            String localSrc = getLocalSrc(playConfig.getSrc());
            if ((localSrc != null && localSrc.length() != 0) || ((localSrc = getStoreKVSrc(context, playConfig.getSrc())) != null && localSrc.length() != 0)) {
                SoundPool soundPool = this.mSoundPool;
                playConfig.setResId(soundPool != null ? Integer.valueOf(soundPool.load(localSrc, playConfig.getPriority())) : null);
                if (callback != null) {
                    callback.sendSuccessResponse();
                }
                return;
            }
            downloadAndLoad(context, playConfig, callback);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    public final void setSize(int i11) {
        this.size = i11;
    }

    public final synchronized void stop(String id2, BridgeCallback callback) {
        try {
            Intrinsics.h(id2, "id");
            try {
                PlayConfig playConfig = this.mPlayConfigMap.get(id2);
                if (playConfig == null) {
                    if (callback != null) {
                        callback.sendFailResponse();
                    }
                    return;
                }
                Integer streamId = playConfig.getStreamId();
                if (streamId == null) {
                    if (callback != null) {
                        callback.sendFailResponse();
                    }
                    return;
                }
                SoundPool soundPool = this.mSoundPool;
                if (soundPool != null) {
                    soundPool.stop(streamId.intValue());
                }
                if (callback != null) {
                    callback.sendSuccessResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                if (callback != null) {
                    callback.sendFailResponse();
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public final synchronized void stopAll() {
        try {
            SoundPool soundPool = this.mSoundPool;
            if (soundPool != null) {
                soundPool.autoPause();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }
}
