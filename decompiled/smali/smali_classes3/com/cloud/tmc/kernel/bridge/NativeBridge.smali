.class public interface abstract Lcom/cloud/tmc/kernel/bridge/NativeBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract bindEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
.end method

.method public abstract release()V
.end method

.method public abstract sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
