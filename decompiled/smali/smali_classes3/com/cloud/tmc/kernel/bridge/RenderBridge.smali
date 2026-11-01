.class public interface abstract Lcom/cloud/tmc/kernel/bridge/RenderBridge;
.super Ljava/lang/Object;


# virtual methods
.method public abstract sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
.end method

.method public abstract setGlobalObject(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
.end method

.method public abstract takeCallback(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;
.end method
