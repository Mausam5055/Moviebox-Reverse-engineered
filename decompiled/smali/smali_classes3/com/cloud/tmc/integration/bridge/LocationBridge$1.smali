.class Lcom/cloud/tmc/integration/bridge/LocationBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/LocationBridge;->getLocation(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/LocationBridge;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/LocationBridge;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/LocationBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "errMsg"

    const-string v3, "Location Permission denied :LB003"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/DialogProxy;->showLocationPermissionDialog(Landroid/content/Context;)V

    return-void
.end method

.method public onGranted()V
    .locals 12

    invoke-static {}, Lcom/cloud/tmc/integration/utils/LocationUtils;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/LocationUtils;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string v2, ""

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/cloud/tmc/integration/R$string;->mini_setting_open_gps:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$context:Landroid/content/Context;

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$context:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/cloud/tmc/integration/bridge/LocationBridge$1;->val$context:Landroid/content/Context;

    new-instance v11, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;

    invoke-direct {v11, p0}, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$1;-><init>(Lcom/cloud/tmc/integration/bridge/LocationBridge$1;)V

    const/4 v4, 0x2

    invoke-interface/range {v1 .. v11}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->showCommonDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LocationBridge"

    const-string v2, "getLocation"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/LocationUtils;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/bridge/LocationBridge$1$2;-><init>(Lcom/cloud/tmc/integration/bridge/LocationBridge$1;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->setAddressCallback(Lcom/cloud/tmc/integration/utils/LocationUtils$AddressCallback;)V

    return-void
.end method
