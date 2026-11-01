.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;->connectWifi(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0017\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4",
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
.field final synthetic $bssid:Ljava/lang/String;

.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $ssid:Ljava/lang/String;

.field final synthetic $wifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

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
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_2
    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$connectWifiV29(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    iget-object v9, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$ssid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$bssid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$password:Ljava/lang/String;

    iget-object v13, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifi$4;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-static/range {v8 .. v13}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->access$connectWifiConfig(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    :goto_1
    return-void
.end method
