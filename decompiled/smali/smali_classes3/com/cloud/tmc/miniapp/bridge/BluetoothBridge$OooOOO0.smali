.class public final Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->openBluetoothAdapter(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(J)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openBluetoothAdapter -> code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
