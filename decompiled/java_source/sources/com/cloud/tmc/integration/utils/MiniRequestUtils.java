package com.cloud.tmc.integration.utils;

import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AbilityConfig;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.IResponseCallback;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cookie;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007J \u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u0006H\u0007J>\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112&\b\u0002\u0010\u0012\u001a \u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\b\u0012\u0004\u0012\u00020\u0015`\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007JL\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u001c\b\u0002\u0010\u001a\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00132\u001c\b\u0002\u0010\u001d\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007JL\u0010\u001e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u001c\b\u0002\u0010\u001a\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00132\u001c\b\u0002\u0010\u001d\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007JL\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u001c\b\u0002\u0010\u001a\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00132\u001c\b\u0002\u0010\u001d\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/cloud/tmc/integration/utils/MiniRequestUtils;", "", "()V", "TAG", "", "collectMiniApp", "", "isCollect", "", "appId", "getUniqueId", UrlKt.KEY_MINI_GAID, "callback", "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;", "requestAbilityConfig", "requestRecommendMiniApp", "excludes", "", "block", "Lkotlin/Function1;", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/integration/model/AppModel;", "Lkotlin/collections/ArrayList;", "updateAppInfo", "app", "Lcom/cloud/tmc/integration/structure/App;", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "Lcom/cloud/tmc/integration/net/BaseResponse;", "Lcom/cloud/tmc/integration/model/AppInfoModel;", "failure", "updateAppInfoForCdn", "updateAppInfoForServer", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniRequestUtils {
    public static final MiniRequestUtils INSTANCE = new MiniRequestUtils();
    private static final String TAG = "TmcApp: MiniRequestUtils";

    /* JADX INFO: renamed from: com.cloud.tmc.integration.utils.MiniRequestUtils$requestRecommendMiniApp$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u00040\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0016J,\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J<\u0010\u000f\u001a\u00020\b2\u001c\u0010\u0010\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u00040\n2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016¨\u0006\u0011"}, d2 = {"com/cloud/tmc/integration/utils/MiniRequestUtils$requestRecommendMiniApp$1", "Lcom/cloud/tmc/integration/net/TmcResponseCallback;", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/integration/model/AppModel;", "Lkotlin/collections/ArrayList;", "getType", "Ljava/lang/reflect/Type;", "onFail", "", "fail", "Lcom/cloud/tmc/integration/net/BaseResponse;", "", "headers", "", "", "onSuccess", "bean", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class C10271 extends TmcResponseCallback<ArrayList<AppModel>> {
        final /* synthetic */ Function1<ArrayList<AppModel>, Unit> $block;

        /* JADX WARN: Multi-variable type inference failed */
        C10271(Function1<? super ArrayList<AppModel>, Unit> function1) {
            this.$block = function1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFail$lambda$2(Function1 function1) {
            if (function1 != null) {
                function1.invoke(new ArrayList());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onSuccess$lambda$1$lambda$0(Function1 function1, ArrayList it) {
            Intrinsics.h(it, "$it");
            if (function1 != null) {
                function1.invoke(it);
            }
        }

        @Override // com.cloud.tmc.integration.net.TmcResponseCallback
        public Type getType() {
            Type type = new TypeToken<BaseResponse<? extends ArrayList<AppModel>>>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils$requestRecommendMiniApp$1$getType$1
            }.getType();
            Intrinsics.g(type, "object : TypeToken<BaseR…ist<AppModel>>>() {}.type");
            return type;
        }

        @Override // com.cloud.tmc.integration.net.TmcResponseCallback
        public void onFail(BaseResponse<? extends Object> fail, Map<String, String> headers) {
            Intrinsics.h(fail, "fail");
            TmcLogger.d(MiniRequestUtils.TAG, "onFail: " + TmcGsonUtilsKt.toJson(fail));
            ExecutorType executorType = ExecutorType.UI;
            final Function1<ArrayList<AppModel>, Unit> function1 = this.$block;
            ExecutorUtils.execute(executorType, new Runnable() { // from class: com.cloud.tmc.integration.utils.m
                @Override // java.lang.Runnable
                public final void run() {
                    MiniRequestUtils.C10271.onFail$lambda$2(function1);
                }
            });
        }

        @Override // com.cloud.tmc.integration.net.TmcResponseCallback
        public void onSuccess(BaseResponse<? extends ArrayList<AppModel>> bean, Map<String, String> headers) {
            Intrinsics.h(bean, "bean");
            TmcLogger.d(MiniRequestUtils.TAG, "onSuccess: " + TmcGsonUtilsKt.toJson(bean));
            final ArrayList<AppModel> data = bean.getData();
            if (data != null) {
                final Function1<ArrayList<AppModel>, Unit> function1 = this.$block;
                ExecutorUtils.execute(ExecutorType.UI, new Runnable() { // from class: com.cloud.tmc.integration.utils.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniRequestUtils.C10271.onSuccess$lambda$1$lambda$0(function1, data);
                    }
                });
            }
        }
    }

    private MiniRequestUtils() {
    }

    @JvmStatic
    public static final void collectMiniApp(boolean isCollect, String appId) {
        Intrinsics.h(appId, "appId");
        TmcLogger.d(TAG, "collect appId: " + appId + " isCollect " + isCollect);
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(isCollect ? UrlKt.getURL_COLLECT_MINI_APP() : UrlKt.getURL_CANCEL_COLLECT_MINI_APP(), new LinkedHashMap(), new LinkedHashMap(), MapsKt.m(TuplesKt.a(TmcConstants.KEY_MINI_APPID, appId)), Boolean.TRUE, new TmcResponseCallback<JsonObject>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils.collectMiniApp.1
            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public Type getType() {
                Type type = new TypeToken<BaseResponse<? extends JsonObject>>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils$collectMiniApp$1$getType$1
                }.getType();
                Intrinsics.g(type, "object : TypeToken<BaseR…se<JsonObject>>() {}.type");
                return type;
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onFail(BaseResponse<? extends Object> fail, Map<String, String> headers) {
                Intrinsics.h(fail, "fail");
                TmcLogger.d(MiniRequestUtils.TAG, "onFail: " + fail.getData());
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onSuccess(BaseResponse<? extends JsonObject> bean, Map<String, String> headers) {
                Intrinsics.h(bean, "bean");
                TmcLogger.d(MiniRequestUtils.TAG, "onSuccess: " + bean.getData());
            }
        });
    }

    @JvmStatic
    public static final void getUniqueId(String gaid, String appId, IResponseCallback callback) {
        Intrinsics.h(gaid, "gaid");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        HashMap map = new HashMap();
        map.put(UrlKt.KEY_MINI_GAID, gaid);
        HashMap map2 = new HashMap();
        map2.put("appId", appId);
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(UrlKt.getURL_UNIQUEID(), map, map2, Boolean.TRUE, callback);
    }

    @JvmStatic
    public static final void requestAbilityConfig() {
        if (AbilitiesUtils.INSTANCE.isAllowRequest()) {
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(((IConfigStrategyProxy) TmcProxy.get(IConfigStrategyProxy.class)).getAbilitiesCdnUrl(), new LinkedHashMap(), new LinkedHashMap(), Boolean.FALSE, new IResponseCallback() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils.requestAbilityConfig.1
                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onFailure(String errCode, String errMsg, String callbackId) {
                    Intrinsics.h(errCode, "errCode");
                    TmcLogger.d(MiniRequestUtils.TAG, "onFail: " + errMsg);
                }

                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onSuccess(int responseCode, String responseStr, Map<String, String> headers, List<Cookie> cookies, String callbackId) {
                    ArrayList arrayList;
                    TmcLogger.d(MiniRequestUtils.TAG, "onSuccess: " + responseStr);
                    if (responseStr == null || responseStr.length() == 0) {
                        return;
                    }
                    try {
                        Object objFromJson = GsonUtils.fromJson(responseStr, new TypeToken<ArrayList<AbilityConfig>>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils$requestAbilityConfig$1$onSuccess$abilitiesConfig$1
                        }.getType());
                        Intrinsics.g(objFromJson, "{\n                      …  )\n                    }");
                        arrayList = (ArrayList) objFromJson;
                    } catch (Exception e11) {
                        TmcLogger.e("Failed to parse ability config", e11);
                        arrayList = new ArrayList();
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    AbilitiesUtils.INSTANCE.saveAbilitiesConfig(responseStr);
                }
            });
        }
    }

    @JvmStatic
    public static final void requestRecommendMiniApp(List<String> excludes, Function1<? super ArrayList<AppModel>, Unit> block) {
        Intrinsics.h(excludes, "excludes");
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(UrlKt.getRECOMMEND_INFO_MINI_APP(), new LinkedHashMap(), new LinkedHashMap(), MapsKt.m(TuplesKt.a("excludeMiniAppIds", excludes)), Boolean.TRUE, new C10271(block));
    }

    public static /* synthetic */ void requestRecommendMiniApp$default(List list, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        requestRecommendMiniApp(list, function1);
    }

    @JvmStatic
    public static final void updateAppInfo(App app, Function1<? super BaseResponse<AppInfoModel>, Unit> success, Function1<? super BaseResponse<? extends Object>, Unit> failure) {
        Intrinsics.h(app, "app");
        updateAppInfoForServer(app, success, failure);
    }

    public static /* synthetic */ void updateAppInfo$default(App app, Function1 function1, Function1 function2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        if ((i11 & 4) != 0) {
            function2 = null;
        }
        updateAppInfo(app, function1, function2);
    }

    @JvmStatic
    public static final void updateAppInfoForCdn(String appId, final Function1<? super BaseResponse<AppInfoModel>, Unit> success, final Function1<? super BaseResponse<? extends Object>, Unit> failure) {
        Intrinsics.h(appId, "appId");
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put(UrlKt.KEY_HEADER_REQUESTCHANNEL, TmcConstants.CHANNEL_REQUEST_SERVER_API);
        map.put("appId", appId);
        map.put(UrlKt.KEY_QUERY_CLASSIFICATION, "1");
        String url_appinfo_query = UrlKt.getURL_APPINFO_QUERY();
        String gAId = DeviceUtil.getGAId();
        if (!TextUtils.isEmpty(gAId)) {
            map2.put(UrlKt.KEY_MINI_GAID, gAId);
        }
        TmcLogger.d(TAG, "updateAppInfoForServer: url: " + url_appinfo_query);
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(url_appinfo_query, map2, null, map, Boolean.TRUE, new TmcResponseCallback<AppInfoModel>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils.updateAppInfoForCdn.1
            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public Type getType() {
                Type type = new TypeToken<BaseResponse<? extends AppInfoModel>>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils$updateAppInfoForCdn$1$getType$1
                }.getType();
                Intrinsics.g(type, "object : TypeToken<BaseR…ppInfoModel?>?>() {}.type");
                return type;
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onFail(BaseResponse<? extends Object> fail, Map<String, String> headers) {
                Intrinsics.h(fail, "fail");
                TmcLogger.d(MiniRequestUtils.TAG, "updateAppInfoForServer failed");
                Function1<BaseResponse<? extends Object>, Unit> function1 = failure;
                if (function1 != null) {
                    function1.invoke(fail);
                }
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onSuccess(BaseResponse<? extends AppInfoModel> bean, Map<String, String> headers) {
                Intrinsics.h(bean, "bean");
                TmcLogger.d(MiniRequestUtils.TAG, "updateAppInfoForServer success");
                Function1<BaseResponse<AppInfoModel>, Unit> function1 = success;
                if (function1 != null) {
                    function1.invoke(bean);
                }
            }
        });
    }

    public static /* synthetic */ void updateAppInfoForCdn$default(String str, Function1 function1, Function1 function2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        if ((i11 & 4) != 0) {
            function2 = null;
        }
        updateAppInfoForCdn(str, function1, function2);
    }

    @JvmStatic
    public static final void updateAppInfoForServer(App app, final Function1<? super BaseResponse<AppInfoModel>, Unit> success, final Function1<? super BaseResponse<? extends Object>, Unit> failure) {
        Intrinsics.h(app, "app");
        String string = app.getStartParams().getString("mode");
        String str = "";
        if (string == null) {
            string = "";
        }
        String string2 = app.getStartParams().getString(TmcConstants.EXTRA_APP_DEV_TOKEN);
        if (string2 == null) {
            string2 = "";
        }
        boolean z10 = StringsKt.H("debug", string, true) || StringsKt.H("dev", string, true);
        if (StringsKt.H("debug", string, true)) {
            str = "0";
        } else if (StringsKt.H("dev", string, true)) {
            str = "1";
        } else if (StringsKt.H("develop", string, true)) {
            str = "2";
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put(UrlKt.KEY_HEADER_REQUESTCHANNEL, TmcConstants.CHANNEL_REQUEST_SERVER_API);
        map.put("appId", app.getAppId());
        map.put(UrlKt.KEY_QUERY_CLASSIFICATION, "1");
        String url_appinfo_query = UrlKt.getURL_APPINFO_QUERY();
        String gAId = DeviceUtil.getGAId();
        if (!TextUtils.isEmpty(gAId)) {
            map2.put(UrlKt.KEY_MINI_GAID, gAId);
        }
        if (z10) {
            map.put("version", app.getAppVersion());
            map.put(UrlKt.KEY_QUERY_TYPE_CODE, str);
            url_appinfo_query = UrlKt.getURL_APPINFO_DEV_QUERY();
            if (!TextUtils.isEmpty(string2)) {
                map2.put(UrlKt.KEY_HEADER_DEV_TOKEN, string2);
            }
        }
        String str2 = url_appinfo_query;
        TmcLogger.d(TAG, "updateAppInfoForServer: url: " + str2);
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(str2, map2, null, map, Boolean.TRUE, new TmcResponseCallback<AppInfoModel>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils.updateAppInfoForServer.1
            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public Type getType() {
                Type type = new TypeToken<BaseResponse<? extends AppInfoModel>>() { // from class: com.cloud.tmc.integration.utils.MiniRequestUtils$updateAppInfoForServer$1$getType$1
                }.getType();
                Intrinsics.g(type, "object : TypeToken<BaseR…ppInfoModel?>?>() {}.type");
                return type;
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onFail(BaseResponse<? extends Object> fail, Map<String, String> headers) {
                Intrinsics.h(fail, "fail");
                TmcLogger.d(MiniRequestUtils.TAG, "updateAppInfoForServer failed");
                Function1<BaseResponse<? extends Object>, Unit> function1 = failure;
                if (function1 != null) {
                    function1.invoke(fail);
                }
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onSuccess(BaseResponse<? extends AppInfoModel> bean, Map<String, String> headers) {
                Intrinsics.h(bean, "bean");
                TmcLogger.d(MiniRequestUtils.TAG, "updateAppInfoForServer success");
                Function1<BaseResponse<AppInfoModel>, Unit> function1 = success;
                if (function1 != null) {
                    function1.invoke(bean);
                }
            }
        });
    }

    public static /* synthetic */ void updateAppInfoForServer$default(App app, Function1 function1, Function1 function2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        if ((i11 & 4) != 0) {
            function2 = null;
        }
        updateAppInfoForServer(app, function1, function2);
    }
}
