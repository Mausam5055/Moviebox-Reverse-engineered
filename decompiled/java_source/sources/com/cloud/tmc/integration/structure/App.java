package com.cloud.tmc.integration.structure;

import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.callback.IAppCallback;
import com.cloud.tmc.integration.callback.IAsyncStartLoadingCallback;
import com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback;
import com.cloud.tmc.integration.callback.ILoadHtmlDataCallback;
import com.cloud.tmc.integration.callback.IShowAddHomeCallback;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppAutoPopover;
import com.cloud.tmc.integration.processor.IBackPressedProcessor;
import com.cloud.tmc.kernel.annotation.Local;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.node.DataNode;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.node.ValueStore;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.google.gson.JsonObject;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes3.dex */
public interface App extends ValueStore, DataNode, Scope {

    public interface PageReadyListener {
        void onPageReady(Page page);
    }

    @Keep
    public static class PopParams {
        public JsonObject data;

        public PopParams(JsonObject jsonObject) {
            this.data = jsonObject;
        }
    }

    @Keep
    public static class ResumeParams {
        public JsonObject data;

        public ResumeParams(JsonObject jsonObject) {
            this.data = jsonObject;
        }
    }

    void addPageReadyListener(PageReadyListener pageReadyListener);

    boolean backPressed();

    void backToHeaderPage();

    void bindContext(@NonNull AppContext appContext);

    void exit();

    void exitAllThenPushPage(String str, Bundle bundle, Bundle bundle2);

    void exitToHomePage();

    @Nullable
    Page getActivePage();

    int getActivePageIndex();

    boolean getAddHomeShowStatus(int i11);

    int getAlivePageCount();

    AppChainContext getAppChainContext();

    @Nullable
    AppContext getAppContext();

    @Local
    String getAppId();

    ICheckMiniAppLifecycleCallback getAppLifecycleCallback();

    AppManager getAppManager();

    AppModel getAppModel();

    @Local
    String getAppType();

    @Local
    String getAppVersion();

    IAsyncStartLoadingCallback getAsyncStartLoadingCallback();

    IBackPressedProcessor getBackPressedProcessor();

    IEngine getEngineProxy();

    ExtensionManager getExtensionManager();

    @Nullable
    Page getFirstPage();

    boolean getHideMiniAppLoadingStatus();

    String getHomePagePath();

    IFileResourceManager getIFileResourceManager();

    IImageResourceManager getImageResourceManagerProxy();

    String getInterectCallbackId();

    ILoadHtmlDataCallback getLoadHtmlDataCallback();

    boolean getMFAHStatus();

    MiniAppAutoPopover getMiniAppAutoPopover();

    boolean getMiniAppLoadStatus();

    Page getPageByIndex(int i11);

    Page getPageByNodeId(long j11);

    int getPageType(@NonNull String str);

    LinkedHashMap<String, Runnable> getPermissionInterectMap();

    Page getPrePage();

    @NonNull
    String getRouteType(@NonNull String str);

    @NonNull
    String getRouteType(@NonNull String str, boolean z10);

    Bundle getSceneParams();

    @Local
    Bundle getStartParams();

    long getStartTime();

    @Local
    long getStartToken();

    @Local
    String getStartUrl();

    boolean hasHomePage();

    void hideMiniAppAddHomeBar();

    void init(String str, Bundle bundle, Bundle bundle2);

    boolean isDestroyed();

    boolean isExited();

    boolean isFirstPage();

    boolean isTinyApp();

    void notifyAddHomeShow(int i11);

    void pause();

    void performBack();

    void popPage(@Nullable JsonObject jsonObject);

    void popTo(int i11, boolean z10, @Nullable JsonObject jsonObject);

    void pushPage(String str, Bundle bundle, Bundle bundle2);

    void pushWebViewPage(String str, Bundle bundle, Bundle bundle2);

    void putPageType(@NonNull String str, int i11);

    void putRouteType(@NonNull String str, @NonNull String str2);

    void redirectTo(String str, Bundle bundle, Bundle bundle2);

    void relaunchToUrl(String str, Bundle bundle, Bundle bundle2);

    void removePage(@NonNull Page page, boolean z10, @Nullable Page.TaskContext taskContext);

    void restart(Bundle bundle, Bundle bundle2);

    void resume();

    void setAddhomeShowCallback(IShowAddHomeCallback iShowAddHomeCallback);

    void setAppCallback(IAppCallback iAppCallback);

    void setAppChainContext(AppChainContext appChainContext);

    void setAppStartTime(long j11);

    void setAppType(String str);

    void setAsyncStartLoadingCallback(IAsyncStartLoadingCallback iAsyncStartLoadingCallback);

    void setLoadHtmlDataCallback(ILoadHtmlDataCallback iLoadHtmlDataCallback);

    void setMiniAppAutoPopover(MiniAppAutoPopover miniAppAutoPopover);

    void setMiniAppLoadStatus(boolean z10);

    void setMiniappLifecycleCallback(ICheckMiniAppLifecycleCallback iCheckMiniAppLifecycleCallback);

    void start();

    void stop();

    void switchTab(String str, Bundle bundle, Bundle bundle2);

    void updateAddHomeShowStatus(int i11);

    void updateAppModel(AppModel appModel);

    void updateHideMiniappLoadingStatus(boolean z10);

    void updateInterectCallbackId(String str);

    void updateMFAHStatus(boolean z10);
}
