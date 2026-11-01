.class public abstract Li7/a;
.super Ljava/lang/Object;


# static fields
.field private static A:Z

.field private static B:[Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:I

.field private static R:Z

.field private static S:Ljava/lang/String;

.field private static T:I

.field private static U:Z

.field private static V:I

.field private static W:I

.field private static X:Z

.field private static final Y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final Z:Landroid/os/Bundle;

.field private static final a:Z

.field private static a0:Ljava/lang/String;

.field private static b:Landroid/content/Intent;

.field private static b0:Ljava/lang/String;

.field private static c:Landroid/content/BroadcastReceiver;

.field private static volatile c0:Ljava/lang/Boolean;

.field private static d:I

.field private static volatile d0:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static final g:[Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static final l:[Ljava/lang/String;

.field private static m:I

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:Z

.field private static u:I

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "anti_fraud_log"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Li7/a;->a:Z

    const/4 v0, 0x0

    sput-object v0, Li7/a;->b:Landroid/content/Intent;

    sput-object v0, Li7/a;->c:Landroid/content/BroadcastReceiver;

    const/4 v0, -0x1

    sput v0, Li7/a;->d:I

    sput v0, Li7/a;->e:I

    sput v0, Li7/a;->f:I

    const-string v17, "/system/bin/conbb"

    const-string v18, "/system/xbin/conbb"

    const-string v1, "/su"

    const-string v2, "/su/bin/su"

    const-string v3, "/sbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/data/local/su"

    const-string v7, "/system/xbin/su"

    const-string v8, "/system/bin/su"

    const-string v9, "/system/sd/xbin/su"

    const-string v10, "/system/bin/failsafe/su"

    const-string v11, "/system/bin/cufsdosck"

    const-string v12, "/system/xbin/cufsdosck"

    const-string v13, "/system/bin/cufsmgr"

    const-string v14, "/system/xbin/cufsmgr"

    const-string v15, "/system/bin/cufaevdd"

    const-string v16, "/system/xbin/cufaevdd"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li7/a;->g:[Ljava/lang/String;

    sput v0, Li7/a;->h:I

    sput v0, Li7/a;->i:I

    sput v0, Li7/a;->j:I

    sput v0, Li7/a;->k:I

    const-string v8, "com.dual.dualgenius"

    const-string v9, "com.jiubang.commerce.gomultiple"

    const-string v2, "com.bly.dkplat"

    const-string v3, "com.by.chaos"

    const-string v4, "com.lbe.parallel"

    const-string v5, "com.excelliance.dualaid"

    const-string v6, "com.lody.virtual"

    const-string v7, "com.qihoo.magic"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li7/a;->l:[Ljava/lang/String;

    sput v0, Li7/a;->m:I

    const-string v1, "/dev/socket/qemud"

    const-string v2, "/dev/qemu_pipe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li7/a;->n:[Ljava/lang/String;

    const-string v1, "goldfish"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li7/a;->o:[Ljava/lang/String;

    const-string v1, "/sys/qemu_trace"

    const-string v2, "/system/bin/qemu-props"

    const-string v3, "/system/lib/libc_malloc_debug_qemu.so"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li7/a;->p:[Ljava/lang/String;

    sput v0, Li7/a;->q:I

    sput v0, Li7/a;->r:I

    sput v0, Li7/a;->s:I

    const/4 v1, 0x0

    sput-boolean v1, Li7/a;->t:Z

    sput v0, Li7/a;->u:I

    const-string v0, "bluetooth_name"

    sput-object v0, Li7/a;->v:Ljava/lang/String;

    const-string v0, "base_band_version"

    sput-object v0, Li7/a;->w:Ljava/lang/String;

    const-string v0, "boot_time"

    sput-object v0, Li7/a;->x:Ljava/lang/String;

    const-string v0, "phone_name"

    sput-object v0, Li7/a;->y:Ljava/lang/String;

    const-string v0, "ssid"

    sput-object v0, Li7/a;->z:Ljava/lang/String;

    sput-boolean v1, Li7/a;->A:Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Li7/a;->B:[Ljava/lang/String;

    const-string v0, "screen_brightness"

    sput-object v0, Li7/a;->C:Ljava/lang/String;

    const-string v0, "battery_percent"

    sput-object v0, Li7/a;->D:Ljava/lang/String;

    const-string v0, "charge_type"

    sput-object v0, Li7/a;->E:Ljava/lang/String;

    const-string v0, "rom_name"

    sput-object v0, Li7/a;->F:Ljava/lang/String;

    const-string v0, "rom_build_time"

    sput-object v0, Li7/a;->G:Ljava/lang/String;

    const-string v0, "os_api"

    sput-object v0, Li7/a;->H:Ljava/lang/String;

    const-string v0, "build_id"

    sput-object v0, Li7/a;->I:Ljava/lang/String;

    const-string v0, "cpu_cores"

    sput-object v0, Li7/a;->J:Ljava/lang/String;

    const-string v0, "cpu_cores_cnt"

    sput-object v0, Li7/a;->K:Ljava/lang/String;

    const-string v0, "cpu_abi"

    sput-object v0, Li7/a;->L:Ljava/lang/String;

    const-string v0, "cpu_kernel"

    sput-object v0, Li7/a;->M:Ljava/lang/String;

    const-string v0, "board"

    sput-object v0, Li7/a;->N:Ljava/lang/String;

    const-string v0, "hard_ware"

    sput-object v0, Li7/a;->O:Ljava/lang/String;

    const-string v0, "finger_print"

    sput-object v0, Li7/a;->P:Ljava/lang/String;

    sput v1, Li7/a;->Q:I

    sput-boolean v1, Li7/a;->R:Z

    const-string v0, "phone_height"

    sput-object v0, Li7/a;->S:Ljava/lang/String;

    sput v1, Li7/a;->T:I

    sput-boolean v1, Li7/a;->U:Z

    sput v1, Li7/a;->V:I

    sput v1, Li7/a;->W:I

    sput-boolean v1, Li7/a;->X:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Li7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Li7/a;->Z:Landroid/os/Bundle;

    return-void
.end method

.method private static A()Ljava/lang/String;
    .locals 2

    const-string v0, "cpu_abi"

    sget-object v1, Li7/a;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->L:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->L:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method private static B()Ljava/lang/String;
    .locals 2

    const-string v0, "cpu_cores"

    sget-object v1, Li7/a;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->J:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method private static C()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x16

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "cpu_cores_cnt"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v0, Li7/a;->K:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Li7/a;->K:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, Li7/a;->E()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Li7/a;->g(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->K:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, ""

    sput-object v1, Li7/a;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Li7/a;->K:Ljava/lang/String;

    return-object v0
.end method

.method private static D()Ljava/lang/String;
    .locals 2

    const-string v0, "cpu_kernel"

    sget-object v1, Li7/a;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->M:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->M:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method private static E()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_4
    return v0
.end method

.method private static F()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/16 v1, 0x12

    :try_start_0
    invoke-static {v1}, Li7/a;->g0(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "bluetooth_name"

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    sget-object v1, Li7/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Li7/a;->v:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Li7/a;->v:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    sput-object v1, Li7/a;->v:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sput-object v0, Li7/a;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Li7/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method private static G()V
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v4, v2

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    long-to-int v4, v4

    sput v4, Li7/a;->V:I

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    long-to-int v0, v0

    sput v0, Li7/a;->W:I

    :cond_1
    return-void
.end method

.method private static H()Ljava/lang/String;
    .locals 2

    const-string v0, "finger_print"

    sget-object v1, Li7/a;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->P:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->P:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->P:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method private static I()Ljava/lang/String;
    .locals 2

    const-string v0, "hard_ware"

    sget-object v1, Li7/a;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->O:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->O:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method private static J()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x17

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Li7/a;->R:Z

    if-eqz v0, :cond_1

    sget v0, Li7/a;->Q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Li7/a;->R:Z

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v0, v0

    sput v0, Li7/a;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget v0, Li7/a;->Q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static K()Ljava/lang/String;
    .locals 2

    const-string v0, "os_api"

    sget-object v1, Li7/a;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->H:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->H:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method private static L()Ljava/lang/String;
    .locals 2

    const-string v0, "phone_height"

    sget-object v1, Li7/a;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->S:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Li7/c;->k()I

    move-result v0

    invoke-static {}, Li7/c;->j()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->g(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->S:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->S:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method private static M()Ljava/lang/String;
    .locals 2

    const-string v0, "phone_name"

    sget-object v1, Li7/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->y:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method private static N()Ljava/lang/String;
    .locals 2

    const-string v0, "rom_build_time"

    sget-object v1, Li7/a;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->G:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    sget-object v0, Li7/a;->G:Ljava/lang/String;

    return-object v0
.end method

.method private static O()Ljava/lang/String;
    .locals 2

    const-string v0, "rom_name"

    sget-object v1, Li7/a;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->F:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method private static P()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static Q()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "screen_brightness"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v0, Li7/a;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Li7/a;->C:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Li7/a;->g(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->C:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, ""

    sput-object v1, Li7/a;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Li7/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method private static R()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "ssid"

    sget-object v2, Li7/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Li7/a;->z:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_0
    sput-object v1, Li7/a;->z:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sput-object v0, Li7/a;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Li7/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method private static S()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x19

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Li7/a;->X:Z

    if-eqz v0, :cond_1

    sget v0, Li7/a;->V:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Li7/a;->X:Z

    invoke-static {}, Li7/a;->G()V

    sget v0, Li7/a;->V:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private static T()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x18

    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Li7/a;->U:Z

    if-eqz v0, :cond_1

    sget v0, Li7/a;->T:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Li7/a;->U:Z

    const-string v1, "/proc/meminfo"

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    sput v0, Li7/a;->T:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_4
    sget v0, Li7/a;->T:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static U()[Ljava/lang/String;
    .locals 7

    const/16 v0, 0x13

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    sget-boolean v0, Li7/a;->A:Z

    if-eqz v0, :cond_1

    sget-object v0, Li7/a;->B:[Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Li7/a;->A:Z

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Li7/a;->B:[Ljava/lang/String;

    goto :goto_4

    :cond_6
    :goto_2
    sget-object v0, Li7/a;->B:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_4
    sget-object v0, Li7/a;->B:[Ljava/lang/String;

    return-object v0
.end method

.method private static V()V
    .locals 4

    sget-object v0, Li7/a;->b:Landroid/content/Intent;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Li7/a$a;

    invoke-direct {v0}, Li7/a$a;-><init>()V

    sput-object v0, Li7/a;->c:Landroid/content/BroadcastReceiver;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x21

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Li7/a;->c:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Li7/a;->b:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Li7/a;->c:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Li7/a;->b:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static W()I
    .locals 3

    const/16 v0, 0x9

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->i:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->i:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-static {}, Li7/a;->l0()Z

    move-result v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/16 v1, 0x200

    :cond_2
    sput v1, Li7/a;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget v0, Li7/a;->i:I

    return v0
.end method

.method private static X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_accessibility_services"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static Y()I
    .locals 5

    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->h:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/16 v1, 0x100

    :cond_5
    sput v1, Li7/a;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget v0, Li7/a;->h:I

    return v0
.end method

.method private static Z()I
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Li7/a;->o0(I)Z

    move-result v0

    const/16 v1, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->e:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "android.hardware.camera.any"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/16 v1, 0x10

    :cond_3
    sput v1, Li7/a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget v0, Li7/a;->e:I

    return v0
.end method

.method private static a(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method private static a0()I
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Li7/a;->g0(I)Z

    const/4 v0, 0x0

    return v0
.end method

.method private static b()Z
    .locals 2

    const-string v0, "android"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static b0()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0}, Li7/a;->o0(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Li7/a;->V()V

    sget-object v2, Li7/a;->b:Landroid/content/Intent;

    if-eqz v2, :cond_3

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Li7/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1

    return v3

    :cond_1
    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Li7/a;->f()V

    return v1
.end method

.method private static c()Z
    .locals 6

    sget-object v0, Li7/a;->p:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static c0()I
    .locals 3

    const/16 v0, 0xd

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->m:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->m:I

    invoke-static {}, Li7/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li7/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li7/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x2000

    :cond_3
    sput v1, Li7/a;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget v0, Li7/a;->m:I

    return v0
.end method

.method private static d()Z
    .locals 6

    sget-object v0, Li7/a;->n:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static d0()I
    .locals 3

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->j:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->j:I

    invoke-static {}, Li7/a;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li7/a;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li7/a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x400

    :cond_3
    sput v1, Li7/a;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget v0, Li7/a;->j:I

    return v0
.end method

.method private static e()Z
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/tty/drivers"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Li7/a;->o:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :cond_2
    :goto_4
    return v2
.end method

.method private static e0()I
    .locals 3

    const/16 v0, 0x10

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->s:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->s:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "No location permission is currently available"

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    const/high16 v1, 0x10000

    :goto_0
    sput v1, Li7/a;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    sget v0, Li7/a;->s:I

    return v0
.end method

.method private static f()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Li7/a;->b:Landroid/content/Intent;

    sget-object v1, Li7/a;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Li7/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v0, Li7/a;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private static f0()I
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Li7/a;->t:Z

    if-eqz v0, :cond_1

    const/high16 v1, 0x20000

    :cond_1
    return v1
.end method

.method public static g(II)I
    .locals 1

    const v0, 0xffff

    if-gt p0, v0, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static g0(I)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Li7/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p0, 0x1

    if-ge v2, v3, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    return v0
.end method

.method private static h(Ljava/lang/Exception;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    return v6

    :cond_0
    const-string v5, "com.saurik.substrate.MS$2"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "invoked"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "main"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v6

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "handleHookedMethod"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static h0()Z
    .locals 3

    sget-object v0, Li7/a;->c0:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "is_open_anti_fraud_sp_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lj7/a;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Li7/a;->c0:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Li7/a;->c0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const-string v5, ".so"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "com.saurik.substrate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v4

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_4
    :try_start_5
    const-string v5, "XposedBridge.jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return v4

    :cond_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    :goto_2
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :goto_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_7
    const/4 v0, 0x0

    return v0
.end method

.method private static i0()I
    .locals 6

    const/16 v0, 0xc

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->k:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->k:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Li7/a;->l:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0x1000

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    sput v1, Li7/a;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_3
    sget v0, Li7/a;->k:I

    return v0
.end method

.method private static j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static j0()I
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Li7/a;->g0(I)Z

    const/4 v0, 0x0

    return v0
.end method

.method private static k()Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "findhook"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Li7/a;->h(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static k0()I
    .locals 6

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->f:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->f:I

    sget-object v0, Li7/a;->g:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_1
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    :cond_5
    const/16 v1, 0x40

    :cond_6
    sput v1, Li7/a;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_3
    sget v0, Li7/a;->f:I

    return v0
.end method

.method private static l()V
    .locals 3

    sget-object v0, Li7/a;->Z:Landroid/os/Bundle;

    const-string v1, "bbv"

    invoke-static {}, Li7/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bt"

    invoke-static {}, Li7/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phn"

    invoke-static {}, Li7/a;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "si"

    invoke-static {}, Li7/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bl"

    invoke-static {}, Li7/a;->U()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "sb"

    invoke-static {}, Li7/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bpc"

    invoke-static {}, Li7/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ct"

    invoke-static {}, Li7/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rn"

    invoke-static {}, Li7/a;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rv"

    invoke-static {}, Li7/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rb"

    invoke-static {}, Li7/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oa"

    invoke-static {}, Li7/a;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bi"

    invoke-static {}, Li7/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    invoke-static {}, Li7/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ccf"

    invoke-static {}, Li7/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ca"

    invoke-static {}, Li7/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ck"

    invoke-static {}, Li7/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bd"

    invoke-static {}, Li7/a;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hw"

    invoke-static {}, Li7/a;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fp"

    invoke-static {}, Li7/a;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "noc"

    invoke-static {}, Li7/a;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ps"

    invoke-static {}, Li7/a;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tm"

    invoke-static {}, Li7/a;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "td"

    invoke-static {}, Li7/a;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "am"

    invoke-static {}, Li7/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad"

    invoke-static {}, Li7/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Li7/a;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cp"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static l0()Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.accessibilityservice.category.FEEDBACK_SPOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Li7/a;->X(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v2, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    sget-object v0, Li7/a;->b0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->b0:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Li7/a;->h0()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, "=========== getAntiFraudLiteString server close ==========="

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v0, Li7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phn"

    invoke-static {}, Li7/a;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bt"

    invoke-static {}, Li7/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "si"

    invoke-static {}, Li7/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bl"

    invoke-static {}, Li7/a;->U()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "sb"

    invoke-static {}, Li7/a;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bpc"

    invoke-static {}, Li7/a;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rn"

    invoke-static {}, Li7/a;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rv"

    invoke-static {}, Li7/a;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rb"

    invoke-static {}, Li7/a;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oa"

    invoke-static {}, Li7/a;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cp"

    invoke-static {}, Li7/a;->z()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Li7/a;->n(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->b0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->b0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-object v1, Li7/a;->b0:Ljava/lang/String;

    :cond_3
    sget-object v0, Li7/a;->b0:Ljava/lang/String;

    return-object v0
.end method

.method private static m0()I
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Li7/a;->o0(I)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sput v1, Li7/a;->d:I

    const-string v0, ""

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    sput v0, Li7/a;->d:I

    goto :goto_3

    :cond_5
    :goto_1
    const/4 v0, 0x0

    sput v0, Li7/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_3
    sget v0, Li7/a;->d:I

    return v0
.end method

.method private static n(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8

    const-string v0, "\u0002"

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "bn"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Li7/a;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\u0001"

    if-eqz v6, :cond_3

    :try_start_1
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "\"\""

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    instance-of v6, v5, [F

    if-eqz v6, :cond_5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, [F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li7/a;->r0(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n0()Z
    .locals 4

    sget v0, Li7/a;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Li7/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput v2, Li7/a;->u:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x1b

    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    sput v0, Li7/a;->u:I

    :goto_0
    sget v0, Li7/a;->u:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    sget-object v0, Li7/a;->d0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "anti_fraud_sub_function_sp_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->d0:Ljava/lang/String;

    sget-object v0, Li7/a;->d0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    sput-object v0, Li7/a;->d0:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/a;->d0:Ljava/lang/String;

    return-object v0
.end method

.method private static o0(I)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Li7/a;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "01"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p0, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    return v0
.end method

.method private static p()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Li7/a;->X:Z

    if-eqz v0, :cond_0

    sget v0, Li7/a;->W:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    sget v0, Li7/a;->W:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private static p0()I
    .locals 4

    const/16 v0, 0xf

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->r:I

    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "-1"

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq v3, v2, :cond_3

    const v1, 0x8000

    :cond_3
    sput v1, Li7/a;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_1
    sget v0, Li7/a;->r:I

    return v0
.end method

.method private static q()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private static q0()I
    .locals 5

    const/16 v0, 0xe

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Li7/a;->q:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    sput v1, Li7/a;->q:I

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v3, "tun0"

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ppp0"

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_1
    const/16 v1, 0x4000

    goto :goto_3

    :cond_5
    :goto_2
    const-string v2, "The network is disconnected."

    invoke-static {v2}, Li7/a;->r0(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_3
    sput v1, Li7/a;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_5
    sget v0, Li7/a;->q:I

    return v0
.end method

.method private static r()Ljava/lang/String;
    .locals 2

    const-string v0, "base_band_version"

    sget-object v1, Li7/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->w:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Li7/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "anti_fraud_log"

    invoke-virtual {v0, v1, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static s()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static s0()V
    .locals 2

    invoke-static {}, Li7/a;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "preloadAntiFraud --> cloud close"

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x1a

    :try_start_0
    invoke-static {v0}, Li7/a;->g0(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Li7/e;->q()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Li7/a;->l()V

    sget-object v0, Li7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "preloadAntiFraud --> Initialize set tag IS_PRELOAD_LOADING = false"

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static t()Ljava/lang/String;
    .locals 2

    const-string v0, "battery_percent"

    sget-object v1, Li7/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->D:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Li7/a;->s()I

    move-result v0

    invoke-static {}, Li7/a;->u()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->g(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->D:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public static t0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud antiFraudSubfunctionControl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    sget-object v0, Li7/a;->d0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->d0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Li7/a;->d0:Ljava/lang/String;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p0

    const-string v0, "anti_fraud_sub_function_sp_key"

    sget-object v1, Li7/a;->d0:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static u0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud isOpenAntiFraud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    sget-object v0, Li7/a;->c0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Li7/a;->c0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Li7/a;->c0:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    sget-object v0, Li7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "saveAntiFraudSwitch --> non preload"

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    invoke-static {}, Li7/a;->s0()V

    :cond_1
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "is_open_anti_fraud_sp_key"

    invoke-virtual {v0, v1, p0}, Lj7/a;->o(Ljava/lang/String;Z)V

    return-void
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    const-string v0, "board"

    sget-object v1, Li7/a;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->N:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->N:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->N:Ljava/lang/String;

    return-object v0
.end method

.method public static v0(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v1, Li7/a;->a0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "fraud_data_set"

    if-nez v1, :cond_1

    sget-object v0, Li7/a;->a0:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Li7/a;->h0()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "======= setAntiFraudFullString serve close ========="

    invoke-static {p0}, Li7/a;->r0(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    sget-object v1, Li7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v1

    invoke-virtual {v1}, Li7/e;->m()Z

    move-result v1

    sget-object v3, Li7/a;->Z:Landroid/os/Bundle;

    invoke-static {}, Li7/e;->k()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {v3}, Li7/a;->n(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    sput-object v4, Li7/a;->a0:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li7/a;->r0(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static w()Ljava/lang/String;
    .locals 4

    const-string v0, "boot_time"

    sget-object v1, Li7/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->x:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method private static w0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static x()Ljava/lang/String;
    .locals 2

    const-string v0, "build_id"

    sget-object v1, Li7/a;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Li7/a;->I:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0}, Li7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/a;->I:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Li7/a;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Li7/a;->I:Ljava/lang/String;

    return-object v0
.end method

.method private static y()Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    const/16 v1, 0x15

    :try_start_0
    invoke-static {v1}, Li7/a;->g0(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "charge_type"

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    sget-object v1, Li7/a;->E:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Li7/a;->E:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-static {}, Li7/a;->V()V

    sget-object v1, Li7/a;->b:Landroid/content/Intent;

    if-eqz v1, :cond_5

    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    sput-object v1, Li7/a;->E:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "2"

    sput-object v1, Li7/a;->E:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const-string v1, "3"

    sput-object v1, Li7/a;->E:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sput-object v0, Li7/a;->E:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    sput-object v0, Li7/a;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    :cond_5
    :goto_1
    sget-object v0, Li7/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method private static z()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Li7/a;->b0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->m0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->Z()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->k0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->a0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->Y()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->W()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->d0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->j0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->i0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->c0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->q0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->p0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->e0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    invoke-static {}, Li7/a;->f0()I

    move-result v1

    invoke-static {v0, v1}, Li7/a;->a(II)I

    move-result v0

    return v0
.end method
