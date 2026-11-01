.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Landroid/content/Context;

.field public OooO0OO:Landroid/content/Intent;

.field public OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

.field public OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

.field public OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

.field public OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

.field public final OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOO:Landroid/content/BroadcastReceiver;

.field public final OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOOO:Landroid/content/BroadcastReceiver;

.field public final OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BluetoothImp"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    return-void
.end method

.method public static final synthetic access$getAdapterCallback$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    return-object p0
.end method

.method public static final synthetic access$getAdapterStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    return-object p0
.end method

.method public static final synthetic access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    return-object p0
.end method

.method public static final synthetic access$getCharacteristicValueChangeListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    return-object p0
.end method

.method public static final synthetic access$getConnectStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    return-object p0
.end method

.method public static final synthetic access$getDeviceFoundListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    return-object p0
.end method

.method public static final synthetic access$getDeviceServicesListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method public static final synthetic access$getReadListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWriteListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method public static final access$init(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0OO:Landroid/content/Intent;

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0OO:Landroid/content/Intent;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_BLUETOOTH_ADAPTER_STATE_CHANGE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_DEVICE_CONNECT_STATE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_SERVICES_DISCOVERED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_READ_CHARACTERISTIC"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_WRITE_CHARACTERISTIC"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_CHARACTERISTIC"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    invoke-static {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    const-string p1, "BluetoothManager already init"

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p0

    invoke-interface {p2, p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;->OooO00o(J)V

    :goto_1
    return-void
.end method

.method public static final synthetic access$setBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    return-void
.end method


# virtual methods
.method public closeBLEConnection(Ljava/lang/String;)J
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public closeBluetoothAdapter()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;)J

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo()V

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    const-string v1, "closeBluetoothAdapter  -> "

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createBLEConnection(Ljava/lang/String;)J
    .locals 4

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v1, :cond_9

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto/16 :goto_1

    :cond_1
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_2

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_CONNECION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-le v0, v2, :cond_4

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v1, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->CONNECTION_FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    :cond_8
    iput-object v2, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    iput-object p1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    const-string v3, "it.characteristics"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getBLEDeviceCharacteristicsMap(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "serviceUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "properties"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static {v3}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBLEDeviceServices(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;->OooO00o(J)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBluetoothAdapterState(Lkotlin/jvm/functions/Function2;)J
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
            ">;)J"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-nez v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectedBluetoothDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getConnectedBluetoothDevicesMap()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v4, "address"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-static {v4}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public notifyBLECharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    const-string v0, "serviceUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characteristicUUID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz p1, :cond_7

    const-string p2, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le p2, v1, :cond_3

    const-string p2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p3, "getDescriptor(UUID.fromS\u2026T_CHARACTERISTIC_CONFIG))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC_DESCRIPTOR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_8
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1

    :cond_9
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1
.end method

.method public offBLECharacteristicValueChange(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;->OooO00o(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    const/4 p1, 0x1

    return p1
.end method

.method public offBLEConnectionStateChange(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;->OooO00o(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    const/4 p1, 0x1

    return p1
.end method

.method public offBluetoothAdapterStateChange(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;->OooO00o(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    const/4 p1, 0x1

    return p1
.end method

.method public offBluetoothDeviceFound(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;->OooO00o(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    const/4 p1, 0x1

    return p1
.end method

.method public onBLECharacteristicValueChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;)V
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    return-void
.end method

.method public onBLEConnectionStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;)V
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    return-void
.end method

.method public onBluetoothAdapterStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;)V
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bluetoothAdapterStateListener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    return-void
.end method

.method public onBluetoothDeviceFound(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;)V
    .locals 1

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    return-void
.end method

.method public openBluetoothAdapter(Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    goto :goto_0

    :cond_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0OO;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    :goto_0
    return-void
.end method

.method public readBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J
    .locals 4

    const-string v0, "serviceUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characteristicUUID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz p1, :cond_6

    const-string p2, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-le p2, p3, :cond_3

    const-string p2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1

    :cond_8
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1
.end method

.method public startBluetoothDevicesDiscovery(Ljava/util/List;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    const-string v0, "serviceUUIDS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBluetoothDevicesDiscovery -> serviceUUIDS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "powerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/location/LocationManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_POSITION_FUNCTION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v1, :cond_8

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto/16 :goto_3

    :cond_3
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_4

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto/16 :goto_3

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    const-string v3, "Builder().setServiceUuid\u2026d.fromString(it)).build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-le p1, v2, :cond_6

    const-string p1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v1, p1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_3

    :cond_6
    iget-object p1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz p1, :cond_7

    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p2

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    invoke-virtual {p1, v0, p2, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iget-object p1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    :goto_3
    return-wide p1
.end method

.method public stopBluetoothDevicesDiscovery()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo()V

    :cond_0
    return-void
.end method

.method public writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;[BLcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J
    .locals 5

    const-string v0, "serviceUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characteristicUUID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p2, v3, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    if-eqz p1, :cond_6

    const-string p2, "characteristic"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-le p2, p3, :cond_3

    const-string p2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1

    :cond_8
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    return-wide p1
.end method
