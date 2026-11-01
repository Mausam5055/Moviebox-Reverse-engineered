.class public interface abstract Lcom/cloud/tmc/kernel/model/ApiContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract callBridgeApi(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppContext()Landroid/content/Context;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getContent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/resource/Resource;
.end method

.method public abstract getInternalView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPageId()I
.end method

.method public abstract getPluginId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRender()Lcom/cloud/tmc/kernel/render/IRender;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRenderId()I
.end method

.method public abstract getSourceProcess()Ljava/lang/String;
.end method

.method public abstract getStartParams()Landroid/os/Bundle;
.end method

.method public abstract isFromRemote()Z
.end method

.method public abstract sendEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method
