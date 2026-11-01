.class public Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;
.super Ljava/lang/Object;


# instance fields
.field private callbackId:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTargetExtension:Lcom/cloud/tmc/kernel/extension/Extension;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    return-void
.end method


# virtual methods
.method protected executeSendBack(Lcom/google/gson/JsonObject;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;ZZ)V

    return-void
.end method

.method protected executeSendBack(Lcom/google/gson/JsonObject;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/KernelUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mTargetExtension:Lcom/cloud/tmc/kernel/extension/Extension;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;->onCallback(Lcom/google/gson/JsonObject;ZZ)V

    :cond_1
    return-void
.end method

.method protected executeSendMapBack(Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendMapBack(Ljava/util/HashMap;ZZ)V

    return-void
.end method

.method protected executeSendMapBack(Ljava/util/HashMap;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/KernelUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mTargetExtension:Lcom/cloud/tmc/kernel/extension/Extension;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;->onCallback(Ljava/util/HashMap;ZZ)V

    :cond_1
    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerBridgeResponse()Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mSendToNativeCallback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    return-object v0
.end method

.method public sendBridgeMapResult(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendMapBack(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public sendBridgeMapResultWithCallbackKept(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendMapBack(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public sendBridgeResult(Lcom/google/gson/JsonObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;Z)V

    return-void
.end method

.method public sendBridgeResult(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;Z)V

    return-void
.end method

.method public sendBridgeResultCloseKept(Lcom/google/gson/JsonObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;ZZ)V

    return-void
.end method

.method public sendBridgeResultWithCallbackKept(Lcom/google/gson/JsonObject;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;Z)V

    return-void
.end method

.method public sendBridgeResultWithCallbackKept(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;Z)V

    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "errCode"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "success"

    const-string p2, "false"

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->executeSendBack(Lcom/google/gson/JsonObject;Z)V

    return-void
.end method

.method public sendNoRigHtToInvoke()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "\u65e0\u6743\u8c03\u7528"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendNoRigHtToInvoke4NewJSAPIPermission()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "new jsapi permission deny"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendNotFound()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "not implemented"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendNotGrantPermission()V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "\u83b7\u53d6\u6388\u6743\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendSuccess()V
    .locals 1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendBridgeResult(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public setTargetExtension(Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->mTargetExtension:Lcom/cloud/tmc/kernel/extension/Extension;

    return-void
.end method
