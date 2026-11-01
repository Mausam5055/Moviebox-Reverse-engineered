.class public interface abstract Lcom/cloud/tmc/integration/structure/Page;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/node/ValueStore;
.implements Lcom/cloud/tmc/kernel/node/DataNode;
.implements Lcom/cloud/tmc/kernel/node/Scope;
.implements Lcom/cloud/tmc/kernel/node/TitleBarNode;
.implements Lcom/cloud/tmc/kernel/node/TabBarNode;
.implements Lcom/cloud/tmc/kernel/node/KeyBoardNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;,
        Lcom/cloud/tmc/integration/structure/Page$ExitListener;,
        Lcom/cloud/tmc/integration/structure/Page$RenderReadyListener;,
        Lcom/cloud/tmc/integration/structure/Page$AnimStore;,
        Lcom/cloud/tmc/integration/structure/Page$TaskContext;
    }
.end annotation


# static fields
.field public static final SOURCE_NAVIGATE_BACK:Ljava/lang/String; = "navigateBack"

.field public static final SOURCE_RELAUNCH:Ljava/lang/String; = "reLaunch"


# virtual methods
.method public abstract addRenderReadyListener(Lcom/cloud/tmc/integration/structure/Page$RenderReadyListener;)V
.end method

.method public abstract backPressed()Z
.end method

.method public abstract bindContext(Lcom/cloud/tmc/integration/structure/PageContext;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
.end method

.method public abstract createPageRandomIdByGAID()Ljava/lang/String;
.end method

.method public abstract destroy()V
.end method

.method public abstract enter()V
.end method

.method public abstract exit(Z)V
.end method

.method public abstract exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
.end method

.method public abstract getApp()Lcom/cloud/tmc/integration/structure/App;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/Local;
    .end annotation
.end method

.method public abstract getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
.end method

.method public abstract getOriginalURI()Ljava/lang/String;
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/Local;
    .end annotation
.end method

.method public abstract getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;
.end method

.method public abstract getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPageId()Ljava/lang/String;
.end method

.method public abstract getPagePath()Ljava/lang/String;
.end method

.method public abstract getPageRandomIdByGAId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPageURI()Ljava/lang/String;
.end method

.method public abstract getRender()Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract getSceneParams()Landroid/os/Bundle;
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/Local;
    .end annotation
.end method

.method public abstract getStartParams()Landroid/os/Bundle;
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/Local;
    .end annotation
.end method

.method public abstract getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
.end method

.method public abstract hide()V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isExited()Z
.end method

.method public abstract isHide()Z
.end method

.method public abstract isHomePage()Z
.end method

.method public abstract isPageLoaded()Z
.end method

.method public abstract isRenderReady()Z
.end method

.method public abstract isShow()Z
.end method

.method public abstract isTabPage()Z
.end method

.method public abstract isUseForEmbed()Z
.end method

.method public abstract loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract refreshApp()V
.end method

.method public abstract reload()V
.end method

.method public abstract resetPageRandomIdByGAID()Ljava/lang/String;
.end method

.method public abstract resume()V
.end method

.method public abstract setExitListener(Lcom/cloud/tmc/integration/structure/Page$ExitListener;)V
.end method

.method public abstract setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
.end method

.method public abstract setPageLoaded()V
.end method

.method public abstract setTabPage(Z)V
.end method

.method public abstract show()V
.end method
