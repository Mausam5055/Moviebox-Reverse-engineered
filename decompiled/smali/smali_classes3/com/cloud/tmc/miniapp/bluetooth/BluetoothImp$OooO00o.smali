.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_5

    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bluetoothSwitchReceiver -> STATE_OFF | STATE_TURNING_OFF"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo()V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o$OooO00o;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-direct {p2, v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lkotlin/jvm/functions/Function2;)V

    goto :goto_6

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_9

    :goto_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bluetoothSwitchReceiver -> STATE_ON | STATE_TURNING_ON"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o$OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-direct {p2, v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lkotlin/jvm/functions/Function2;)V

    :cond_9
    :goto_6
    return-void
.end method
