.class public interface abstract Lcom/cloud/tmc/kernel/render/IWebView;
.super Ljava/lang/Object;


# virtual methods
.method public abstract create()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getMiniAppType()I
.end method

.method public abstract getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
.end method

.method public abstract goBack()V
.end method

.method public abstract isResume()Z
.end method

.method public abstract load(Ljava/lang/String;)V
.end method

.method public abstract load(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract registerCustomViewVisiableCallback(Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V
.end method

.method public abstract registerMessageChannel()V
.end method

.method public abstract registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V
.end method

.method public abstract registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
.end method

.method public abstract reload()V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setBgColor(Ljava/lang/String;)V
.end method

.method public abstract setCommonresId(Ljava/lang/String;)V
.end method

.method public abstract setMiniAppType(I)V
.end method

.method public abstract setNode(Lcom/cloud/tmc/kernel/node/Node;)V
.end method

.method public abstract setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
.end method

.method public abstract setSupportFullScreen(Z)V
.end method
