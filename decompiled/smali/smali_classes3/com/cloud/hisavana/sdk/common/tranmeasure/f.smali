.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;,
        Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Z

.field private c:Z

.field private d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->e:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->f()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;->a(Z)V

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g()V
    .locals 4

    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    return-void
.end method

.method protected c(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    return-void
.end method

.method protected h()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c:Z

    return-void
.end method
