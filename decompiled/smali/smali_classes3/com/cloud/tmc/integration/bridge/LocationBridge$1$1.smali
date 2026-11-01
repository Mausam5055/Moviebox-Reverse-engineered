.class Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/CommonDialogCallback;


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

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClick()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "errMsg"

    const-string v3, "not open GPS:LB001"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public onRightClick()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/LocationBridge$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "errMsg"

    const-string v3, "not open GPS,go setting:LB002"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LocationUtils;->openGpsSettings()V

    return-void
.end method
