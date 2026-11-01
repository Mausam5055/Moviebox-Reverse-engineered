.class public final Lf2/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf2/c$d;,
        Lf2/c$c;,
        Lf2/c$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lf2/c$c;

.field private final c:Landroidx/media3/exoplayer/scheduler/Requirements;

.field private final d:Landroid/os/Handler;

.field private e:Lf2/c$b;

.field private f:I

.field private g:Lf2/c$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf2/c$c;Landroidx/media3/exoplayer/scheduler/Requirements;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf2/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lf2/c;->b:Lf2/c$c;

    iput-object p3, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-static {}, Landroidx/media3/common/util/a1;->C()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lf2/c;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lf2/c;)V
    .locals 0

    invoke-direct {p0}, Lf2/c;->e()V

    return-void
.end method

.method static synthetic b(Lf2/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lf2/c;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lf2/c;)Lf2/c$d;
    .locals 0

    iget-object p0, p0, Lf2/c;->g:Lf2/c$d;

    return-object p0
.end method

.method static synthetic d(Lf2/c;)V
    .locals 0

    invoke-direct {p0}, Lf2/c;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    iget-object v1, p0, Lf2/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lf2/c;->f:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lf2/c;->f:I

    iget-object v1, p0, Lf2/c;->b:Lf2/c$c;

    invoke-interface {v1, p0, v0}, Lf2/c$c;->a(Lf2/c;I)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget v0, p0, Lf2/c;->f:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lf2/c;->e()V

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lf2/c;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Lf2/c$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf2/c$d;-><init>(Lf2/c;Lf2/c$a;)V

    iput-object v1, p0, Lf2/c;->g:Lf2/c$d;

    invoke-static {v0, v1}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lf2/c;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lf2/c;->g:Lf2/c$d;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf2/c;->g:Lf2/c$d;

    return-void
.end method


# virtual methods
.method public f()Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 1

    iget-object v0, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    return-object v0
.end method

.method public i()I
    .locals 5

    iget-object v0, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    iget-object v1, p0, Lf2/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lf2/c;->f:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isNetworkRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lf2/c;->h()V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lf2/c;->c:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lf2/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf2/c$b;-><init>(Lf2/c;Lf2/c$a;)V

    iput-object v1, p0, Lf2/c;->e:Lf2/c$b;

    iget-object v3, p0, Lf2/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lf2/c;->d:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget v0, p0, Lf2/c;->f:I

    return v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lf2/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lf2/c;->e:Lf2/c$b;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf2/c;->e:Lf2/c$b;

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lf2/c;->g:Lf2/c$d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lf2/c;->k()V

    :cond_0
    return-void
.end method
