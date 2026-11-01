package com.cloud.tmc.integration.bridge;

import android.text.TextUtils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.AbilitiesUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
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
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes3.dex */
public class NavigationBarBridge implements BridgeExtension {
    private static final String TAG = "NavigationBarBridge";

    public static final class H5NavigationStyle {
        private String style;

        public H5NavigationStyle(String str) {
            this.style = str;
        }

        public String getStyle() {
            return this.style;
        }
    }

    private boolean isH5NavigationCustomStyle(Page page) {
        if (page == null || page.getData(H5NavigationStyle.class) == null) {
            return false;
        }
        return "custom".equals(((H5NavigationStyle) page.getData(H5NavigationStyle.class)).getStyle());
    }

    private boolean isH5NavigationHideStyle(Page page) {
        if (page == null || page.getData(H5NavigationStyle.class) == null) {
            return false;
        }
        return IntegrationConstants.NAVIGATION_STYLE_HIDE.equals(((H5NavigationStyle) page.getData(H5NavigationStyle.class)).getStyle());
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void changeNavigationBarProgress(@BindingNode(App.class) App app, @BindingParam(name = {"startProgress"}) Integer num, @BindingParam(name = {"endProgress"}) Integer num2, @BindingParam(longDefault = 200, name = {"duration"}) Long l11, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (num.intValue() > 100 || num.intValue() < 0) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "The number of startProgress should be between 1 and 100!").build());
                return;
            }
            return;
        }
        if (num2.intValue() > 100 || num2.intValue() < 0 || num.intValue() >= num2.intValue()) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "The number of endProgress should be between 1 and 100,with startProgress must be less than with endProgress!").build());
            }
        } else if (l11.longValue() > 60000 || l11.longValue() < 0) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "The duration must be in the range 0 to 60000 milliseconds!").build());
            }
        } else {
            activePage.changeNavigationBarProgress(num.intValue(), num2.intValue(), l11.longValue() / ((long) (num2.intValue() - num.intValue())));
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void getStatusBarHeight(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else if (app.getActivePage() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            int statusHeight = MiniBarUtils.getStatusHeight();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("statusBarHeight", Integer.valueOf(statusHeight)).build());
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void hideAddScreenButton(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        String appId = app.getAppId();
        if (activePage == null || TextUtils.isEmpty(appId)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else if (!AbilitiesUtils.INSTANCE.getAbilityEnableStatus(appId, TmcConstants.MENU_KEY_TITLE_BAR_ADD_HOME)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed, ability has no support: N10001").build());
            }
        } else {
            activePage.putStringValue(TmcConstants.KEY_IS_API_ADD_SCREEN_ENABLED, "hideAddScreenButton");
            activePage.hideAddScreenButton();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void hideHomeButton(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            activePage.putStringValue(TmcConstants.KEY_IS_API_SHOW_HOME_ENABLED, "hideHomeButton");
            activePage.hideHomeButton();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void hideNavigationBarLoading(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            activePage.hideNavigationBarLoading();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized");
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void setNavigationBarBackgroundColor(@BindingNode(App.class) App app, @BindingParam(name = {TtmlNode.ATTR_TTS_COLOR}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration((AppLoadResult) BundleUtils.getParcelable(activePage.getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT), activePage.getPagePath());
        if (windowOptimalConfiguration != null && (windowOptimalConfiguration.navigationStyleIsCustom() || isH5NavigationCustomStyle(activePage))) {
            activePage.setNavigationBarBackgroundColor(str);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void setNavigationBarIconStyle(@BindingNode(App.class) App app, @BindingParam(name = {TtmlNode.ATTR_TTS_COLOR}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration((AppLoadResult) BundleUtils.getParcelable(activePage.getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT), activePage.getPagePath());
        if (windowOptimalConfiguration != null && (windowOptimalConfiguration.navigationStyleIsCustom() || windowOptimalConfiguration.navigationStyleIsHide())) {
            MiniAppConfigUtils.setCapsuleViewBgColor(str);
            activePage.setNavigationBarIconStyle("white".equals(str));
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void setNavigationBarTitle(@BindingNode(App.class) App app, @BindingParam(name = {CampaignEx.JSON_KEY_TITLE}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            activePage.setNavigationBarTitle(str);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void setNavigationBarTitleColor(@BindingNode(App.class) App app, @BindingParam(name = {TtmlNode.ATTR_TTS_COLOR}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration((AppLoadResult) BundleUtils.getParcelable(activePage.getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT), activePage.getPagePath());
        if (windowOptimalConfiguration != null && (windowOptimalConfiguration.navigationStyleIsCustom() || windowOptimalConfiguration.navigationStyleIsHide() || isH5NavigationCustomStyle(activePage) || isH5NavigationHideStyle(activePage))) {
            activePage.setNavigationBarTitleColor("white".equals(str));
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void setNavigationBarTransparent(@BindingNode(App.class) App app, @BindingParam(name = {OfflineConstantsKt.OFFLINE_CONFIG_ENABLE}) Boolean bool, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration((AppLoadResult) BundleUtils.getParcelable(activePage.getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT), activePage.getPagePath());
        if (windowOptimalConfiguration != null && (windowOptimalConfiguration.navigationStyleIsCustom() || isH5NavigationCustomStyle(activePage))) {
            activePage.setNavigationBarTransparent(bool.booleanValue());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void setNavigationStyle(@BindingNode(App.class) App app, @BindingParam(name = {TtmlNode.TAG_STYLE}) String str, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (TextUtils.isEmpty(str) || app == null || page == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else if ("custom".equals(str) || "default".equals(str) || IntegrationConstants.NAVIGATION_STYLE_HIDE.equals(str)) {
            page.setData(H5NavigationStyle.class, new H5NavigationStyle(str));
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void showAddScreenButton(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        String appId = app.getAppId();
        if (activePage == null || TextUtils.isEmpty(appId)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else if (!AbilitiesUtils.INSTANCE.getAbilityEnableStatus(appId, TmcConstants.MENU_KEY_TITLE_BAR_ADD_HOME)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed, ability has no support: N10001").build());
            }
        } else {
            activePage.putStringValue(TmcConstants.KEY_IS_API_ADD_SCREEN_ENABLED, "showAddScreenButton");
            activePage.showAddScreenButton();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void showHomeButton(@BindingNode(App.class) App app, @BindingParam(name = {EventConstants.KEY_ACTION}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            if (AppUtils.isHomepage(activePage, activePage.getAppLoadResult())) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                activePage.setHomeAction(MiniAppConfigUtils.navigationBarAction(str), true);
            }
            activePage.putStringValue(TmcConstants.KEY_IS_API_SHOW_HOME_ENABLED, "showHomeButton");
            activePage.showHomeButton();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void showNavigationBarLoading(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Page activePage = app.getActivePage();
        if (activePage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            activePage.showNavigationBarLoading();
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }
}
