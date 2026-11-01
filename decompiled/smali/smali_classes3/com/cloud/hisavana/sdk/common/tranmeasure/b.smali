.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/b;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;


# instance fields
.field private volatile a:Landroid/os/Handler;

.field private b:Z

.field private final c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

.field private final d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e:Ljava/lang/Runnable;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;-><init>()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;)V

    return-void
.end method

.method private a()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c()V

    return-void
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    return p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public end()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp_measure"

    const-string v2, "stop monitor"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    const-string v1, "ssp_measure"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "monitor is running"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "start monitor"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->h()V

    return-void
.end method
