package com.cloud.tmc.integration.bridge;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.proxy.IAdActivityGetProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.EnvironmentUtil;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.ext.PageExtKt;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.utils.UrlLauncher;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hisavana.common.tracking.TrackingKey;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class NavigateBridge implements BridgeExtension {
    private static final String TAG = "NavigateBridge";

    private boolean checkTabPage(Bundle bundle, String str) {
        MiniAppConfigModel miniAppConfigModel;
        MiniAppConfigModel.TabBarBean tabBarBean;
        List<MiniAppConfigModel.TabBarBean.ListBean> list;
        AppLoadResult appLoadResult = (AppLoadResult) BundleUtils.getParcelable(bundle, TmcConstants.EXTRA_APP_LOAD_RESULT);
        if (appLoadResult != null && (miniAppConfigModel = appLoadResult.appConfigModel) != null && (tabBarBean = miniAppConfigModel.tabBar) != null && (list = tabBarBean.list) != null) {
            Iterator<MiniAppConfigModel.TabBarBean.ListBean> it = list.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(it.next().pagePath, Uri.parse(str).getPath())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit lambda$navigateBack$0(App app, int i11, boolean z10, JsonObject jsonObject) {
        app.popTo(i11, z10, jsonObject);
        return null;
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void exit(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            app.exit();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(new JsonObject());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void exitMiniProgram(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        exit(app, bridgeCallback);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateBack(@BindingParam(name = {FrameworkConstants.GLOBAL_DATA_KEY_DELTA}) final int i11, @BindingParam(name = {"autoExit"}) final boolean z10, @BindingParam(name = {"params"}) String str, @BindingNode(App.class) final App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        final JsonObject jsonObject = null;
        try {
            if (!TextUtils.isEmpty(str)) {
                jsonObject = JsonParser.parseString(str).getAsJsonObject();
            }
        } catch (Exception e11) {
            TraceLog.w("Tmcintegration", "parse Json fail : " + e11);
        }
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        if (!PageExtKt.checkAlertBeforeUnload(page, new Function0() { // from class: com.cloud.tmc.integration.bridge.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NavigateBridge.lambda$navigateBack$0(app, i11, z10, jsonObject);
            }
        })) {
            app.popTo(i11, z10, jsonObject);
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(new JsonObject());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateBackToHeaderPage(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            app.backToHeaderPage();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(new JsonObject());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateBackToHomePage(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_NAV_HOME_PRESSED, "");
            app.exitToHomePage();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(new JsonObject());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateTo(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (str.isEmpty()) {
            TraceLog.w("Tmcintegration", "navigateTo url is empty!!!");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_PAGE_OPEN, "");
        app.putPageType(str, 1);
        app.putRouteType(str, "navigateTo");
        Bundle sceneParams = app.getSceneParams();
        sceneParams.putString("navigationType", "navigateTo");
        app.pushPage(str, app.getStartParams(), sceneParams);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(new JsonObject());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToAdLandingPage(@BindingParam(name = {"url"}) String str, @BindingParam({"adInfo"}) String str2, @BindingParam(name = {"adsDTO"}) String str3, @BindingParam(name = {"pointData"}) String str4, @BindingNode(App.class) App app, @BindingCallback final BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2)) {
                Context context = app.getAppContext().getContext();
                Intent intent = new Intent(context, ((IAdActivityGetProxy) TmcProxy.get(IAdActivityGetProxy.class)).getAdLandingPageActivity());
                intent.setFlags(65536);
                intent.putExtra("ad_landingPage_url", str);
                intent.putExtra("adInfo", str2);
                intent.putExtra("adsDTO", str3);
                intent.putExtra("pointData", str4);
                intent.putExtra("appId", app.getAppId());
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(app);
                eventCenterInstance.register(EventConstants.EVENT_AD_LANDING_PAGE, new IEventSubscriber() { // from class: com.cloud.tmc.integration.bridge.NavigateBridge.1
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent iEvent) {
                        Map<String, Object> data = iEvent.getData();
                        if (data != null && data.containsKey("ad_click")) {
                            List list = (List) data.get("ad_click");
                            if (bridgeCallback != null) {
                                JsonObject jsonObject = new JsonObject();
                                jsonObject.addProperty("ad_click", GsonUtils.toJson(list));
                                bridgeCallback.sendSuccessResponse(jsonObject);
                            }
                        }
                        if (data == null || data.get("finish") != "true") {
                            return true;
                        }
                        eventCenterInstance.unregister(EventConstants.EVENT_AD_LANDING_PAGE);
                        return true;
                    }
                });
                context.startActivity(intent);
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToApp(@BindingNode(App.class) App app, @BindingParam({"packageName"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Context context = app.getAppContext().getContext();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() != 0) {
                ResolveInfo next = listQueryIntentActivities.iterator().next();
                intent.addFlags(ASTNode.DEOP);
                ActivityInfo activityInfo = next.activityInfo;
                intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                context.startActivity(intent);
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse();
                    return;
                }
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToDeeplink(@BindingNode(App.class) App app, @BindingParam({"deeplink"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "context is null:DP002").build());
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "deeplink is empty:DP003").build());
                return;
            }
            return;
        }
        Context context = app.getAppContext().getContext();
        try {
            Intent intent = new Intent();
            if (str.startsWith("smsto") && str.split(":").length > 2) {
                String strSubstring = str.substring(0, str.indexOf(":") + 1);
                String strSubstring2 = str.substring(str.indexOf(":") + 1);
                int iIndexOf = strSubstring2.indexOf(":");
                String strSubstring3 = strSubstring2.substring(0, iIndexOf);
                str = strSubstring + strSubstring3;
                intent.putExtra(Constants.SMS_BODY, URLDecoder.decode(strSubstring2.substring(iIndexOf + 1), "UTF-8"));
            }
            intent.setData(Uri.parse(str));
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "deeplink error:DP001," + str).build());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToDeeplinkInternal(@BindingNode(App.class) App app, @BindingParam({"deeplink"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "context is null:DP002").build());
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "deeplink is empty:DP003").build());
                return;
            }
            return;
        }
        Context context = app.getAppContext().getContext();
        try {
            Intent intent = new Intent();
            if (str.startsWith("smsto") && str.split(":").length > 2) {
                String strSubstring = str.substring(0, str.indexOf(":") + 1);
                String strSubstring2 = str.substring(str.indexOf(":") + 1);
                int iIndexOf = strSubstring2.indexOf(":");
                String strSubstring3 = strSubstring2.substring(0, iIndexOf);
                str = strSubstring + strSubstring3;
                intent.putExtra(Constants.SMS_BODY, URLDecoder.decode(strSubstring2.substring(iIndexOf + 1), "UTF-8"));
            }
            intent.setData(Uri.parse(str));
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "deeplink error:DP001," + str).build());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToFormWeb(@BindingNode(App.class) App app, @BindingParam(name = {"url"}) String str, @BindingParam({"adInfo"}) String str2, @BindingParam(name = {"adsDTO"}) String str3, @BindingParam(name = {"pointData"}) String str4, @BindingCallback final BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2)) {
                Context context = app.getAppContext().getContext();
                Intent intent = new Intent(context, ((IAdActivityGetProxy) TmcProxy.get(IAdActivityGetProxy.class)).getAdFormActivity());
                intent.setFlags(65536);
                intent.putExtra("ad_web_form_url", str);
                intent.putExtra("ad_web_ad_info", str2);
                intent.putExtra("adsDTO", str3);
                intent.putExtra("pointData", str4);
                intent.putExtra("appId", app.getAppId());
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(app);
                eventCenterInstance.register(EventConstants.EVENT_AD_FORM_PAGE, new IEventSubscriber() { // from class: com.cloud.tmc.integration.bridge.NavigateBridge.2
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent iEvent) {
                        Map<String, Object> data = iEvent.getData();
                        if (data != null && data.containsKey("ad_click")) {
                            List list = (List) data.get("ad_click");
                            if (bridgeCallback != null) {
                                JsonObject jsonObject = new JsonObject();
                                jsonObject.addProperty("ad_click", GsonUtils.toJson(list));
                                bridgeCallback.sendSuccessResponse(jsonObject);
                            }
                        }
                        if (data == null || data.get("finish") != "true") {
                            return true;
                        }
                        eventCenterInstance.unregister(EventConstants.EVENT_AD_FORM_PAGE);
                        return true;
                    }
                });
                context.startActivity(intent);
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToOutside(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (str.isEmpty()) {
            TraceLog.w("Tmcintegration", "navigateToOutside url is empty!!!");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (str.startsWith("http") || str.startsWith("https") || str.startsWith("miniapp://")) {
            app.pushWebViewPage(str, app.getStartParams(), app.getSceneParams());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(new JsonObject());
                return;
            }
            return;
        }
        TraceLog.w("Tmcintegration", "navigateToOutside url should startwith http or https!!!");
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToOutsideBrowser(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (str.isEmpty()) {
            TmcLogger.e("Tmcintegration", "navigateToOutsideBrowser url is empty");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "navigateToOutsideBrowser url is empty: N001").build());
                return;
            }
            return;
        }
        if (!str.startsWith("http") && !str.startsWith("https")) {
            TmcLogger.e("Tmcintegration", "navigateToOutsideBrowser url should startWith http or https");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "navigateToOutsideBrowser url should startWith http or https: N002").build());
                return;
            }
            return;
        }
        boolean zOpenByBrowser = EnvironmentUtil.openByBrowser(app.getAppContext().getContext(), str);
        if (bridgeCallback != null) {
            if (zOpenByBrowser) {
                bridgeCallback.sendSuccessResponse();
            } else {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "navigateToOutsideBrowser open browser failed: N003").build());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void navigateToPersonalization(@BindingNode(App.class) App app, @BindingParam(name = {TrackingKey.TRIGGER_ID}) final String str, @BindingParam(name = {"url"}) String str2, @BindingParam(name = {"adsDTO"}) String str3, @BindingParam(name = {"app_id_external"}) String str4, @BindingParam(name = {"code_seat_id_external"}) String str5, @BindingCallback final BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str5)) {
                Context context = app.getAppContext().getContext();
                Intent intent = new Intent(context, ((IAdActivityGetProxy) TmcProxy.get(IAdActivityGetProxy.class)).getAdPersonalizationActivity());
                intent.setFlags(65536);
                intent.putExtra("ad_personalization_url", str2);
                intent.putExtra("adsDTO", str3);
                intent.putExtra(TrackingKey.TRIGGER_ID, str);
                intent.putExtra("appId", app.getAppId());
                intent.putExtra("appIdExternal", str4);
                intent.putExtra("codeSeatIdExternal", str5);
                final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(app);
                eventCenterInstance.register(EventConstants.EVENT_AD_PERSONALIZATION_PAGE, new IEventSubscriber() { // from class: com.cloud.tmc.integration.bridge.NavigateBridge.3
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent iEvent) {
                        eventCenterInstance.unregister(EventConstants.EVENT_AD_PERSONALIZATION_PAGE);
                        if (bridgeCallback == null || !str.equals(iEvent.getName())) {
                            return true;
                        }
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("close", Boolean.TRUE);
                        jsonObject.addProperty(TrackingKey.TRIGGER_ID, str);
                        bridgeCallback.sendSuccessResponse(jsonObject);
                        return true;
                    }
                });
                context.startActivity(intent);
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
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

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void openExternalApp(@BindingNode(App.class) App app, @BindingParam({"linkUrl"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (UrlLauncher.launchApp(app.getAppContext().getContext(), str)) {
                bridgeCallback.sendSuccessResponse();
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void openHybridH5Page(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (str.isEmpty()) {
            TraceLog.w("Tmcintegration", "openH5 url is empty!!!");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_PAGE_OPEN, "");
        app.putPageType(str, 2);
        app.putRouteType(str, "navigateTo");
        Bundle sceneParams = app.getSceneParams();
        sceneParams.putString("navigationType", TmcConstants.NAVIGATION_OPEN_HYBRID_H5_PAGE);
        app.pushPage(str, app.getStartParams(), sceneParams);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(new JsonObject());
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void reLaunch(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            if (str.isEmpty()) {
                TraceLog.w("Tmcintegration", "navigateTo url is empty!!!");
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_PAGE_OPEN, "");
            app.putRouteType(str, "reLaunch");
            Bundle sceneParams = app.getSceneParams();
            sceneParams.putString("navigationType", "reLaunch");
            app.relaunchToUrl(str, app.getStartParams(), sceneParams);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(new JsonObject());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void redirectTo(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (str.isEmpty()) {
            TmcLogger.d("Tmcintegration", "redirectTo url is empty!!!");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (checkTabPage(app.getSceneParams(), str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_PAGE_OPEN, "");
            app.putRouteType(str, "redirectTo");
            app.redirectTo(str, app.getStartParams(), app.getSceneParams());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void switchTab(@BindingParam(name = {"url"}) String str, @BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        String path;
        MiniAppConfigModel.TabBarBean tabBarConfig;
        List<MiniAppConfigModel.TabBarBean.ListBean> list;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            TmcLogger.e("Tmcintegration", "switchTab url is empty!!!");
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "switchTab url is empty: N004").build());
                return;
            }
            return;
        }
        try {
            path = Uri.parse(str).getPath();
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
            path = "";
        }
        if (page != null && (tabBarConfig = page.getTabBarConfig()) != null && (list = tabBarConfig.list) != null) {
            Iterator<MiniAppConfigModel.TabBarBean.ListBean> it = list.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(it.next().pagePath, path)) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_PAGE_OPEN, "");
                    app.putRouteType(str, "switchTab");
                    app.putStringValue(TmcConstants.KEY_SWITCH_TAB_FROM_SCENE, TmcConstants.KEY_FROM_TAB_SELECTED);
                    app.switchTab(str, app.getStartParams(), app.getSceneParams());
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        return;
                    }
                    return;
                }
            }
        }
        TmcLogger.e("Tmcintegration", "switchTab url is not supported!!!");
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "switchTab url is not supported: N005").build());
        }
    }
}
