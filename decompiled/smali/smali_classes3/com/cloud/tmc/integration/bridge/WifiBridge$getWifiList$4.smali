.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;->getWifiList(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $receiver:Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

.field final synthetic $wifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$receiver:Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const/16 v2, 0x2ee7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "errCode"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "errMsg"

    const-string v3, "not have location permission: W12007"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$isLocationOpen(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const/16 v2, 0x2ee6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "errCode"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "errMsg"

    const-string v3, "gps not turned on: W12006"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$receiver:Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$registerWifiReceiver(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$getWifiList$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_3
    :goto_0
    return-void
.end method
