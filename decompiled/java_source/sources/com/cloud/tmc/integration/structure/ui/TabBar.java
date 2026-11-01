package com.cloud.tmc.integration.structure.ui;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J0\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bH&J&\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u000bH&J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J8\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u001fH&J\u0012\u0010 \u001a\u00020\u00122\b\u0010!\u001a\u0004\u0018\u00010\u000bH&J\u001e\u0010\"\u001a\u00020\u00032\f\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u0015\u001a\u00020\u0016H&J \u0010&\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010'\u001a\u00020%2\u0006\u0010\u0015\u001a\u00020\u0016H&¨\u0006("}, d2 = {"Lcom/cloud/tmc/integration/structure/ui/TabBar;", "", "hideTabBar", "", "animation", "isShow", "removeTabBarBadge", "index", "", "setTabBarBadge", "badgeText", "", "setTabBarStyle", TtmlNode.ATTR_TTS_COLOR, "selectedColor", "backgroundColor", "borderStyle", "setTabs", "", "tabBarConfig", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "page", "Lcom/cloud/tmc/integration/structure/Page;", "commonResId", "setUnreadIconVisible", "visible", "setUnreadVisible", "showTabBar", "showTabBarUnreadIcon", "iconPath", "block", "Lkotlin/Function1;", "switchCurrentTab", FrameworkConstants.GLOBAL_DATA_KEY_PAGE_PATH, "updateAllTabs", "tabs", "", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;", "updateTabItem", "tab", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface TabBar {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ void setTabs$default(TabBar tabBar, MiniAppConfigModel.TabBarBean tabBarBean, Page page, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setTabs");
            }
            if ((i11 & 4) != 0) {
                str = "";
            }
            tabBar.setTabs(tabBarBean, page, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void showTabBarUnreadIcon$default(TabBar tabBar, int i11, String str, Page page, Function1 function1, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showTabBarUnreadIcon");
            }
            if ((i12 & 8) != 0) {
                function1 = null;
            }
            tabBar.showTabBarUnreadIcon(i11, str, page, function1);
        }
    }

    boolean hideTabBar(boolean animation);

    boolean isShow();

    boolean removeTabBarBadge(int index);

    boolean setTabBarBadge(int index, String badgeText);

    boolean setTabBarStyle(String color, String selectedColor, String backgroundColor, String borderStyle);

    void setTabs(MiniAppConfigModel.TabBarBean tabBarConfig, Page page, String commonResId);

    boolean setUnreadIconVisible(int index, boolean visible);

    boolean setUnreadVisible(int index, boolean visible);

    boolean showTabBar(boolean animation);

    void showTabBarUnreadIcon(int index, String iconPath, Page page, Function1<? super Boolean, Unit> block);

    void switchCurrentTab(String pagePath);

    boolean updateAllTabs(List<MiniAppConfigModel.TabBarBean.ListBean> tabs, Page page);

    boolean updateTabItem(int index, MiniAppConfigModel.TabBarBean.ListBean tab, Page page);
}
