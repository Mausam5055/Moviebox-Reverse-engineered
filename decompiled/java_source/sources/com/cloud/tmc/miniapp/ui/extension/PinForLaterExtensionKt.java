package com.cloud.tmc.miniapp.ui.extension;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAddHomeDataModel;
import com.cloud.tmc.integration.model.MiniAppCenterInfoData;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.utils.AddHomeToScreenUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.CreateShortCutUtils;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PinForLaterExtensionKt {
    public static final String MC_APPID = "1000886706715795456";
    public static final String RECENT_USED_SECNE_ID = "100007";

    private static final void addToHomeScreen(MiniAppActivity miniAppActivity, MiniAppCenterInfoData miniAppCenterInfoData) {
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId = miniAppActivity.getAppId();
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_PIN_FOR_LATER_ADD_MC_CLICK;
        Bundle bundle = new Bundle();
        bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, "7");
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record(appId, pointAnalyseType, "", bundle);
        Class<?> launcherShortCutActivity = ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).getLauncherShortCutActivity();
        Intrinsics.g(launcherShortCutActivity, "get(StartActivityProxy::….launcherShortCutActivity");
        CreateShortCutUtils.createShortcut$default(miniAppActivity, launcherShortCutActivity, miniAppCenterInfoData, "7", 0, 16, null);
    }

    public static final void checkPinForLaterStatus(MiniAppActivity miniAppActivity, String str) {
        Intrinsics.h(miniAppActivity, "<this>");
        try {
            StatusLayout statusLayout = miniAppActivity.getStatusLayout();
            if (statusLayout == null || !statusLayout.OooOOOo) {
                return;
            }
            miniAppActivity.getStatusLayout();
        } catch (Throwable unused) {
        }
    }

    public static final StatusLayout.OooO00o getPinForLaterListener(MiniAppActivity miniAppActivity) {
        Intrinsics.h(miniAppActivity, "<this>");
        if (TextUtils.isEmpty(miniAppActivity.getAppId())) {
            return null;
        }
        TmcAppInfoManager tmcAppInfoManager = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);
        String appId = miniAppActivity.getAppId();
        Intrinsics.e(appId);
        if (tmcAppInfoManager.getAppModel(miniAppActivity, new AppInfoQuery(appId)) != null) {
            AppUtils appUtils = AppUtils.INSTANCE;
            String appId2 = miniAppActivity.getAppId();
            Intrinsics.e(appId2);
            if (!appUtils.queryShortcutExist(miniAppActivity, appId2)) {
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                String appId3 = miniAppActivity.getAppId();
                PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_PIN_FOR_LATER_EX;
                Bundle bundle = new Bundle();
                bundle.putString(CampaignEx.JSON_KEY_TITLE, "add_desktop");
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.record(appId3, pointAnalyseType, "", bundle);
                return miniAppActivity;
            }
        }
        if (TextUtils.isEmpty(miniAppActivity.getTempAppName()) || TextUtils.isEmpty(miniAppActivity.getTempAppLogo())) {
            return null;
        }
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId4 = miniAppActivity.getAppId();
        PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_PIN_FOR_LATER_EX;
        Bundle bundle2 = new Bundle();
        bundle2.putString(CampaignEx.JSON_KEY_TITLE, "add_desktop");
        Unit unit2 = Unit.f67061a;
        performanceAnalyseProxy2.record(appId4, pointAnalyseType2, "", bundle2);
        return miniAppActivity;
    }

    private static final boolean isExistShortcuts(Context context) {
        return AppUtils.INSTANCE.queryShortcutExist(context, "1000886706715795456");
    }

    public static final void pinForLater(MiniAppActivity miniAppActivity) {
        String tempAppLogo;
        String tempAppName;
        Intrinsics.h(miniAppActivity, "<this>");
        if (TextUtils.isEmpty(miniAppActivity.getAppId())) {
            return;
        }
        TmcAppInfoManager tmcAppInfoManager = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);
        String appId = miniAppActivity.getAppId();
        Intrinsics.e(appId);
        AppModel appModel = tmcAppInfoManager.getAppModel(miniAppActivity, new AppInfoQuery(appId));
        if (appModel == null) {
            tempAppName = miniAppActivity.getTempAppName();
            tempAppLogo = miniAppActivity.getTempAppLogo();
        } else {
            String name = appModel.getName();
            if (name == null) {
                name = "";
            }
            String logo = appModel.getLogo();
            if (logo == null) {
                logo = "";
            }
            String str = name;
            tempAppLogo = logo;
            tempAppName = str;
        }
        if (TextUtils.isEmpty(tempAppName) || TextUtils.isEmpty(tempAppLogo)) {
            return;
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId2 = miniAppActivity.getAppId();
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_PIN_FOR_LATER_CLICK;
        Bundle bundle = new Bundle();
        bundle.putString(CampaignEx.JSON_KEY_TITLE, "add_desktop");
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record(appId2, pointAnalyseType, "", bundle);
        AddHomeToScreenUtils addHomeToScreenUtils = AddHomeToScreenUtils.INSTANCE;
        String appId3 = miniAppActivity.getAppId();
        AddHomeToScreenUtils.createShortcutByLogoUrl$default(addHomeToScreenUtils, miniAppActivity, new MiniAddHomeDataModel(appId3 != null ? appId3 : "", tempAppName, tempAppLogo), "7", false, true, null, 32, null);
    }
}
