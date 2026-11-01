package com.cloud.tmc.integration.bridge;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.BridgeResponse;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001'B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\u0011\u001a\u00020\u00122\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u00042\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\b\u0010\u0018\u001a\u00020\u0012H\u0016J\b\u0010\u0019\u001a\u00020\u0012H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016Jy\u0010\u001c\u001a\u00020\u00122\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\"2\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007¢\u0006\u0002\u0010%J*\u0010&\u001a\u00020\u00122\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u00042\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006("}, d2 = {"Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "KEY_RESPONSE_PREFETCHDATA", "", "KEY_RESPONSE_PREFETCH_EXPIRED_TIME", "KEY_RESPONSE_PREFETCH_PREFETCH_TIME", "KEY_RESPONSE_PREFETCH_TOKEN", "KEY_STORAGE_PREFETCH_DATA", "TAG", "getTAG", "()Ljava/lang/String;", "mTempDataMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;", "getMTempDataMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "getPrefetchData", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "prefetchToken", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "prefetchAndSaveToTemp", "url", "method", "requestHeader", "requestParam", "requestTimeout", "", "prefetchExpiredTime", "callbackId", "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "removePrefetchData", "MiniPrefetchData", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrefetchDataBridge implements BridgeExtension {
    private final String TAG = "PrefetchDataBridge";
    private final ConcurrentHashMap<String, MiniPrefetchData> mTempDataMap = new ConcurrentHashMap<>();
    private final String KEY_STORAGE_PREFETCH_DATA = "mini_PrefetchData";
    private final String KEY_RESPONSE_PREFETCHDATA = "prefetchData";
    private final String KEY_RESPONSE_PREFETCH_TOKEN = "prefetchToken";
    private final String KEY_RESPONSE_PREFETCH_EXPIRED_TIME = "expiredTime";
    private final String KEY_RESPONSE_PREFETCH_PREFETCH_TIME = "prefetchTime";

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0007HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "expiredTime", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "callbackId", "", "(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V", "getCallback", "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "setCallback", "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "getCallbackId", "()Ljava/lang/String;", "setCallbackId", "(Ljava/lang/String;)V", "getExpiredTime", "()J", "setExpiredTime", "(J)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class MiniPrefetchData extends BaseBean {
        private BridgeCallback callback;
        private String callbackId;
        private long expiredTime;

        public MiniPrefetchData(long j11, BridgeCallback bridgeCallback, String str) {
            this.expiredTime = j11;
            this.callback = bridgeCallback;
            this.callbackId = str;
        }

        public static /* synthetic */ MiniPrefetchData copy$default(MiniPrefetchData miniPrefetchData, long j11, BridgeCallback bridgeCallback, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                j11 = miniPrefetchData.expiredTime;
            }
            if ((i11 & 2) != 0) {
                bridgeCallback = miniPrefetchData.callback;
            }
            if ((i11 & 4) != 0) {
                str = miniPrefetchData.callbackId;
            }
            return miniPrefetchData.copy(j11, bridgeCallback, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final long getExpiredTime() {
            return this.expiredTime;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final BridgeCallback getCallback() {
            return this.callback;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getCallbackId() {
            return this.callbackId;
        }

        public final MiniPrefetchData copy(long expiredTime, BridgeCallback callback, String callbackId) {
            return new MiniPrefetchData(expiredTime, callback, callbackId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MiniPrefetchData)) {
                return false;
            }
            MiniPrefetchData miniPrefetchData = (MiniPrefetchData) other;
            return this.expiredTime == miniPrefetchData.expiredTime && Intrinsics.c(this.callback, miniPrefetchData.callback) && Intrinsics.c(this.callbackId, miniPrefetchData.callbackId);
        }

        public final BridgeCallback getCallback() {
            return this.callback;
        }

        public final String getCallbackId() {
            return this.callbackId;
        }

        public final long getExpiredTime() {
            return this.expiredTime;
        }

        public int hashCode() {
            int iA = androidx.collection.s.a(this.expiredTime) * 31;
            BridgeCallback bridgeCallback = this.callback;
            int iHashCode = (iA + (bridgeCallback == null ? 0 : bridgeCallback.hashCode())) * 31;
            String str = this.callbackId;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final void setCallback(BridgeCallback bridgeCallback) {
            this.callback = bridgeCallback;
        }

        public final void setCallbackId(String str) {
            this.callbackId = str;
        }

        public final void setExpiredTime(long j11) {
            this.expiredTime = j11;
        }

        public String toString() {
            return "MiniPrefetchData(expiredTime=" + this.expiredTime + ", callback=" + this.callback + ", callbackId=" + this.callbackId + ")";
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    public final ConcurrentHashMap<String, MiniPrefetchData> getMTempDataMap() {
        return this.mTempDataMap;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    /* JADX WARN: Code duplicated, block: B:44:0x0160 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:6:0x000b, B:8:0x0011, B:14:0x001e, B:17:0x0039, B:19:0x004e, B:21:0x0067, B:25:0x006f, B:28:0x008a, B:30:0x0096, B:32:0x009c, B:34:0x00a6, B:35:0x00aa, B:37:0x00f4, B:39:0x010c, B:40:0x0126, B:42:0x0143, B:44:0x0160, B:46:0x017d), top: B:51:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:46:0x017d A[Catch: all -> 0x0016, TRY_LEAVE, TryCatch #0 {all -> 0x0016, blocks: (B:6:0x000b, B:8:0x0011, B:14:0x001e, B:17:0x0039, B:19:0x004e, B:21:0x0067, B:25:0x006f, B:28:0x008a, B:30:0x0096, B:32:0x009c, B:34:0x00a6, B:35:0x00aa, B:37:0x00f4, B:39:0x010c, B:40:0x0126, B:42:0x0143, B:44:0x0160, B:46:0x017d), top: B:51:0x000b }] */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x0160, please report this as an issue */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getPrefetchData(@BindingNode(App.class) App app, @BindingParam({"prefetchToken"}) String prefetchToken, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(prefetchToken, "prefetchToken");
        synchronized (this.mTempDataMap) {
            Unit unit = null;
            if (app != null) {
                try {
                    AppContext appContext = app.getAppContext();
                    if (appContext != null) {
                        context = appContext.getContext();
                    } else {
                        context = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } else {
                context = null;
            }
            if (context == null) {
                if (callback != null) {
                    callback.sendFailResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).addProperty("errMsg", "Failed Prefetch data, context is null: PD001").build());
                }
                return;
            }
            Intrinsics.g(context, "app?.appContext?.context…     return\n            }");
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, this.KEY_STORAGE_PREFETCH_DATA, prefetchToken);
            if (string != null) {
                Map map = (Map) GsonUtils.fromJson(string, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.bridge.PrefetchDataBridge$getPrefetchData$1$1$map$1
                }.getType());
                Object obj = map.get(this.KEY_RESPONSE_PREFETCHDATA);
                String str = obj instanceof String ? (String) obj : null;
                if (str == null) {
                    if (callback != null) {
                        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCHDATA, "").addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).build());
                    }
                    return;
                }
                String str2 = (String) map.get(this.KEY_RESPONSE_PREFETCH_PREFETCH_TIME);
                long j11 = str2 != null ? Long.parseLong(str2) : 0L;
                String str3 = (String) map.get(this.KEY_RESPONSE_PREFETCH_EXPIRED_TIME);
                long j12 = str3 != null ? Long.parseLong(str3) : 0L;
                long jCurrentTimeMillis = System.currentTimeMillis();
                TmcLogger.d(this.TAG, "token:" + prefetchToken + ",prefetchData is exist");
                TmcLogger.d(this.TAG, "prefetchTime:" + j11 + ",expiredTime:" + j12 + "," + jCurrentTimeMillis);
                if (j11 + j12 >= jCurrentTimeMillis) {
                    TmcLogger.d(this.TAG, "prefetchData: " + str);
                    if (callback != null) {
                        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCHDATA, str).addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).build());
                        unit = Unit.f67061a;
                    }
                } else {
                    TmcLogger.d(this.TAG, "token:" + prefetchToken + ",prefetchData expired");
                    if (callback != null) {
                        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCHDATA, "").addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).build());
                        unit = Unit.f67061a;
                    }
                }
                if (unit == null) {
                    TmcLogger.d(this.TAG, "token:" + prefetchToken + ",prefetchData is not exist");
                    if (callback != null) {
                        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCHDATA, "").addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).build());
                        Unit unit2 = Unit.f67061a;
                    }
                }
            } else {
                TmcLogger.d(this.TAG, "token:" + prefetchToken + ",prefetchData is not exist");
                if (callback != null) {
                    callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCHDATA, "").addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).build());
                    Unit unit3 = Unit.f67061a;
                }
            }
        }
    }

    public final String getTAG() {
        return this.TAG;
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public final void prefetchAndSaveToTemp(@BindingNode(App.class) App app, @BindingParam({"url"}) String url, @BindingParam({"method"}) String method, @BindingParam({"requestHeader"}) String requestHeader, @BindingParam({"requestParam"}) String requestParam, @BindingParam({"requestTimeout"}) Long requestTimeout, @BindingParam({"prefetchExpiredTime"}) Long prefetchExpiredTime, @BindingParam({"callbackId"}) String callbackId, @BindingCallback BridgeCallback callback) {
        final Context context;
        String json;
        synchronized (this.mTempDataMap) {
            if (app != null) {
                try {
                    AppContext appContext = app.getAppContext();
                    if (appContext != null) {
                        context = appContext.getContext();
                    } else {
                        context = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } else {
                context = null;
            }
            if (context == null) {
                if (callback != null) {
                    callback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed Prefetch data, context is null: PD001").addProperty("callbackId", callbackId).build());
                }
                return;
            }
            Intrinsics.g(context, "app?.appContext?.context…     return\n            }");
            String appId = app.getAppId();
            if (appId == null) {
                if (callback != null) {
                    callback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed Prefetch data, appId is null: PD002").addProperty("callbackId", callbackId).build());
                }
                return;
            }
            Intrinsics.g(appId, "app.appId ?: kotlin.run …     return\n            }");
            final String token = EncryptUtils.encryptMD5ToString(appId + "_" + System.currentTimeMillis());
            ConcurrentHashMap<String, MiniPrefetchData> concurrentHashMap = this.mTempDataMap;
            Intrinsics.g(token, "token");
            concurrentHashMap.put(token, new MiniPrefetchData(prefetchExpiredTime != null ? prefetchExpiredTime.longValue() : 0L, callback, callbackId));
            try {
                HashMap map = new HashMap();
                Map mapMapFromJson = TmcGsonUtils.mapFromJson(requestHeader);
                if (mapMapFromJson != null) {
                    map.putAll(mapMapFromJson);
                }
                map.put(UrlKt.KEY_HEADER_REQUESTCHANNEL, TmcConstants.CHANNEL_REQUEST_PREFETCH);
                json = TmcGsonUtilsKt.toJson(map);
            } catch (Throwable unused) {
                json = requestHeader;
            }
            BridgeExtension bridgeExtensionByAction = app.getExtensionManager().getBridgeExtensionByAction("request");
            if (bridgeExtensionByAction instanceof NativeRequestBridge) {
                TmcLogger.d(this.TAG, "url:" + url + ",requestParam:" + requestParam + ",header:" + json + ",method:" + method + ",requestTimeout:" + requestTimeout + ",prefetchExpiredTime:" + prefetchExpiredTime + ",token:" + token);
                ((NativeRequestBridge) bridgeExtensionByAction).request(url, requestParam, json, method, requestTimeout, token, new BridgeCallback() { // from class: com.cloud.tmc.integration.bridge.PrefetchDataBridge$prefetchAndSaveToTemp$1$1
                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void close() {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void close(JsonObject dataJson) {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public String getCallbackId() {
                        String token2 = token;
                        Intrinsics.g(token2, "token");
                        return token2;
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendBridgeResponse(BridgeResponse response) {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendFailMapResponse() {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendFailResponse() {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendFailResponse(JsonObject jsonObject) {
                        PrefetchDataBridge.MiniPrefetchData miniPrefetchData;
                        JsonElement jsonElement;
                        String asString = (jsonObject == null || (jsonElement = jsonObject.get("callbackId")) == null) ? null : jsonElement.getAsString();
                        if (asString == null || (miniPrefetchData = this.this$0.getMTempDataMap().get(asString)) == null) {
                            return;
                        }
                        PrefetchDataBridge prefetchDataBridge = this.this$0;
                        TmcLogger.d(prefetchDataBridge.getTAG(), "token:" + asString + ",预取的网络请求失败了,errorCode:" + jsonObject);
                        jsonObject.addProperty("callbackId", miniPrefetchData.getCallbackId());
                        BridgeCallback callback2 = miniPrefetchData.getCallback();
                        if (callback2 != null) {
                            callback2.sendFailResponse(jsonObject);
                        }
                        prefetchDataBridge.getMTempDataMap().remove(asString);
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendFailResponse(HashMap<String, Object> map2) {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendJSONResponse(JsonObject jsonObject) {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendJSONResponse(JsonObject JsonObject, boolean keepCallback) {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendMapResponse(HashMap<String, Object> map2) {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendSuccessMapResponse() {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendSuccessResponse() {
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendSuccessResponse(JsonObject jsonObject) {
                        JsonElement jsonElement;
                        PrefetchDataBridge.MiniPrefetchData miniPrefetchDataRemove = null;
                        String asString = (jsonObject == null || (jsonElement = jsonObject.get("callbackId")) == null) ? null : jsonElement.getAsString();
                        if (asString == null) {
                            return;
                        }
                        jsonObject.addProperty(this.this$0.KEY_RESPONSE_PREFETCH_TOKEN, asString);
                        PrefetchDataBridge.MiniPrefetchData miniPrefetchData = this.this$0.getMTempDataMap().get(asString);
                        if (miniPrefetchData != null) {
                            PrefetchDataBridge prefetchDataBridge = this.this$0;
                            Context context2 = context;
                            jsonObject.addProperty("callbackId", miniPrefetchData.getCallbackId());
                            JsonElement jsonElement2 = jsonObject.get("response");
                            String asString2 = jsonElement2 != null ? jsonElement2.getAsString() : null;
                            TmcLogger.d(prefetchDataBridge.getTAG(), "token:" + asString + ",response:" + asString2);
                            long expiredTime = miniPrefetchData.getExpiredTime();
                            HashMap map2 = new HashMap();
                            map2.put(prefetchDataBridge.KEY_RESPONSE_PREFETCHDATA, asString2);
                            map2.put(prefetchDataBridge.KEY_RESPONSE_PREFETCH_EXPIRED_TIME, String.valueOf(expiredTime));
                            map2.put(prefetchDataBridge.KEY_RESPONSE_PREFETCH_PREFETCH_TIME, String.valueOf(System.currentTimeMillis()));
                            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context2, prefetchDataBridge.KEY_STORAGE_PREFETCH_DATA, asString, GsonUtils.toJson(map2));
                            BridgeCallback callback2 = miniPrefetchData.getCallback();
                            if (callback2 != null) {
                                callback2.sendSuccessResponse(jsonObject);
                            }
                            miniPrefetchDataRemove = prefetchDataBridge.getMTempDataMap().remove(asString);
                        }
                        if (miniPrefetchDataRemove == null) {
                            TmcLogger.d(this.this$0.getTAG(), "miniPrefetchData is null");
                        }
                    }

                    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
                    public void sendSuccessResponse(HashMap<String, Object> map2) {
                    }
                }, app);
            }
            Unit unit = Unit.f67061a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void removePrefetchData(@BindingNode(App.class) App app, @BindingParam({"prefetchToken"}) String prefetchToken, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(prefetchToken, "prefetchToken");
        synchronized (this.mTempDataMap) {
            if (app != null) {
                try {
                    AppContext appContext = app.getAppContext();
                    if (appContext != null) {
                        context = appContext.getContext();
                    } else {
                        context = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } else {
                context = null;
            }
            if (context == null) {
                if (callback != null) {
                    callback.sendFailResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).addProperty("errMsg", "Failed Prefetch data, context is null: PD001").build());
                }
                return;
            }
            Intrinsics.g(context, "app?.appContext?.context…     return\n            }");
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, this.KEY_STORAGE_PREFETCH_DATA, prefetchToken);
            if (callback != null) {
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(this.KEY_RESPONSE_PREFETCH_TOKEN, prefetchToken).build());
                Unit unit = Unit.f67061a;
            }
        }
    }
}
