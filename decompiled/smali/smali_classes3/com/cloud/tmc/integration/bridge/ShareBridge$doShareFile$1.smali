.class public final Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/ShareBridge;->doShareFile(Landroid/content/Context;Ljava/io/File;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
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
        "com/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1",
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

.field final synthetic $shareFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$shareFile:Ljava/io/File;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "errMsg"

    const-string v3, "Share File Failed, no write permission : S10002"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 9

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$shareFile:Ljava/io/File;

    new-instance v6, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1$onGranted$1;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {v6, v2}, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1$onGranted$1;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareFile$default(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V

    return-void
.end method
