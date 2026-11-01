.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.miniapp.bluetooth.BLEService.LocalBinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    invoke-static {p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$setBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getAdapterCallback$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, "bluetooth"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    :cond_2
    iput-object v2, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;)V

    iput-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5

    iget-object v1, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO()V

    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_3

    :cond_4
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_3

    :cond_6
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    :goto_3
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;->OooO00o(J)V

    :cond_7
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$setBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    return-void
.end method
