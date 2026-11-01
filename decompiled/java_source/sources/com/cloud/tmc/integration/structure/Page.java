package com.cloud.tmc.integration.structure;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.kernel.annotation.Local;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.node.DataNode;
import com.cloud.tmc.kernel.node.KeyBoardNode;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.node.TabBarNode;
import com.cloud.tmc.kernel.node.TitleBarNode;
import com.cloud.tmc.kernel.node.ValueStore;
import com.cloud.tmc.kernel.render.IRender;

/* JADX INFO: loaded from: classes3.dex */
public interface Page extends ValueStore, DataNode, Scope, TitleBarNode, TabBarNode, KeyBoardNode {
    public static final String SOURCE_NAVIGATE_BACK = "navigateBack";
    public static final String SOURCE_RELAUNCH = "reLaunch";

    public static class AnimStore {
        public boolean disableEnter;
        public boolean disableExit;

        public AnimStore() {
            this.disableEnter = false;
            this.disableExit = false;
        }

        public AnimStore(boolean z10, boolean z11) {
            this.disableEnter = z10;
            this.disableExit = z11;
        }
    }

    public interface CreateRenderListener {
        void success();
    }

    public interface ExitListener {
        void onExit();
    }

    public interface RenderReadyListener {
        void onRenderReady();
    }

    public static class TaskContext {
        public int needToExitNum;
        public String routeType;
        public String source;
        public Page targetPageOnProcess;

        public TaskContext(int i11, Page page, String str, String str2) {
            this.source = "navigateBack";
            this.routeType = "navigateBack";
            this.needToExitNum = i11;
            this.targetPageOnProcess = page;
            if (!TextUtils.isEmpty(str)) {
                this.source = str;
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.routeType = str2;
        }
    }

    void addRenderReadyListener(RenderReadyListener renderReadyListener);

    boolean backPressed();

    void bindContext(PageContext pageContext, Boolean bool, CreateRenderListener createRenderListener);

    String createPageRandomIdByGAID();

    void destroy();

    void enter();

    void exit(boolean z10);

    void exit(boolean z10, TaskContext taskContext);

    @Nullable
    @Local
    App getApp();

    @Nullable
    AppLoadResult getAppLoadResult();

    ExtensionManager getExtensionManager();

    @Local
    String getOriginalURI();

    PageChainContext getPageChainContext();

    @Nullable
    PageContext getPageContext();

    String getPageId();

    String getPagePath();

    @Nullable
    String getPageRandomIdByGAId();

    String getPageURI();

    IRender getRender();

    @Local
    Bundle getSceneParams();

    @Local
    Bundle getStartParams();

    @Nullable
    MiniAppConfigModel.TabBarBean getTabBarConfig();

    MiniAppConfigModel.WindowBean getWindow();

    void hide();

    boolean isDestroyed();

    boolean isExited();

    boolean isHide();

    boolean isHomePage();

    boolean isPageLoaded();

    boolean isRenderReady();

    boolean isShow();

    boolean isTabPage();

    boolean isUseForEmbed();

    boolean loadTabBar(MiniAppConfigModel.TabBarBean tabBarBean);

    void pause();

    void refreshApp();

    void reload();

    String resetPageRandomIdByGAID();

    void resume();

    void setExitListener(ExitListener exitListener);

    void setPageChainContext(PageChainContext pageChainContext);

    void setPageLoaded();

    void setTabPage(boolean z10);

    void show();
}
