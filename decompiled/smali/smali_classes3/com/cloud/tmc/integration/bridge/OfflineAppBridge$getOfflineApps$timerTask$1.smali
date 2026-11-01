.class public final Lcom/cloud/tmc/integration/bridge/OfflineAppBridge$getOfflineApps$timerTask$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;->getOfflineApps(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/OfflineAppBridge$getOfflineApps$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
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

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge$getOfflineApps$timerTask$1;->this$0:Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge$getOfflineApps$timerTask$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge$getOfflineApps$timerTask$1;->this$0:Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge$getOfflineApps$timerTask$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "timeout"

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
