.class public interface abstract Lcom/cloud/tmc/kernel/render/IRender;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract fromWarmup()Z
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getCurrentUri()Ljava/lang/String;
.end method

.method public abstract getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;
.end method

.method public abstract getFrameworkVersion()Ljava/lang/String;
.end method

.method public abstract getPage()Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
.end method

.method public abstract getRenderId()Ljava/lang/String;
.end method

.method public abstract getScrollY()I
.end method

.method public abstract getStartParams()Landroid/os/Bundle;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWarmupChannel()I
.end method

.method public abstract goBack(Lcom/cloud/tmc/kernel/render/GoBackCallback;)V
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract isDarkTheme()Ljava/lang/Boolean;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isResume()Z
.end method

.method public abstract load(Lcom/cloud/tmc/kernel/render/LoadParams;)V
.end method

.method public abstract loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V
.end method

.method public abstract registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V
.end method

.method public abstract registerPageEventCallback(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V
.end method

.method public abstract reload()V
.end method

.method public abstract runExit(Lcom/cloud/tmc/kernel/render/ExitCallback;)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setBgColor(Ljava/lang/String;)V
.end method

.method public abstract setDarkTheme(Z)V
.end method

.method public abstract setFrameworkVersion(Ljava/lang/String;)V
.end method

.method public abstract setMiniAppId(Ljava/lang/String;)V
.end method

.method public abstract setMiniAppType(I)V
.end method

.method public abstract setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
.end method

.method public abstract setSupportFullScreen(Z)V
.end method

.method public abstract setWarmup(I)V
.end method

.method public abstract setWarmupAppId(Ljava/lang/String;)V
.end method

.method public abstract setWarmupCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V
.end method

.method public abstract setWarmupEngine(Lcom/cloud/tmc/kernel/engine/IEngine;)V
.end method

.method public abstract setWarmupEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
.end method

.method public abstract setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V
.end method

.method public abstract setWarmupRenderId(Ljava/lang/String;)V
.end method

.method public abstract setWarupSuccess()V
.end method

.method public abstract showErrorView(Landroid/view/View;)V
.end method

.method public abstract warmupSuccess()Z
.end method
