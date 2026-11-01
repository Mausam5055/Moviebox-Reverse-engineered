package com.cloud.tmc.integration.utils;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\tH\u0002J&\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007J\u001c\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007J\u0012\u0010\n\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u0012J&\u0010\u0013\u001a\u00020\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0007J\u001e\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0004H\u0007J\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0002J\u0018\u0010!\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;", "", "()V", "forceCapsuleViewBgColor", "", "forceTabBarBean", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "getDefaultTabBarConfig", "getDefaultWindowConfig", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "getTabBar", "tabBar", TmcConstants.EXTRA_APP_LOAD_RESULT, "Lcom/cloud/tmc/integration/structure/AppLoadResult;", "force", "", "getTitleBarNodeMode", "", "()Ljava/lang/Integer;", "getWindowConfig", "appWindowConfig", "pageWindowConfig", "customPageWindowConfig", "getWindowOptimalConfiguration", FrameworkConstants.GLOBAL_DATA_KEY_PAGE_PATH, "navigationBarAction", EventConstants.KEY_ACTION, "setCapsuleViewBgColor", "", TtmlNode.ATTR_TTS_COLOR, "setupTabBarConfig", "default", "target", "setupWindowConfig", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MiniAppConfigUtils {
    public static final MiniAppConfigUtils INSTANCE = new MiniAppConfigUtils();
    private static String forceCapsuleViewBgColor = "";
    private static MiniAppConfigModel.TabBarBean forceTabBarBean;

    private MiniAppConfigUtils() {
    }

    private final MiniAppConfigModel.TabBarBean getDefaultTabBarConfig() {
        MiniAppConfigModel.TabBarBean tabBarBean = new MiniAppConfigModel.TabBarBean();
        tabBarBean.setBorderStyle("black");
        tabBarBean.setPosition(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
        tabBarBean.setCustom(Boolean.FALSE);
        return tabBarBean;
    }

    private final MiniAppConfigModel.WindowBean getDefaultWindowConfig() {
        MiniAppConfigModel.WindowBean windowBean = new MiniAppConfigModel.WindowBean();
        Boolean bool = Boolean.FALSE;
        windowBean.setEnablePullDownRefresh(bool);
        windowBean.setEnablePullUpRefresh(bool);
        windowBean.setRefreshHeaderStyle("default");
        Boolean bool2 = Boolean.TRUE;
        windowBean.setRefreshHeaderCustomTextEnable(bool2);
        windowBean.setRefreshHeaderTranslationContent(bool2);
        windowBean.setEnableTransparentStatusBar(bool);
        windowBean.setEnableNavigationBarLoading(bool2);
        windowBean.setNavigationStyle("default");
        windowBean.setNavigationBarBackgroundColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        windowBean.setNavigationBarTextStyle("black");
        windowBean.setNavigationBarIconStyle("black");
        windowBean.setNavigationBarHomeAction(IntegrationConstants.NAVIGATION_BAR_HOME_ACTION_DEFAULT);
        windowBean.setHandleWebviewPreload("manual");
        windowBean.setEnablePageLoading(bool);
        windowBean.setEnableTabBarAdjustPan(bool);
        windowBean.setLimitTextZoom(bool);
        return windowBean;
    }

    @JvmStatic
    public static final MiniAppConfigModel.TabBarBean getTabBar(MiniAppConfigModel.TabBarBean tabBar, AppLoadResult appLoadResult, boolean force) {
        MiniAppConfigModel.TabBarBean tabBarBean;
        if (!force && (tabBarBean = forceTabBarBean) != null) {
            Intrinsics.e(tabBarBean);
            return tabBarBean;
        }
        MiniAppConfigUtils miniAppConfigUtils = INSTANCE;
        MiniAppConfigModel.TabBarBean defaultTabBarConfig = miniAppConfigUtils.getDefaultTabBarConfig();
        if (!force && tabBar != null) {
            miniAppConfigUtils.setupTabBarConfig(defaultTabBarConfig, tabBar);
        }
        MiniAppConfigModel.TabBarBean tabBarBeanQueryMiniappCustomTabBar = AppUtils.INSTANCE.queryMiniappCustomTabBar(appLoadResult);
        if (tabBarBeanQueryMiniappCustomTabBar != null) {
            miniAppConfigUtils.setupTabBarConfig(defaultTabBarConfig, tabBarBeanQueryMiniappCustomTabBar);
        }
        if (force && tabBar != null) {
            miniAppConfigUtils.setupTabBarConfig(defaultTabBarConfig, tabBar);
            forceTabBarBean = defaultTabBarConfig;
        }
        return defaultTabBarConfig;
    }

    @JvmStatic
    public static final MiniAppConfigModel.TabBarBean getTabBar(MiniAppConfigModel.TabBarBean tabBar, boolean force) {
        MiniAppConfigModel.TabBarBean tabBarBean;
        if (!force && (tabBarBean = forceTabBarBean) != null) {
            Intrinsics.e(tabBarBean);
            return tabBarBean;
        }
        MiniAppConfigUtils miniAppConfigUtils = INSTANCE;
        MiniAppConfigModel.TabBarBean defaultTabBarConfig = miniAppConfigUtils.getDefaultTabBarConfig();
        if (!force && tabBar != null) {
            miniAppConfigUtils.setupTabBarConfig(defaultTabBarConfig, tabBar);
        }
        MiniAppConfigModel.TabBarBean tabBarBeanQueryMiniappCustomTabBar = AppUtils.INSTANCE.queryMiniappCustomTabBar();
        if (tabBarBeanQueryMiniappCustomTabBar != null) {
            miniAppConfigUtils.setupTabBarConfig(defaultTabBarConfig, tabBarBeanQueryMiniappCustomTabBar);
        }
        if (force && tabBar != null) {
            miniAppConfigUtils.setupTabBarConfig(defaultTabBarConfig, tabBar);
            forceTabBarBean = defaultTabBarConfig;
        }
        return defaultTabBarConfig;
    }

    @JvmStatic
    public static final MiniAppConfigModel.TabBarBean getTabBar(AppLoadResult appLoadResult) {
        MiniAppConfigModel miniAppConfigModel;
        return getTabBar((appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) ? null : miniAppConfigModel.tabBar, appLoadResult, false);
    }

    public static /* synthetic */ MiniAppConfigModel.TabBarBean getTabBar$default(MiniAppConfigModel.TabBarBean tabBarBean, AppLoadResult appLoadResult, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return getTabBar(tabBarBean, appLoadResult, z10);
    }

    public static /* synthetic */ MiniAppConfigModel.TabBarBean getTabBar$default(MiniAppConfigModel.TabBarBean tabBarBean, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return getTabBar(tabBarBean, z10);
    }

    @JvmStatic
    public static final Integer getTitleBarNodeMode() {
        if (forceCapsuleViewBgColor.length() == 0) {
            return null;
        }
        return Integer.valueOf(!Intrinsics.c("white", forceCapsuleViewBgColor) ? 1 : 0);
    }

    @JvmStatic
    public static final MiniAppConfigModel.WindowBean getWindowConfig(MiniAppConfigModel.WindowBean appWindowConfig, MiniAppConfigModel.WindowBean pageWindowConfig, MiniAppConfigModel.WindowBean customPageWindowConfig) {
        MiniAppConfigUtils miniAppConfigUtils = INSTANCE;
        MiniAppConfigModel.WindowBean defaultWindowConfig = miniAppConfigUtils.getDefaultWindowConfig();
        if (appWindowConfig != null) {
            miniAppConfigUtils.setupWindowConfig(defaultWindowConfig, appWindowConfig);
        }
        if (pageWindowConfig != null) {
            miniAppConfigUtils.setupWindowConfig(defaultWindowConfig, pageWindowConfig);
        }
        if (customPageWindowConfig != null) {
            miniAppConfigUtils.setupWindowConfig(defaultWindowConfig, customPageWindowConfig);
        }
        return defaultWindowConfig;
    }

    @JvmStatic
    public static final MiniAppConfigModel.WindowBean getWindowOptimalConfiguration(AppLoadResult appLoadResult, String pagePath) {
        MiniAppConfigModel miniAppConfigModel;
        HashMap<String, MiniAppConfigModel.PagesBean> map;
        if (appLoadResult != null) {
            try {
                miniAppConfigModel = appLoadResult.appConfigModel;
            } catch (Exception e11) {
                e11.printStackTrace();
                return null;
            }
        } else {
            miniAppConfigModel = null;
        }
        MiniAppConfigModel.WindowBean window = miniAppConfigModel != null ? miniAppConfigModel.getWindow() : null;
        MiniAppConfigModel.PagesBean pagesBean = (miniAppConfigModel == null || (map = miniAppConfigModel.launchParams) == null) ? null : map.get(UrlUtils.getPath(pagePath));
        MiniAppConfigModel.WindowBean window2 = pagesBean != null ? pagesBean.getWindow() : null;
        HashMap<String, MiniAppConfigModel.PagesBean> mapQueryMiniappCustomLaunchParams = AppUtils.INSTANCE.queryMiniappCustomLaunchParams(appLoadResult);
        MiniAppConfigModel.PagesBean pagesBean2 = mapQueryMiniappCustomLaunchParams != null ? mapQueryMiniappCustomLaunchParams.get(UrlUtils.getPath(pagePath)) : null;
        return getWindowConfig(window, window2, pagesBean2 != null ? pagesBean2.getWindow() : null);
    }

    @JvmStatic
    public static final int navigationBarAction(String action) {
        Intrinsics.h(action, "action");
        if (Intrinsics.c(action, "back")) {
            return 1;
        }
        return Intrinsics.c(action, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION) ? 2 : 0;
    }

    @JvmStatic
    public static final void setCapsuleViewBgColor(String color) {
        Intrinsics.h(color, "color");
        forceCapsuleViewBgColor = color;
    }

    private final void setupTabBarConfig(MiniAppConfigModel.TabBarBean tabBarBean, MiniAppConfigModel.TabBarBean target) {
        String strTakeIfNotEmpty = StringExtKt.takeIfNotEmpty(target.getColor());
        if (strTakeIfNotEmpty != null) {
            tabBarBean.setColor(strTakeIfNotEmpty);
        }
        String strTakeIfNotEmpty2 = StringExtKt.takeIfNotEmpty(target.getSelectedColor());
        if (strTakeIfNotEmpty2 != null) {
            tabBarBean.setSelectedColor(strTakeIfNotEmpty2);
        }
        String strTakeIfNotEmpty3 = StringExtKt.takeIfNotEmpty(target.getBackgroundColor());
        if (strTakeIfNotEmpty3 != null) {
            tabBarBean.setBackgroundColor(strTakeIfNotEmpty3);
        }
        String strTakeIfNotEmpty4 = StringExtKt.takeIfNotEmpty(target.getBorderStyle());
        if (strTakeIfNotEmpty4 != null) {
            tabBarBean.setBorderStyle(strTakeIfNotEmpty4);
        }
        List<MiniAppConfigModel.TabBarBean.ListBean> list = target.list;
        if (list != null) {
            tabBarBean.list = list;
        }
        String strTakeIfNotEmpty5 = StringExtKt.takeIfNotEmpty(target.getPosition());
        if (strTakeIfNotEmpty5 != null) {
            tabBarBean.setPosition(strTakeIfNotEmpty5);
        }
        if (target.getCustom() != null) {
            tabBarBean.setCustom(target.getCustom());
        }
    }

    private final MiniAppConfigModel.WindowBean setupWindowConfig(MiniAppConfigModel.WindowBean windowBean, MiniAppConfigModel.WindowBean target) {
        Boolean enablePullDownRefresh = target.getEnablePullDownRefresh();
        if (enablePullDownRefresh != null) {
            windowBean.setEnablePullDownRefresh(enablePullDownRefresh);
        }
        Boolean enablePullUpRefresh = target.getEnablePullUpRefresh();
        if (enablePullUpRefresh != null) {
            windowBean.setEnablePullUpRefresh(enablePullUpRefresh);
        }
        Boolean enableTransparentStatusBar = target.getEnableTransparentStatusBar();
        if (enableTransparentStatusBar != null) {
            windowBean.setEnableTransparentStatusBar(enableTransparentStatusBar);
        }
        Boolean enableNavigationBarLoading = target.getEnableNavigationBarLoading();
        if (enableNavigationBarLoading != null) {
            windowBean.setEnableNavigationBarLoading(enableNavigationBarLoading);
        }
        String navigationBarTitleText = target.getNavigationBarTitleText();
        if (navigationBarTitleText != null) {
            windowBean.setNavigationBarTitleText(navigationBarTitleText);
        }
        String navigationStyle = target.getNavigationStyle();
        if (navigationStyle != null) {
            windowBean.setNavigationStyle(navigationStyle);
        }
        String navigationBarBackgroundColor = target.getNavigationBarBackgroundColor();
        if (navigationBarBackgroundColor != null) {
            windowBean.setNavigationBarBackgroundColor(navigationBarBackgroundColor);
        }
        String navigationBarTextStyle = target.getNavigationBarTextStyle();
        if (navigationBarTextStyle != null) {
            windowBean.setNavigationBarTextStyle(navigationBarTextStyle);
        }
        String navigationBarIconStyle = target.getNavigationBarIconStyle();
        if (navigationBarIconStyle != null) {
            windowBean.setNavigationBarIconStyle(navigationBarIconStyle);
        }
        String navigationBarHomeAction = target.getNavigationBarHomeAction();
        if (navigationBarHomeAction != null) {
            windowBean.setNavigationBarHomeAction(navigationBarHomeAction);
        }
        String refreshHeaderStyle = target.getRefreshHeaderStyle();
        if (refreshHeaderStyle != null) {
            windowBean.setRefreshHeaderStyle(refreshHeaderStyle);
        }
        Boolean refreshHeaderCustomTextEnable = target.getRefreshHeaderCustomTextEnable();
        if (refreshHeaderCustomTextEnable != null) {
            windowBean.setRefreshHeaderCustomTextEnable(refreshHeaderCustomTextEnable);
        }
        String refreshHeaderCustomLoading = target.getRefreshHeaderCustomLoading();
        if (refreshHeaderCustomLoading != null) {
            windowBean.setRefreshHeaderCustomLoading(refreshHeaderCustomLoading);
        }
        String refreshHeaderCustomLoadingGif = target.getRefreshHeaderCustomLoadingGif();
        if (refreshHeaderCustomLoadingGif != null) {
            windowBean.setRefreshHeaderCustomLoadingGif(refreshHeaderCustomLoadingGif);
        }
        String refreshHeaderCustomSuccess = target.getRefreshHeaderCustomSuccess();
        if (refreshHeaderCustomSuccess != null) {
            windowBean.setRefreshHeaderCustomSuccess(refreshHeaderCustomSuccess);
        }
        String refreshHeaderCustomSuccessGif = target.getRefreshHeaderCustomSuccessGif();
        if (refreshHeaderCustomSuccessGif != null) {
            windowBean.setRefreshHeaderCustomSuccessGif(refreshHeaderCustomSuccessGif);
        }
        Boolean refreshHeaderTranslationContent = target.getRefreshHeaderTranslationContent();
        if (refreshHeaderTranslationContent != null) {
            windowBean.setRefreshHeaderTranslationContent(refreshHeaderTranslationContent);
        }
        String refreshHeaderAccentColor = target.getRefreshHeaderAccentColor();
        if (refreshHeaderAccentColor != null) {
            windowBean.setRefreshHeaderAccentColor(refreshHeaderAccentColor);
        }
        String refreshHeaderBackgroundColor = target.getRefreshHeaderBackgroundColor();
        if (refreshHeaderBackgroundColor != null) {
            windowBean.setRefreshHeaderBackgroundColor(refreshHeaderBackgroundColor);
        }
        Integer refreshHeaderDelayed = target.getRefreshHeaderDelayed();
        if (refreshHeaderDelayed != null) {
            windowBean.setRefreshHeaderDelayed(Integer.valueOf(refreshHeaderDelayed.intValue()));
        }
        String refreshFooterAccentColor = target.getRefreshFooterAccentColor();
        if (refreshFooterAccentColor != null) {
            windowBean.setRefreshFooterAccentColor(refreshFooterAccentColor);
        }
        String refreshFooterBackgroundColor = target.getRefreshFooterBackgroundColor();
        if (refreshFooterBackgroundColor != null) {
            windowBean.setRefreshFooterBackgroundColor(refreshFooterBackgroundColor);
        }
        Integer refreshFooterDelayed = target.getRefreshFooterDelayed();
        if (refreshFooterDelayed != null) {
            windowBean.setRefreshFooterDelayed(Integer.valueOf(refreshFooterDelayed.intValue()));
        }
        String contentBackgroundColor = target.getContentBackgroundColor();
        if (contentBackgroundColor != null) {
            windowBean.setContentBackgroundColor(contentBackgroundColor);
        }
        String handleWebviewPreload = target.getHandleWebviewPreload();
        if (handleWebviewPreload != null) {
            windowBean.setHandleWebviewPreload(handleWebviewPreload);
        }
        Boolean enablePageLoading = target.getEnablePageLoading();
        if (enablePageLoading != null) {
            windowBean.setEnablePageLoading(enablePageLoading);
        }
        Boolean enableTabBarAdjustPan = target.getEnableTabBarAdjustPan();
        if (enableTabBarAdjustPan != null) {
            windowBean.setEnableTabBarAdjustPan(enableTabBarAdjustPan);
        }
        String darkModeNavigationBarBackgroundColor = target.getDarkModeNavigationBarBackgroundColor();
        if (darkModeNavigationBarBackgroundColor != null) {
            windowBean.setDarkModeNavigationBarBackgroundColor(darkModeNavigationBarBackgroundColor);
        }
        String darkModeNavigationBarTextStyle = target.getDarkModeNavigationBarTextStyle();
        if (darkModeNavigationBarTextStyle != null) {
            windowBean.setDarkModeNavigationBarTextStyle(darkModeNavigationBarTextStyle);
        }
        String darkModeNavigationBarIconStyle = target.getDarkModeNavigationBarIconStyle();
        if (darkModeNavigationBarIconStyle != null) {
            windowBean.setDarkModeNavigationBarIconStyle(darkModeNavigationBarIconStyle);
        }
        String darkModeContentBackgroundColor = target.getDarkModeContentBackgroundColor();
        if (darkModeContentBackgroundColor != null) {
            windowBean.setDarkModeContentBackgroundColor(darkModeContentBackgroundColor);
        }
        Boolean limitTextZoom = target.getLimitTextZoom();
        if (limitTextZoom != null) {
            windowBean.setLimitTextZoom(limitTextZoom);
        }
        return windowBean;
    }
}
