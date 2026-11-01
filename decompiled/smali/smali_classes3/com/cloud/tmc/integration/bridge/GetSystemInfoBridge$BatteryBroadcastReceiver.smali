.class Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;


# direct methods
.method private constructor <init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;Lcom/cloud/tmc/integration/bridge/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;-><init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-static {v0, p2}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->d(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;Landroid/content/Intent;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-static {v0, p2}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->c(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;I)V

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->b(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;Z)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_BATTERY_CHANGED..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-static {p2}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->a(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GetSystemInfoBridge"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
