package com.cloud.tmc.integration.ui.action;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\rH&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H&J \u0010\u0014\u001a\u00020\u00032\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0016j\b\u0012\u0004\u0012\u00020\u0013`\u0017H&J0\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\r2\b\u0010\u001b\u001a\u0004\u0018\u00010\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J0\u0010\u001f\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\r2\u0016\b\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020 \u0018\u00010#H&¨\u0006$"}, d2 = {"Lcom/cloud/tmc/integration/ui/action/TabBarAction;", "", "hideTabBar", "", "animation", "hideTabBarRedDot", "index", "", "hideTabBarUnreadIcon", "loadTabBar", "tabBar", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", TmcConstants.KEY_MINI_COMMONRES_ID, "", "removeTabBarBadge", "setTabBarBadge", "badgeText", "setTabBarItem", "tab", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;", "setTabBarItems", "tabs", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "setTabBarStyle", TtmlNode.ATTR_TTS_COLOR, "selectedColor", "backgroundColor", "borderStyle", "showTabBar", "showTabBarRedDot", "showTabBarUnreadIcon", "", "iconPath", "block", "Lkotlin/Function1;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface TabBarAction {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void showTabBarUnreadIcon$default(TabBarAction tabBarAction, int i11, String str, Function1 function1, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showTabBarUnreadIcon");
            }
            if ((i12 & 4) != 0) {
                function1 = null;
            }
            tabBarAction.showTabBarUnreadIcon(i11, str, function1);
        }
    }

    boolean hideTabBar(boolean animation);

    boolean hideTabBarRedDot(int index);

    boolean hideTabBarUnreadIcon(int index);

    boolean loadTabBar(MiniAppConfigModel.TabBarBean tabBar, String commonresId);

    boolean removeTabBarBadge(int index);

    boolean setTabBarBadge(int index, String badgeText);

    boolean setTabBarItem(int index, MiniAppConfigModel.TabBarBean.ListBean tab);

    boolean setTabBarItems(ArrayList<MiniAppConfigModel.TabBarBean.ListBean> tabs);

    boolean setTabBarStyle(String color, String selectedColor, String backgroundColor, String borderStyle);

    boolean showTabBar(boolean animation);

    boolean showTabBarRedDot(int index);

    void showTabBarUnreadIcon(int index, String iconPath, Function1<? super Boolean, Unit> block);
}
