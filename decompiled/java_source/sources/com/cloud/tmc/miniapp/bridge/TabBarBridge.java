package com.cloud.tmc.miniapp.bridge;

import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.TabBarManualConfigStore;
import com.cloud.tmc.integration.model.TabReSelectedStore;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.ui.p001native.NativeTabView;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
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
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class TabBarBridge implements BridgeExtension {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO00o {
    }

    public static final class OooO0O0 extends Lambda implements Function1<Boolean, Unit> {
        public final /* synthetic */ BridgeCallback OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(BridgeCallback bridgeCallback) {
            super(1);
            this.OooO00o = bridgeCallback;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            if (((Boolean) obj).booleanValue()) {
                BridgeCallback bridgeCallback = this.OooO00o;
                if (bridgeCallback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "ok");
                    bridgeCallback.sendSuccessResponse(jsonObject);
                }
            } else {
                BridgeCallback bridgeCallback2 = this.OooO00o;
                if (bridgeCallback2 != null) {
                    com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback2);
                }
            }
            return Unit.f67061a;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void hideTabBar(@BindingNode(App.class) App app, @BindingParam({"animation"}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.hideTabBar(z10)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else {
            activePage.putStringValue(TmcConstants.KEY_IS_API_SHOW_TAB_BAR_ENABLED, "hideTabBar");
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", "ok");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void hideTabBarRedDot(@BindingNode(App.class) App app, @BindingParam(intDefault = -1, value = {"index"}) int i11, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.hideTabBarRedDot(i11)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void hideTabBarUnreadIcon(@BindingNode(App.class) App app, @BindingParam(intDefault = -1, value = {"index"}) int i11, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
                return;
            }
            return;
        }
        try {
            if (activePage.hideTabBarUnreadIcon(i11)) {
                if (bridgeCallback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "ok");
                    bridgeCallback.sendSuccessResponse(jsonObject);
                }
            } else if (bridgeCallback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", "set tab item failed,please check the config: T10003");
                bridgeCallback.sendFailResponse(jsonObject2);
            }
        } catch (Throwable th2) {
            TmcLogger.e("TabBarBridge", th2);
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "load tab bar fail, please check the config: T10005", bridgeCallback);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void loadTabBar(@BindingNode(App.class) App app, @BindingParam({"tabBarConfig"}) String tabBarConfig, @BindingCallback BridgeCallback callback) {
        MiniAppConfigModel.TabBarBean tabBarBean;
        boolean z10;
        MiniAppConfigModel miniAppConfigModel;
        Intrinsics.h(tabBarConfig, "tabBarConfig");
        Intrinsics.h(callback, "callback");
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || tabBarConfig.length() == 0) {
            com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, callback);
            return;
        }
        AppLoadResult appLoadResult = activePage.getAppLoadResult();
        int i11 = 0;
        if (!((appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) ? false : miniAppConfigModel.tabBarManual())) {
            com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "load tab bar fail, app.json is not config handleTabBarLoad as manual: T10004", callback);
            return;
        }
        TmcLogger.d("TabBarBridge", "load tab config: " + tabBarConfig);
        try {
            Type type = new TypeToken<MiniAppConfigModel.TabBarBean>() { // from class: com.cloud.tmc.miniapp.bridge.TabBarBridge$loadTabBar$tabBar$1
            }.getType();
            Intrinsics.g(type, "object :\n               …del.TabBarBean>() {}.type");
            tabBarBean = (MiniAppConfigModel.TabBarBean) TmcGsonUtils.fromJson(tabBarConfig, type);
        } catch (Throwable th2) {
            TmcLogger.e("TabBarBridge", "tabBarConfig json parse error", th2);
            tabBarBean = null;
        }
        if (tabBarBean == null) {
            com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "load tab bar fail, please check the config: T10005", callback);
            return;
        }
        List<MiniAppConfigModel.TabBarBean.ListBean> list = tabBarBean.list;
        if (list != null) {
            int size = list.size();
            if (2 <= size && size < 6) {
                z10 = true;
            } else {
                TmcLogger.d("TabBarBridge", "The number of tabBarConfig list is not between 2 and 5");
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (!z10) {
            com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "load tab bar fail, The number of dynamic configurations is not between 2 and 5: T10006", callback);
            return;
        }
        AppNode appNode = app instanceof AppNode ? (AppNode) app : null;
        MiniAppConfigModel.TabBarBean tabBar = MiniAppConfigUtils.getTabBar(tabBarBean, appNode != null ? appNode.getmAppLoadResult() : null, true);
        app.setData(TabBarManualConfigStore.class, new TabBarManualConfigStore(tabBar));
        List<MiniAppConfigModel.TabBarBean.ListBean> list2 = tabBarBean.list;
        if (list2 == null) {
            i11 = -1;
            break;
        }
        Iterator<MiniAppConfigModel.TabBarBean.ListBean> it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (Intrinsics.c(it.next().pagePath, activePage.getPagePath())) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 == -1) {
            TmcLogger.d("TabBarBridge", "lazy load tab bar");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "lazy load tab bar: T10007");
            callback.sendSuccessResponse(jsonObject);
            return;
        }
        activePage.setTabPage(true);
        boolean zLoadTabBar = activePage.loadTabBar(tabBar);
        TmcLogger.d("TabBarBridge", "load tab bar result: " + zLoadTabBar);
        if (!zLoadTabBar) {
            com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, callback);
            return;
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("errMsg", "ok");
        callback.sendSuccessResponse(jsonObject2);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void offTabReselected(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
            }
        } else {
            if (!activePage.isTabPage()) {
                if (bridgeCallback != null) {
                    com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
                    return;
                }
                return;
            }
            TabReSelectedStore tabReSelectedStore = (TabReSelectedStore) app.getData(TabReSelectedStore.class, true);
            BridgeCallback bridgeCallbackRemove = (tabReSelectedStore == null ? new WeakHashMap<>() : tabReSelectedStore.getPageCache()).remove(activePage.getPageId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d("TabBarBridge", "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d("TabBarBridge", "onInitialized");
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void onTabReselected(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
            }
            if (bridgeCallback != null) {
                bridgeCallback.close();
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
            if (bridgeCallback != null) {
                bridgeCallback.close();
                return;
            }
            return;
        }
        TabReSelectedStore tabReSelectedStore = (TabReSelectedStore) app.getData(TabReSelectedStore.class, true);
        WeakHashMap<String, BridgeCallback> weakHashMap = tabReSelectedStore == null ? new WeakHashMap<>() : tabReSelectedStore.getPageCache();
        BridgeCallback bridgeCallbackRemove = weakHashMap.remove(activePage.getPageId());
        if (bridgeCallbackRemove != null) {
            bridgeCallbackRemove.close();
        }
        weakHashMap.put(activePage.getPageId(), bridgeCallback);
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void removeTabBarBadge(@BindingNode(App.class) App app, @BindingParam(intDefault = -1, value = {"index"}) int i11, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.removeTabBarBadge(i11)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void setTabBarBadge(@BindingNode(App.class) App app, @BindingParam(intDefault = -1, value = {"index"}) int i11, @BindingParam({MimeTypes.BASE_TYPE_TEXT}) String text, @BindingCallback BridgeCallback bridgeCallback) {
        Intrinsics.h(text, "text");
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0 || text.length() == 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.setTabBarBadge(i11, text)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void setTabBarItem(@BindingNode(App.class) App app, @BindingParam({"index"}) int i11, @BindingParam({MimeTypes.BASE_TYPE_TEXT}) String str, @BindingParam({"iconPath"}) String str2, @BindingParam({"selectedIconPath"}) String str3, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.setTabBarItem(i11, str, str2, str3)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void setTabBarItems(@BindingNode(App.class) App app, @BindingParam({"tabs"}) JsonArray jsonArray, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || jsonArray == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.setTabBarItems(jsonArray)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void setTabBarStyle(@BindingNode(App.class) App app, @BindingParam({TtmlNode.ATTR_TTS_COLOR}) String color, @BindingParam({"selectedColor"}) String selectedColor, @BindingParam({"backgroundColor"}) String backgroundColor, @BindingParam({"borderStyle"}) String borderStyle, @BindingCallback BridgeCallback bridgeCallback) {
        Intrinsics.h(color, "color");
        Intrinsics.h(selectedColor, "selectedColor");
        Intrinsics.h(backgroundColor, "backgroundColor");
        Intrinsics.h(borderStyle, "borderStyle");
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.setTabBarStyle(StringExtKt.takeIfNotEmpty(color), StringExtKt.takeIfNotEmpty(selectedColor), StringExtKt.takeIfNotEmpty(backgroundColor), StringExtKt.takeIfNotEmpty(borderStyle))) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showTabBar(@BindingNode(App.class) App app, @BindingParam({"animation"}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.showTabBar(z10)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else {
            activePage.putStringValue(TmcConstants.KEY_IS_API_SHOW_TAB_BAR_ENABLED, "showTabBar");
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", "ok");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showTabBarRedDot(@BindingNode(App.class) App app, @BindingParam(intDefault = -1, value = {"index"}) int i11, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else if (!activePage.showTabBarRedDot(i11)) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,please check the config: T10003", bridgeCallback);
            }
        } else if (bridgeCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "ok");
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showTabBarUnreadIcon(@BindingNode(App.class) App app, @BindingParam(intDefault = -1, value = {"index"}) int i11, @BindingParam({"iconPath"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        Page activePage = app != null ? app.getActivePage() : null;
        if (activePage == null || i11 < 0) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                return;
            }
            return;
        }
        if (!activePage.isTabPage()) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "set tab item failed,it's not tab page: T10002", bridgeCallback);
            }
        } else {
            if (str == null || str.length() == 0) {
                if (bridgeCallback != null) {
                    com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", NativeTabView.ERROR_MSG_T10001, bridgeCallback);
                    return;
                }
                return;
            }
            try {
                activePage.showTabBarUnreadIcon(i11, str, new OooO0O0(bridgeCallback));
            } catch (Throwable th2) {
                TmcLogger.e("TabBarBridge", th2);
                if (bridgeCallback != null) {
                    com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "load tab bar fail, please check the config: T10005", bridgeCallback);
                }
            }
        }
    }
}
