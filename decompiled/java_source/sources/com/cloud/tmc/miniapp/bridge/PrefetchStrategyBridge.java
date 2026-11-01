package com.cloud.tmc.miniapp.bridge;

import android.content.Context;
import android.net.Uri;
import com.cloud.tmc.integration.bridge.FrameworkStorageBridge;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.FileUtil;
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
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.miniapp.prestrategy.PrefetchConfigModel;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.tracking.TrackingKey;
import com.tmc.network.HttpRequestor;
import com.tmc.network.INetworkCallback;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class PrefetchStrategyBridge implements BridgeExtension {
    public static final OooO00o Companion = new OooO00o();
    public static final String TAG = "PrefetchStrategyBridge";

    public static final class OooO implements INetworkCallback {
        public final /* synthetic */ BridgeCallback OooO00o;
        public final /* synthetic */ Function2<Response, BridgeCallback, Unit> OooO0O0;

        /* JADX WARN: Multi-variable type inference failed */
        public OooO(BridgeCallback bridgeCallback, Function2<? super Response, ? super BridgeCallback, Unit> function2) {
            this.OooO00o = bridgeCallback;
            this.OooO0O0 = function2;
        }

        @Override // com.tmc.network.INetworkCallback
        public void onFailure(Call call, Exception e11) {
            Intrinsics.h(e11, "e");
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }

        @Override // com.tmc.network.INetworkCallback
        public void onResponse(Call call, Response response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            this.OooO0O0.invoke(response, this.OooO00o);
        }
    }

    public static final class OooO00o {
    }

    public static final class OooO0O0 extends Lambda implements Function2<PrefetchConfigModel, PrefetchConfigModel, Integer> {
        public static final OooO0O0 OooO00o = new OooO0O0();

        public OooO0O0() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) {
            PrefetchConfigModel prefetchConfigModel = (PrefetchConfigModel) obj;
            PrefetchConfigModel prefetchConfigModel2 = (PrefetchConfigModel) obj2;
            return Integer.valueOf((prefetchConfigModel != null ? prefetchConfigModel.getPriority() : 0) - (prefetchConfigModel2 != null ? prefetchConfigModel2.getPriority() : 0));
        }
    }

    public static final class OooO0OO implements INetworkCallback {
        public final /* synthetic */ BridgeCallback OooO00o;
        public final /* synthetic */ Function2<Response, BridgeCallback, Unit> OooO0O0;

        /* JADX WARN: Multi-variable type inference failed */
        public OooO0OO(BridgeCallback bridgeCallback, Function2<? super Response, ? super BridgeCallback, Unit> function2) {
            this.OooO00o = bridgeCallback;
            this.OooO0O0 = function2;
        }

        @Override // com.tmc.network.INetworkCallback
        public void onFailure(Call call, Exception e11) {
            Intrinsics.h(e11, "e");
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }

        @Override // com.tmc.network.INetworkCallback
        public void onResponse(Call call, Response response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            this.OooO0O0.invoke(response, this.OooO00o);
        }
    }

    public static final class OooO0o implements INetworkCallback {
        public final /* synthetic */ BridgeCallback OooO00o;
        public final /* synthetic */ Function2<Response, BridgeCallback, Unit> OooO0O0;

        /* JADX WARN: Multi-variable type inference failed */
        public OooO0o(BridgeCallback bridgeCallback, Function2<? super Response, ? super BridgeCallback, Unit> function2) {
            this.OooO00o = bridgeCallback;
            this.OooO0O0 = function2;
        }

        @Override // com.tmc.network.INetworkCallback
        public void onFailure(Call call, Exception e11) {
            Intrinsics.h(e11, "e");
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }

        @Override // com.tmc.network.INetworkCallback
        public void onResponse(Call call, Response response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            this.OooO0O0.invoke(response, this.OooO00o);
        }
    }

    public static final class OooOO0 implements INetworkCallback {
        public final /* synthetic */ BridgeCallback OooO00o;
        public final /* synthetic */ Function2<Response, BridgeCallback, Unit> OooO0O0;

        /* JADX WARN: Multi-variable type inference failed */
        public OooOO0(BridgeCallback bridgeCallback, Function2<? super Response, ? super BridgeCallback, Unit> function2) {
            this.OooO00o = bridgeCallback;
            this.OooO0O0 = function2;
        }

        @Override // com.tmc.network.INetworkCallback
        public void onFailure(Call call, Exception e11) {
            Intrinsics.h(e11, "e");
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }

        @Override // com.tmc.network.INetworkCallback
        public void onResponse(Call call, Response response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            this.OooO0O0.invoke(response, this.OooO00o);
        }
    }

    @SourceDebugExtension
    public static final class OooOO0O extends Lambda implements Function2<Response, BridgeCallback, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooOO0O(String str, String str2) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = str2;
        }

        /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:73:0x0158 A[Catch: all -> 0x0140, TRY_ENTER, TryCatch #0 {all -> 0x0140, blocks: (B:60:0x013c, B:63:0x0142, B:73:0x0158, B:75:0x015d), top: B:90:0x0081 }] */
        /* JADX WARN: Code duplicated, block: B:75:0x015d A[Catch: all -> 0x0140, TRY_LEAVE, TryCatch #0 {all -> 0x0140, blocks: (B:60:0x013c, B:63:0x0142, B:73:0x0158, B:75:0x015d), top: B:90:0x0081 }] */
        /* JADX WARN: Code duplicated, block: B:83:0x016f A[Catch: all -> 0x016b, TRY_LEAVE, TryCatch #3 {all -> 0x016b, blocks: (B:79:0x0167, B:83:0x016f), top: B:95:0x0167 }] */
        /* JADX WARN: Code duplicated, block: B:91:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public final void OooO00o(Response response, BridgeCallback bridgeCallback) {
            String strValueOf;
            InputStream inputStream;
            Throwable th2;
            Integer numValueOf;
            Intrinsics.h(response, "response");
            if (response.code() != 200) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            String str = response.headers().get("content-type");
            JsonObject jsonObject = new JsonObject();
            FileOutputStream fileOutputStream = null;
            if (Intrinsics.c(str, "application/json")) {
                ResponseBody responseBodyBody = response.body();
                jsonObject.addProperty("data", responseBodyBody != null ? responseBodyBody.string() : null);
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse(jsonObject);
                    return;
                }
                return;
            }
            String path = Uri.parse(this.OooO00o).getPath();
            if (path == null || path.length() == 0) {
                strValueOf = String.valueOf(System.currentTimeMillis());
            } else {
                int length = path.length() - 1;
                if (length < 0) {
                    length = -1;
                    break;
                }
                while (true) {
                    int i11 = length - 1;
                    if (path.charAt(length) == '/') {
                        break;
                    }
                    if (i11 < 0) {
                        length = -1;
                        break;
                    }
                    length = i11;
                }
                strValueOf = path.substring(length);
                Intrinsics.g(strValueOf, "this as java.lang.String).substring(startIndex)");
            }
            byte[] bArr = new byte[2048];
            try {
                try {
                    ResponseBody responseBodyBody2 = response.body();
                    InputStream inputStreamByteStream = responseBodyBody2 != null ? responseBodyBody2.byteStream() : null;
                    try {
                        String appBaseFilePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(this.OooO0O0);
                        String str2 = File.separator;
                        String str3 = appBaseFilePath + str2 + TmcConstants.TEMP_DATA_PATH;
                        FileUtils.createOrExistsDir(new File(str3));
                        File file = new File(str3 + str2 + strValueOf);
                        if (file.exists()) {
                            file.delete();
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        while (true) {
                            if (inputStreamByteStream != null) {
                                try {
                                    numValueOf = Integer.valueOf(inputStreamByteStream.read(bArr));
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    fileOutputStream = fileOutputStream2;
                                    if (bridgeCallback != null) {
                                        try {
                                            bridgeCallback.sendFailResponse();
                                        } catch (Throwable th4) {
                                            if (inputStreamByteStream != null) {
                                                try {
                                                    inputStreamByteStream.close();
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                } catch (Throwable th5) {
                                                    TmcLogger.e(PrefetchStrategyBridge.TAG, th5);
                                                    throw th4;
                                                }
                                            } else if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            throw th4;
                                        }
                                    }
                                    TmcLogger.e(PrefetchStrategyBridge.TAG, th2);
                                    if (inputStreamByteStream != null) {
                                        inputStreamByteStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                }
                            } else {
                                numValueOf = null;
                            }
                            int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
                            if (numValueOf != null && numValueOf.intValue() == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, iIntValue);
                        }
                        fileOutputStream2.flush();
                        String vhost = FileUtil.getVhost(this.OooO0O0);
                        String str4 = File.separator;
                        jsonObject.addProperty("data", vhost + str4 + TmcConstants.TEMP_DATA_PATH + str4 + file.getName());
                        if (bridgeCallback != null) {
                            bridgeCallback.sendSuccessResponse(jsonObject);
                        }
                        if (inputStreamByteStream != null) {
                            inputStreamByteStream.close();
                        }
                        fileOutputStream2.close();
                    } catch (Throwable th6) {
                        inputStream = inputStreamByteStream;
                        th = th6;
                        InputStream inputStream2 = inputStream;
                        th2 = th;
                        inputStreamByteStream = inputStream2;
                        if (bridgeCallback != null) {
                            bridgeCallback.sendFailResponse();
                        }
                        TmcLogger.e(PrefetchStrategyBridge.TAG, th2);
                        if (inputStreamByteStream != null) {
                            inputStreamByteStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    }
                } catch (Throwable th7) {
                    TmcLogger.e(PrefetchStrategyBridge.TAG, th7);
                }
            } catch (Throwable th8) {
                th = th8;
                inputStream = null;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            OooO00o((Response) obj, (BridgeCallback) obj2);
            return Unit.f67061a;
        }
    }

    public static final int OooO00o(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.h(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    @ActionFilter
    public final void changePrefetchStatus(@BindingNode(App.class) App app) {
        Context context;
        JsonObject jsonObject;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null) {
                    context = appContext.getContext();
                } else {
                    context = null;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                return;
            }
        } else {
            context = null;
        }
        if (context == null || (jsonObject = (JsonObject) GsonUtils.fromJson(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, FrameworkStorageBridge.FRAMEWORK_STORAGE_KEY, "prefetch_state_key"), JsonObject.class)) == null) {
            return;
        }
        JsonElement jsonElement = jsonObject.get("appId");
        if (Intrinsics.c(jsonElement != null ? jsonElement.getAsString() : null, app.getAppId())) {
            TmcLogger.e(TAG, app.getAppId() + " destroy. change prefetch state");
            jsonObject.addProperty("state", Boolean.FALSE);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, FrameworkStorageBridge.FRAMEWORK_STORAGE_KEY, "prefetch_state_key", jsonObject.toString());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getPreStrategy(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        String string;
        String string2;
        JsonObject jsonObject = new JsonObject();
        JsonArray jsonArray = new JsonArray();
        try {
            List<PrefetchConfigModel> listR0 = CollectionsKt.R0(com.cloud.tmc.miniapp.prestrategy.OooO0o.OooO0Oo.snapshot().keySet());
            final OooO0O0 oooO0O0 = OooO0O0.OooO00o;
            Collections.sort(listR0, new Comparator() { // from class: com.cloud.tmc.miniapp.bridge.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return PrefetchStrategyBridge.OooO00o(oooO0O0, obj, obj2);
                }
            });
            for (PrefetchConfigModel prefetchConfigModel : listR0) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("sceneId", prefetchConfigModel.getSceneId());
                jsonObject2.addProperty("appId", prefetchConfigModel.getAppId());
                jsonObject2.addProperty(TrackingKey.PRIORITY, Integer.valueOf(prefetchConfigModel.getPriority()));
                jsonObject2.addProperty("dataType", prefetchConfigModel.getDataType());
                ArrayList<JsonObject> source = prefetchConfigModel.getSource();
                String str = "[]";
                if (source == null || (string = source.toString()) == null) {
                    string = "[]";
                }
                jsonObject2.addProperty(EventConstants.KEY_SOURCE, string);
                ArrayList<String> h5Url = prefetchConfigModel.getH5Url();
                if (h5Url != null && (string2 = h5Url.toString()) != null) {
                    str = string2;
                }
                jsonObject2.addProperty("h5Url", str);
                jsonObject2.addProperty("netType", Integer.valueOf(prefetchConfigModel.getNetType()));
                jsonObject2.addProperty("expiredTime", Long.valueOf(prefetchConfigModel.getExpiredTime()));
                jsonObject2.addProperty("executeTime", Long.valueOf(prefetchConfigModel.getExecuteTime()));
                jsonArray.add(jsonObject2);
            }
            jsonObject.add("data", jsonArray);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
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
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public final void requestStrategy(@BindingNode(App.class) App app, @BindingParam({"appId"}) String str, @BindingParam({"url"}) String str2, @BindingParam({"header"}) String str3, @BindingParam({"method"}) String str4, @BindingParam({"param"}) String str5, @BindingParam({"supportCell"}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        Map<String, String> mapJsonToMapValueIsString;
        Map<String, String> mapJsonToMapValueIsString2;
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0 || str4 == null || str4.length() == 0) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (NetworkUtils.isMobileData() && !z10) {
                TmcLogger.e(TAG, "current netType is cellular");
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (str5 != null && str5.length() != 0 && (mapJsonToMapValueIsString2 = TmcGsonUtils.JsonToMapValueIsString(str5)) != null) {
                for (Map.Entry<String, String> entry : mapJsonToMapValueIsString2.entrySet()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Map<String, String> commonHeader = AppPrepareUtils.INSTANCE.getCommonHeader(new LinkedHashMap(), true);
            if (str3 != null && str3.length() != 0 && (mapJsonToMapValueIsString = TmcGsonUtils.JsonToMapValueIsString(str5)) != null) {
                for (Map.Entry<String, String> entry2 : mapJsonToMapValueIsString.entrySet()) {
                    commonHeader.put(entry2.getKey(), entry2.getValue());
                }
            }
            OooOO0O oooOO0O = new OooOO0O(str2, str);
            int iHashCode = str4.hashCode();
            if (iHashCode != -2019344435) {
                if (iHashCode == 102230) {
                    if (str4.equals("get")) {
                        HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
                        if (companion != null) {
                            companion.get(str2, commonHeader, linkedHashMap, new OooO0OO(bridgeCallback, oooOO0O));
                            return;
                        }
                        return;
                    }
                } else if (iHashCode != 3446944) {
                    if (iHashCode == 2002678055 && str4.equals("post_json")) {
                        HttpRequestor companion2 = HttpRequestor.INSTANCE.getInstance();
                        if (companion2 != null) {
                            companion2.postJSON(str2, commonHeader, new LinkedHashMap(), linkedHashMap, new OooO0o(bridgeCallback, oooOO0O));
                            return;
                        }
                        return;
                    }
                } else if (str4.equals("post")) {
                    HttpRequestor companion3 = HttpRequestor.INSTANCE.getInstance();
                    if (companion3 != null) {
                        companion3.post(str2, commonHeader, new LinkedHashMap(), linkedHashMap, new OooO(bridgeCallback, oooOO0O));
                        return;
                    }
                    return;
                }
            } else if (str4.equals("post_multipart")) {
                HttpRequestor companion4 = HttpRequestor.INSTANCE.getInstance();
                if (companion4 != null) {
                    companion4.postMultipart(str2, commonHeader, new LinkedHashMap(), linkedHashMap, new OooOO0(bridgeCallback, oooOO0O));
                    return;
                }
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
            TmcLogger.e(TAG, th2);
        }
    }
}
