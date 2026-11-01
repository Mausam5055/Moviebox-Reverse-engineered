.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "data_status"

    const-string v5, "code"

    const-string v6, "data_characteristic"

    const-string v7, "data_characteristicUUID"

    const-string v8, "data_serviceUUID"

    const/4 v9, -0x1

    const-string v10, ""

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mGattUpdateReceiver -> ACTION_SCAN_RESULT"

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v2

    :goto_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string v2, "scan_result"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_1c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1$onReceive$scanRsultData$1;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1$onReceive$scanRsultData$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromJson(\n              \u2026                        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGattUpdateReceiver -> SCAN_SUCCESS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceFoundListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    move-result-object p2

    if-eqz p2, :cond_1c

    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;->OooO00o(Ljava/util/Map;)V

    goto/16 :goto_c

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mGattUpdateReceiver -> SCAN_FAIL:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceFoundListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;->OooO00o(J)V

    goto/16 :goto_c

    :sswitch_1
    const-string v3, "com.cloud.tmc.bluetooth.le.ACTION_SERVICES_DISCOVERED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_c

    :cond_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mGattUpdateReceiver -> ACTION_SERVICES_DISCOVERED"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v2

    :goto_2
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v4

    cmp-long p2, v2, v4

    const-string v4, "deviceServicesListeners.iterator()"

    if-nez p2, :cond_b

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.uuid.toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_4

    :cond_9
    move v3, p1

    :goto_4
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGattUpdateReceiver -> SUCCESS uuid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",isPrimary:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "uuid"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v6, "isPrimary"

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Lkotlin/Pair;

    aput-object v5, v6, p1

    aput-object v3, v6, v0

    invoke-static {v6}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceServicesListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;->OooO00o(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mGattUpdateReceiver -> FAIL:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceServicesListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;

    invoke-interface {p2, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;->OooO00o(J)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :sswitch_2
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_BLUETOOTH_ADAPTER_STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mGattUpdateReceiver -> ACTION_NOTIFT_BLUETOOTH_ADAPTER_STATE_CHANGE"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "scan"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_c
    move v0, p1

    :goto_7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_d

    const-string p1, "avaliable"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_d
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGattUpdateReceiver -> getBluetoothAdapterState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getAdapterStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    move-result-object p2

    if-eqz p2, :cond_1c

    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;->OooO00o(ZZ)V

    goto/16 :goto_c

    :sswitch_3
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_WRITE_CHARACTERISTIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_c

    :cond_e
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getWriteListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "writeListeners.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move-object v2, v10

    :cond_f
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    move-object v3, v10

    :cond_10
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_11

    new-array v5, p1, [B

    :cond_11
    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-interface {v1, v2, v3, v5, v11}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;->OooO00o(Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :sswitch_4
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_DEVICE_CONNECT_STATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_c

    :cond_12
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mGattUpdateReceiver -> ACTION_DEVICE_CONNECT_STATE"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "address"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_9

    :cond_13
    move-object v10, p1

    :goto_9
    const-string p1, "status"

    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "newState"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGattUpdateReceiver -> address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getConnectStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0, v10, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;->OooO00o(Ljava/lang/String;II)V

    goto/16 :goto_c

    :sswitch_5
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_READ_CHARACTERISTIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_c

    :cond_14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getReadListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "readListeners.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    move-object v2, v10

    :cond_15
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    move-object v3, v10

    :cond_16
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_17

    new-array v5, p1, [B

    :cond_17
    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-interface {v1, v2, v3, v5, v11}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;->OooO00o(Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :sswitch_6
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_CHARACTERISTIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_c

    :cond_18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getCharacteristicValueChangeListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move-object v1, v10

    :cond_19
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_b

    :cond_1a
    move-object v10, v2

    :goto_b
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_1b

    new-array p2, p1, [B

    :cond_1b
    invoke-interface {v0, v1, v10, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_1c
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ad4baad -> :sswitch_6
        0xf0493e6 -> :sswitch_5
        0x10f4ea51 -> :sswitch_4
        0x148efdd9 -> :sswitch_3
        0x270ba317 -> :sswitch_2
        0x2a4a594b -> :sswitch_1
        0x5ed4f6a1 -> :sswitch_0
    .end sparse-switch
.end method
