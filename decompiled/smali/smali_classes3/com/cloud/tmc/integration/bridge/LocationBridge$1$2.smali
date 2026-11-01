.class Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/LocationUtils$AddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/LocationBridge$1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAddress(Landroid/location/Address;)V
    .locals 0

    return-void
.end method

.method public onGetCountryCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/LocationBridge;

    const-string v1, ""

    invoke-static {v0, p1, v1, v1}, Lcom/cloud/tmc/integration/bridge/LocationBridge;->a(Lcom/cloud/tmc/integration/bridge/LocationBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/LocationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->clearAddressCallback()V

    return-void
.end method

.method public onGetLocation(DD)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/LocationBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/bridge/LocationBridge;->a(Lcom/cloud/tmc/integration/bridge/LocationBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    iget-object p2, p2, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/LocationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->clearAddressCallback()V

    return-void
.end method
