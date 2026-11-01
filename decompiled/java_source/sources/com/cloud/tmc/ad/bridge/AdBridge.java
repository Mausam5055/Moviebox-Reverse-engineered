package com.cloud.tmc.ad.bridge;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.ad.IAdManagerProxy;
import com.cloud.tmc.ad.TrackingManager;
import com.cloud.tmc.ad.athena.PostConstant;
import com.cloud.tmc.ad.bean.AdClickBean;
import com.cloud.tmc.ad.bean.AdExtraBean;
import com.cloud.tmc.ad.bean.AdShowBean;
import com.cloud.tmc.ad.bean.DownUpPointBean;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.ad.bean.response.DataDTO;
import com.cloud.tmc.ad.p000interface.AdFillingEventListener;
import com.cloud.tmc.ad.p000interface.AdShowEventListener;
import com.cloud.tmc.ad.utils.GPSTracker;
import com.cloud.tmc.ad.utils.MitNetUtil;
import com.cloud.tmc.ad.utils.ServicesTimeUtil;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.AESUtils;
import com.cloud.tmc.integration.utils.AdxPreferencesHelper;
import com.cloud.tmc.integration.utils.ApplicationUtil;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.StringUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonObject;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J,\u0010\n\u001a\u00020\u000b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u001c\u0010\u0011\u001a\u00020\u000b2\b\b\u0001\u0010\u0012\u001a\u00020\u00042\b\b\u0001\u0010\u000f\u001a\u00020\u0010H\u0007JP\u0010\u0013\u001a\u00020\u000b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J \u0010\u0017\u001a\u00020\u000b2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J,\u0010\u0018\u001a\u00020\u000b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007JH\u0010\u0019\u001a\u00020\u000b2\b\b\u0001\u0010\u001a\u001a\u00020\u00042\b\b\u0001\u0010\u0014\u001a\u00020\u00042\b\b\u0001\u0010\u001b\u001a\u00020\u00042\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\b\u0001\u0010\r\u001a\u00020\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J,\u0010\u001d\u001a\u00020\u000b2\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\b\u0010\u001f\u001a\u00020\u000bH\u0016J\b\u0010 \u001a\u00020\u000bH\u0016J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0014\u0010#\u001a\u00020\u000b2\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u0004H\u0007J=\u0010%\u001a\u00020\u000b2\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0002\u0010)J8\u0010*\u001a\u00020\u000b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u000e\u0010\t\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/cloud/tmc/ad/bridge/AdBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "EVENT_AD_CLICK", "", "getEVENT_AD_CLICK", "()Ljava/lang/String;", "EVENT_AD_SHOW", "getEVENT_AD_SHOW", "TAG", "closeAd", "", "triggerId", "app", "Lcom/cloud/tmc/integration/structure/App;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "encryptAESBase64", "data", "fillingInterstitial", "adsDTO", "mainImgPath", "logoImgPath", "getAdArguments", "getPersonalization", "getServerUrls", "tag", TrackingKey.TRIGGER_ID, "pointData", "isAppInstalled", "packageName", "onFinalized", "onInitialized", "permit", "", "responseCallback", "responseData", "saveAdFrameworkVersion", "adSdkVersion", "adSdkVersionInt", "", "(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "showInterstitial", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdBridge implements BridgeExtension {
    private final String TAG = "AdBridge";
    private final String EVENT_AD_SHOW = "ad_show";
    private final String EVENT_AD_CLICK = "ad_click";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0030 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x0004, B:7:0x000c, B:9:0x0020, B:12:0x0030, B:14:0x0039), top: B:20:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0039 A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x0004, B:7:0x000c, B:9:0x0020, B:12:0x0030, B:14:0x0039), top: B:20:0x0004 }] */
    @ActionFilter("")
    @ThreadType(ExecutorType.UI)
    public final void closeAd(@BindingParam({TrackingKey.TRIGGER_ID}) String triggerId, @BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (triggerId != null) {
            try {
                if (TextUtils.isEmpty(triggerId) || app == null) {
                    TmcLogger.d(this.TAG, "closeAd -> trigger_id不能为空");
                    if (callback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("errMsg", "trigger_id不能为空");
                        callback.sendFailResponse(jsonObject);
                    }
                } else {
                    TmcLogger.d(this.TAG, "closeAd");
                    ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).close(triggerId, app);
                    if (callback != null) {
                        JsonObject jsonObject2 = new JsonObject();
                        jsonObject2.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                        callback.sendSuccessResponse(jsonObject2);
                    }
                }
            } catch (Throwable th2) {
                if (callback != null) {
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty("errMsg", "E:" + th2 + "!!");
                    callback.sendFailResponse(jsonObject3);
                }
            }
        } else {
            TmcLogger.d(this.TAG, "closeAd -> trigger_id不能为空");
            if (callback != null) {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty("errMsg", "trigger_id不能为空");
                callback.sendFailResponse(jsonObject4);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0035 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:3:0x000c, B:5:0x0012, B:9:0x0022, B:11:0x0028, B:14:0x0038, B:16:0x0043, B:17:0x0051, B:13:0x0035), top: B:21:0x000c }] */
    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void encryptAESBase64(@BindingParam({"data"}) String data, @BindingCallback BridgeCallback callback) {
        byte[] bytes;
        Intrinsics.h(data, "data");
        Intrinsics.h(callback, "callback");
        try {
            if (TextUtils.isEmpty(data)) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", "data is empty!!");
                callback.sendFailResponse(jsonObject);
                return;
            }
            String strEncrypt = AESUtils.encrypt(data);
            if (strEncrypt != null) {
                bytes = strEncrypt.getBytes(Charsets.UTF_8);
                Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
                if (bytes == null) {
                    bytes = new byte[0];
                }
            } else {
                bytes = new byte[0];
            }
            String strEncodeToString = Base64.encodeToString(bytes, 2);
            if (TextUtils.isEmpty(strEncodeToString)) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", "encrypt data is empty!!");
                callback.sendFailResponse(jsonObject2);
            } else {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("data", String.valueOf(strEncodeToString));
                callback.sendSuccessResponse(jsonObject3);
            }
        } catch (Throwable th2) {
            JsonObject jsonObject4 = new JsonObject();
            jsonObject4.addProperty("errMsg", "E:" + th2 + "!!");
            callback.sendFailResponse(jsonObject4);
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.UI)
    public final void fillingInterstitial(@BindingParam({TrackingKey.TRIGGER_ID}) String triggerId, @BindingParam({"adsDTO"}) String adsDTO, @BindingParam({"mainImgPath"}) String mainImgPath, @BindingParam({"logoImgPath"}) String logoImgPath, @BindingNode(App.class) App app, @BindingCallback final BridgeCallback callback) {
        try {
            if (app == null) {
                TmcLogger.d(this.TAG, "fillingInterstitial -> 系统错误");
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "系统错误");
                    jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                    jsonObject.addProperty("filling_result", (Number) 2);
                    callback.sendSuccessResponse(jsonObject);
                    return;
                }
                return;
            }
            if (triggerId == null || TextUtils.isEmpty(triggerId) || adsDTO == null || TextUtils.isEmpty(adsDTO)) {
                TmcLogger.d(this.TAG, "fillingInterstitial -> trigger_id或adsDTO不能为空");
                if (callback != null) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("errMsg", "trigger_id或adsDTO不能为空");
                    jsonObject2.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                    jsonObject2.addProperty("filling_result", (Number) 2);
                    callback.sendSuccessResponse(jsonObject2);
                    return;
                }
                return;
            }
            AdsDTO adsDTO2 = (AdsDTO) GsonUtils.fromJson(adsDTO, AdsDTO.class);
            if (adsDTO2 != null) {
                IResourceProcessor iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
                File file = iResourceProcessor.get(mainImgPath, app.getAppId());
                String absolutePath = file != null ? file.getAbsolutePath() : null;
                File file2 = iResourceProcessor.get(logoImgPath, app.getAppId());
                ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).fillingInterstitial(triggerId, adsDTO2, absolutePath, file2 != null ? file2.getAbsolutePath() : null, app, new AdFillingEventListener() { // from class: com.cloud.tmc.ad.bridge.AdBridge$fillingInterstitial$1$1
                    @Override // com.cloud.tmc.ad.p000interface.AdFillingEventListener
                    public void fillingResult(String triggerId2, boolean success) {
                        Intrinsics.h(triggerId2, "triggerId");
                        int i11 = success ? 1 : 2;
                        TmcLogger.d(this.this$0.TAG, "fillingInterstitial -> result: " + i11);
                        BridgeCallback bridgeCallback = callback;
                        if (bridgeCallback != null) {
                            JsonObject jsonObject3 = new JsonObject();
                            jsonObject3.addProperty(TrackingKey.TRIGGER_ID, triggerId2);
                            jsonObject3.addProperty("filling_result", Integer.valueOf(i11));
                            bridgeCallback.sendSuccessResponse(jsonObject3);
                        }
                    }
                });
                return;
            }
            if (callback != null) {
                JsonObject jsonObject3 = new JsonObject();
                TmcLogger.d(this.TAG, "fillingInterstitial -> adsDTO解析失败");
                jsonObject3.addProperty("errMsg", "adsDTO解析失败");
                jsonObject3.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                jsonObject3.addProperty("filling_result", (Number) 2);
                callback.sendSuccessResponse(jsonObject3);
            }
        } catch (Throwable unused) {
            if (callback != null) {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty("errMsg", "系统错误");
                jsonObject4.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                jsonObject4.addProperty("filling_result", (Number) 2);
                callback.sendSuccessResponse(jsonObject4);
            }
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getAdArguments(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        try {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(PostConstant.getType()));
            jsonObject.addProperty("brand", PostConstant.getBrand());
            jsonObject.addProperty("model", PostConstant.getModel());
            jsonObject.addProperty("maker", PostConstant.getMake());
            jsonObject.addProperty("osType", "1");
            jsonObject.addProperty("osVersion", PostConstant.getOsVersion());
            jsonObject.addProperty("networkConnectionType", Integer.valueOf(MitNetUtil.INSTANCE.getNetworkType(qk.a.a()).ordinal()));
            if (PostConstant.getMcc() == null || PostConstant.getMnc() == null) {
                jsonObject.addProperty("operatorType", "");
            } else {
                jsonObject.addProperty("operatorType", PostConstant.getMcc() + PostConstant.getMnc());
            }
            DeviceUtil deviceUtil = DeviceUtil.INSTANCE;
            jsonObject.addProperty("ipAddress", deviceUtil.getIp());
            jsonObject.addProperty(UrlKt.KEY_MINI_GAID, DeviceUtil.getGAId());
            jsonObject.addProperty("screenWidth", Integer.valueOf(PostConstant.getScreenWidth()));
            jsonObject.addProperty("screenHeight", Integer.valueOf(PostConstant.getScreenHeight()));
            jsonObject.addProperty("screenDensity", Integer.valueOf(PostConstant.getScreenDensity()));
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("baseStation", deviceUtil.getGsmCellLocation());
            jsonObject2.addProperty("latitude", Double.valueOf(GPSTracker.getLatitude()));
            jsonObject2.addProperty("longitude", Double.valueOf(GPSTracker.getLongitude()));
            jsonObject2.addProperty("coordTime", Long.valueOf(GPSTracker.getCoordTime()));
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("installTime", ApplicationUtil.getInstallTime());
            jsonObject3.addProperty("userAgent", PostConstant.getUserAgent());
            if (callback != null) {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.add("device", jsonObject);
                jsonObject4.add("user", jsonObject2);
                jsonObject4.add(MimeTypes.BASE_TYPE_APPLICATION, jsonObject3);
                callback.sendSuccessResponse(jsonObject4);
            }
        } catch (Throwable th2) {
            if (callback != null) {
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.addProperty("errMsg", "E:" + th2 + "!!");
                callback.sendFailResponse(jsonObject5);
            }
        }
    }

    public final String getEVENT_AD_CLICK() {
        return this.EVENT_AD_CLICK;
    }

    public final String getEVENT_AD_SHOW() {
        return this.EVENT_AD_SHOW;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0032 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0019, B:11:0x0032, B:13:0x003b), top: B:19:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x003b A[Catch: all -> 0x0030, TRY_LEAVE, TryCatch #0 {all -> 0x0030, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0019, B:11:0x0032, B:13:0x003b), top: B:19:0x0004 }] */
    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getPersonalization(@BindingParam({TrackingKey.TRIGGER_ID}) String triggerId, @BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (triggerId != null) {
            try {
                if (TextUtils.isEmpty(triggerId)) {
                    TmcLogger.d(this.TAG, "getPersonalization -> trigger_id不能为空");
                    if (callback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("errMsg", "trigger_id不能为空");
                        callback.sendFailResponse(jsonObject);
                    }
                } else {
                    TmcLogger.d(this.TAG, "getPersonalization");
                    int gaidStatus = DeviceUtil.INSTANCE.getGaidStatus();
                    if (callback != null) {
                        JsonObject jsonObject2 = new JsonObject();
                        jsonObject2.addProperty("turnOffPerAds", Integer.valueOf(gaidStatus));
                        jsonObject2.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                        callback.sendSuccessResponse(jsonObject2);
                    }
                }
            } catch (Throwable th2) {
                if (callback != null) {
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty("errMsg", "E: " + th2 + "!!");
                    callback.sendFailResponse(jsonObject3);
                }
            }
        } else {
            TmcLogger.d(this.TAG, "getPersonalization -> trigger_id不能为空");
            if (callback != null) {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty("errMsg", "trigger_id不能为空");
                callback.sendFailResponse(jsonObject4);
            }
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getServerUrls(@BindingParam({"tag"}) String tag, @BindingParam({"adsDTO"}) String adsDTO, @BindingParam({TrackingKey.TRIGGER_ID}) String trigger_id, @BindingParam({"pointData"}) String pointData, @BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        AdsDTO adsDTO2;
        List<String> listCreateAdmExposureServerUrls;
        Intrinsics.h(tag, "tag");
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(trigger_id, "trigger_id");
        Intrinsics.h(app, "app");
        if (StringUtils.isEmpty(tag)) {
            TraceLog.i(this.TAG, "tag is empty");
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", "tag is empty");
                callback.sendFailResponse(jsonObject);
                return;
            }
            return;
        }
        if (StringUtils.isEmpty(adsDTO)) {
            TraceLog.i(this.TAG, "adsDTO is empty");
            if (callback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", "adsDTO is empty");
                callback.sendFailResponse(jsonObject2);
                return;
            }
            return;
        }
        try {
            if (!Intrinsics.c(this.EVENT_AD_SHOW, tag)) {
                if (!Intrinsics.c(this.EVENT_AD_CLICK, tag) || (adsDTO2 = (AdsDTO) GsonUtils.fromJson(adsDTO, AdsDTO.class)) == null) {
                    return;
                }
                adsDTO2.setClickid(trigger_id);
                if (TextUtils.isEmpty(adsDTO2.getAdm())) {
                    TrackingManager trackingManager = TrackingManager.INSTANCE;
                    ArrayList<String> clickTrackingUrls = adsDTO2.getClickTrackingUrls();
                    String appId = app.getAppId();
                    Intrinsics.g(appId, "app.appId");
                    String sDKVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion();
                    Intrinsics.g(sDKVersion, "get(\n                   …             ).sdkVersion");
                    List<String> listCreatePicClickServerUrls = trackingManager.createPicClickServerUrls(clickTrackingUrls, adsDTO2, new AdExtraBean(appId, false, sDKVersion), adsDTO2.getClickid(), (DownUpPointBean) GsonUtils.fromJson(pointData, DownUpPointBean.class));
                    if (callback != null) {
                        JsonObject jsonObject3 = new JsonObject();
                        jsonObject3.addProperty("ad_click", GsonUtils.toJson(listCreatePicClickServerUrls));
                        callback.sendSuccessResponse(jsonObject3);
                        return;
                    }
                    return;
                }
                return;
            }
            AdsDTO adsDTO3 = (AdsDTO) GsonUtils.fromJson(adsDTO, AdsDTO.class);
            if (adsDTO3 != null) {
                adsDTO3.setClickid(trigger_id);
                Integer imageWidth = adsDTO3.getImageWidth();
                Intrinsics.g(imageWidth, "it.imageWidth");
                int iIntValue = imageWidth.intValue();
                Integer imageHeight = adsDTO3.getImageHeight();
                Intrinsics.g(imageHeight, "it.imageHeight");
                DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, iIntValue, imageHeight.intValue());
                new ArrayList();
                if (TextUtils.isEmpty(adsDTO3.getAdm())) {
                    TrackingManager trackingManager2 = TrackingManager.INSTANCE;
                    List<String> showTrackingUrls = adsDTO3.getShowTrackingUrls();
                    String appId2 = app.getAppId();
                    Intrinsics.g(appId2, "app.appId");
                    String sDKVersion2 = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion();
                    Intrinsics.g(sDKVersion2, "get(\n                   …             ).sdkVersion");
                    listCreateAdmExposureServerUrls = trackingManager2.createPicExposureServerUrls(showTrackingUrls, adsDTO3, new AdExtraBean(appId2, false, sDKVersion2), downUpPointBean);
                } else {
                    listCreateAdmExposureServerUrls = TrackingManager.INSTANCE.createAdmExposureServerUrls(adsDTO3.getShowTrackingUrls());
                }
                if (callback != null) {
                    JsonObject jsonObject4 = new JsonObject();
                    jsonObject4.addProperty("ad_show", GsonUtils.toJson(listCreateAdmExposureServerUrls));
                    callback.sendSuccessResponse(jsonObject4);
                }
            }
        } catch (Exception e11) {
            TraceLog.e(this.TAG, "reportAdLog  parse data fail: " + e11);
            if (callback != null) {
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.addProperty("errMsg", "reportAdLog  parse data fail: " + e11);
                callback.sendFailResponse(jsonObject5);
            }
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void isAppInstalled(@BindingParam({"packageName"}) String packageName, @BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        AppContext appContext;
        if (TextUtils.isEmpty(packageName)) {
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("popularize_app_install_status", "1");
                callback.sendSuccessResponse(jsonObject);
                return;
            }
            return;
        }
        PackageInfo packageInfo = null;
        if (((app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext()) == null) {
            if (callback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("popularize_app_install_status", TmcConstants.COLD_OPEN_TYPE);
                callback.sendSuccessResponse(jsonObject2);
                return;
            }
            return;
        }
        try {
            AppContext appContext2 = app.getAppContext();
            Intrinsics.e(appContext2);
            Context context = appContext2.getContext();
            Intrinsics.e(context);
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                Intrinsics.e(packageName);
                packageInfo = packageManager.getPackageInfo(packageName, 0);
            }
            if (packageInfo == null) {
                if (callback != null) {
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty("popularize_app_install_status", "3");
                    callback.sendSuccessResponse(jsonObject3);
                    return;
                }
                return;
            }
            if (callback != null) {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty("popularize_app_install_status", "2");
                callback.sendSuccessResponse(jsonObject4);
            }
        } catch (Exception unused) {
            if (callback != null) {
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.addProperty("popularize_app_install_status", TmcConstants.COLD_OPEN_TYPE);
                callback.sendSuccessResponse(jsonObject5);
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public /* bridge */ /* synthetic */ Permission permit() {
        return (Permission) m234permit();
    }

    /* JADX INFO: renamed from: permit, reason: collision with other method in class */
    public Void m234permit() {
        return null;
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void responseCallback(@BindingParam({"responseData"}) String responseData) {
        if (responseData != null) {
            try {
                DataDTO dataDTO = (DataDTO) GsonUtils.fromJson(responseData, DataDTO.class);
                if (dataDTO != null) {
                    Intrinsics.g(dataDTO, "fromJson(it, DataDTO::class.java)");
                    ServicesTimeUtil.saveServicesTime(dataDTO);
                }
            } catch (Exception e11) {
                TmcLogger.e(this.TAG, "responseCallback parse responseData fail: " + e11);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0033 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:4:0x0004, B:7:0x000c, B:9:0x002d, B:12:0x0033, B:14:0x003c), top: B:20:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x003c A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:4:0x0004, B:7:0x000c, B:9:0x002d, B:12:0x0033, B:14:0x003c), top: B:20:0x0004 }] */
    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void saveAdFrameworkVersion(@BindingParam({Constants.AD_FRAMEWORK_VERSION}) String adSdkVersion, @BindingParam({Constants.AD_FRAMEWORK_VERSION_INT}) Long adSdkVersionInt, @BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (adSdkVersion != null) {
            try {
                if (TextUtils.isEmpty(adSdkVersion) || adSdkVersionInt == null) {
                    TmcLogger.d(this.TAG, "saveAdFrameworkVersion -> ad_sdk_version/ad_sdk_version_int不能为空");
                    if (callback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("errMsg", "ad_sdk_version/ad_sdk_version_int不能为空");
                        callback.sendFailResponse(jsonObject);
                    }
                } else {
                    TmcLogger.d(this.TAG, "saveAdFrameworkVersion");
                    AdxPreferencesHelper adxPreferencesHelper = AdxPreferencesHelper.INSTANCE;
                    adxPreferencesHelper.getInstance().p(Constants.AD_FRAMEWORK_VERSION, adSdkVersion);
                    adxPreferencesHelper.getInstance().o(Constants.AD_FRAMEWORK_VERSION_INT, adSdkVersionInt.longValue());
                    if (callback != null) {
                        callback.sendSuccessResponse();
                    }
                }
            } catch (Throwable th2) {
                if (callback != null) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("errMsg", "E:" + th2 + "!!");
                    callback.sendFailResponse(jsonObject2);
                }
            }
        } else {
            TmcLogger.d(this.TAG, "saveAdFrameworkVersion -> ad_sdk_version/ad_sdk_version_int不能为空");
            if (callback != null) {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("errMsg", "ad_sdk_version/ad_sdk_version_int不能为空");
                callback.sendFailResponse(jsonObject3);
            }
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.UI)
    public final void showInterstitial(@BindingParam({TrackingKey.TRIGGER_ID}) String triggerId, @BindingParam({"adsDTO"}) String adsDTO, @BindingNode(App.class) App app, @BindingCallback(isSticky = true) final BridgeCallback callback) {
        if (triggerId != null) {
            try {
                if (!TextUtils.isEmpty(triggerId) && adsDTO != null && !TextUtils.isEmpty(adsDTO) && app != null) {
                    AdsDTO adsDTO2 = (AdsDTO) GsonUtils.fromJson(adsDTO, AdsDTO.class);
                    if (adsDTO2 != null) {
                        ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).showInterstitial(triggerId, app, adsDTO2, new AdShowEventListener() { // from class: com.cloud.tmc.ad.bridge.AdBridge$showInterstitial$1$1
                            @Override // com.cloud.tmc.ad.p000interface.AdShowEventListener
                            public void click(String triggerId2, DownUpPointBean pointBean, String admUrl) {
                                Intrinsics.h(triggerId2, "triggerId");
                                Intrinsics.h(pointBean, "pointBean");
                                TmcLogger.d(this.this$0.TAG, "showInterstitial -> ad_ssp_click");
                                BridgeCallback bridgeCallback = callback;
                                if (bridgeCallback != null) {
                                    JsonObject jsonObject = new JsonObject();
                                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, PostConstant.EVENT_AD_SSP_CLICK);
                                    jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId2);
                                    jsonObject.addProperty("pointData", GsonUtils.toJson(pointBean));
                                    if (admUrl != null) {
                                        jsonObject.addProperty("adUrl", admUrl);
                                    }
                                    bridgeCallback.sendSuccessResponse(jsonObject);
                                }
                            }

                            @Override // com.cloud.tmc.ad.p000interface.AdShowEventListener
                            public void clickHomePage(String triggerId2) {
                                Intrinsics.h(triggerId2, "triggerId");
                                TmcLogger.d(this.this$0.TAG, "showInterstitial -> click_homepage");
                                AdShowEventListener.DefaultImpls.clickHomePage(this, triggerId2);
                                BridgeCallback bridgeCallback = callback;
                                if (bridgeCallback != null) {
                                    JsonObject jsonObject = new JsonObject();
                                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "click_homepage");
                                    jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId2);
                                    bridgeCallback.sendSuccessResponse(jsonObject);
                                }
                            }

                            @Override // com.cloud.tmc.ad.p000interface.AdShowEventListener
                            public void clickPersonalization(String triggerId2) {
                                Intrinsics.h(triggerId2, "triggerId");
                                TmcLogger.d(this.this$0.TAG, "showInterstitial -> click_personalization");
                                AdShowEventListener.DefaultImpls.clickPersonalization(this, triggerId2);
                                BridgeCallback bridgeCallback = callback;
                                if (bridgeCallback != null) {
                                    JsonObject jsonObject = new JsonObject();
                                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "click_personalization");
                                    jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId2);
                                    bridgeCallback.sendSuccessResponse(jsonObject);
                                }
                            }

                            @Override // com.cloud.tmc.ad.p000interface.AdShowEventListener
                            public void closeAd(String triggerId2, AdClickBean adClickBean) {
                                Intrinsics.h(triggerId2, "triggerId");
                                Intrinsics.h(adClickBean, "adClickBean");
                                TmcLogger.d(this.this$0.TAG, "showInterstitial -> closeAd: " + adClickBean);
                                BridgeCallback bridgeCallback = callback;
                                if (bridgeCallback != null) {
                                    JsonObject jsonObject = new JsonObject();
                                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, PostConstant.EVENT_AD_SSP_CLOSE_AD);
                                    jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId2);
                                    jsonObject.addProperty("show_duration", Long.valueOf(adClickBean.getShowDuration()));
                                    jsonObject.addProperty("show_area", adClickBean.getShowArea());
                                    jsonObject.addProperty("show_times", Integer.valueOf(adClickBean.getShowTimes()));
                                    bridgeCallback.sendSuccessResponse(jsonObject);
                                    bridgeCallback.close();
                                }
                            }

                            @Override // com.cloud.tmc.ad.p000interface.AdShowEventListener
                            public void showResult(String triggerId2, boolean success, AdShowBean adShowBean) {
                                Intrinsics.h(triggerId2, "triggerId");
                                Intrinsics.h(adShowBean, "adShowBean");
                                TmcLogger.d(this.this$0.TAG, "showInterstitial -> showResult: " + success + " ; adShowBean: " + adShowBean);
                                BridgeCallback bridgeCallback = callback;
                                if (bridgeCallback != null) {
                                    JsonObject jsonObject = new JsonObject();
                                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, PostConstant.EVENT);
                                    jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId2);
                                    jsonObject.addProperty("image_width", Integer.valueOf(adShowBean.getImageWidth()));
                                    jsonObject.addProperty("image_height", Integer.valueOf(adShowBean.getImageHeight()));
                                    jsonObject.addProperty(TrackingKey.SHOW_TS, Long.valueOf(adShowBean.getShowTs()));
                                    jsonObject.addProperty("is_effective_show", Integer.valueOf(adShowBean.isEffectiveShow()));
                                    jsonObject.addProperty("show_duration", Long.valueOf(adShowBean.getShowDuration()));
                                    jsonObject.addProperty("show_area", adShowBean.getShowArea());
                                    jsonObject.addProperty("show_report_time_type", Integer.valueOf(adShowBean.getShowReportTimeType()));
                                    jsonObject.addProperty("show_times", Integer.valueOf(adShowBean.getShowTimes()));
                                    jsonObject.addProperty("show_result", String.valueOf(success));
                                    jsonObject.addProperty("is_close", String.valueOf(adShowBean.isClose()));
                                    bridgeCallback.sendSuccessResponse(jsonObject);
                                }
                            }
                        });
                        return;
                    }
                    if (callback != null) {
                        TmcLogger.d(this.TAG, "showInterstitial -> adsDTO解析失败");
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("errMsg", "adsDTO解析失败");
                        jsonObject.addProperty(TrackingKey.TRIGGER_ID, triggerId);
                        callback.sendFailResponse(jsonObject);
                        callback.close();
                        return;
                    }
                    return;
                }
            } catch (Throwable th2) {
                if (callback != null) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("errMsg", "E:" + th2 + "!!");
                    callback.sendFailResponse(jsonObject2);
                    callback.close();
                    return;
                }
                return;
            }
        }
        TmcLogger.d(this.TAG, "showInterstitial -> trigger_id或adsDTO不能为空");
        if (callback != null) {
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("errMsg", "trigger_id或adsDTO不能为空");
            callback.sendFailResponse(jsonObject3);
            callback.close();
        }
    }
}
