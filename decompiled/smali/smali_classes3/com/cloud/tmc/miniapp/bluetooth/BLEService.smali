.class public final Lcom/cloud/tmc/miniapp/bluetooth/BLEService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final synthetic OooOO0O:I


# instance fields
.field public final OooO:Landroid/os/IBinder;

.field public OooO00o:Landroid/bluetooth/BluetoothManager;

.field public OooO0O0:Landroid/bluetooth/BluetoothAdapter;

.field public OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

.field public OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

.field public OooO0o:Landroid/bluetooth/BluetoothGatt;

.field public OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final OooOO0:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO:Landroid/os/IBinder;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;Ljava/lang/String;JLandroid/os/Bundle;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;)J
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_3
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_DEVICE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public final OooO00o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    return-object v0
.end method

.method public OooO00o(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcBluetooth"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, p1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v3, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;Ljava/lang/String;JLandroid/os/Bundle;I)V

    return-void
.end method

.method public OooO00o(ILandroid/bluetooth/le/ScanResult;)V
    .locals 7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TmcBluetooth"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    const-string v5, ""

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    const-string v6, "result?.device?.address ?: \"\""

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const-string v6, "address"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v5, "result?.device?.name ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    :goto_3
    const-string v4, "name"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "RSSI"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "scan_result"

    invoke-virtual {p1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string p2, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public OooO00o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final OooO00o(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final OooO0O0()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final OooO0OO()V
    .locals 5

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const-string v4, "scan"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "avaliable"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v3, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_BLUETOOTH_ADAPTER_STATE_CHANGE"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final OooO0Oo()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO:Landroid/os/IBinder;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
