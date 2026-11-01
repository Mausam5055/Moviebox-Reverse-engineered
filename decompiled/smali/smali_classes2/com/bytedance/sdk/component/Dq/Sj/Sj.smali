.class public Lcom/bytedance/sdk/component/Dq/Sj/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Dq/Sj/Sj$Sj;
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/Dq/Sj/EjP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/Dq/Sj/EjP<",
            "Lcom/bytedance/sdk/component/Dq/Sj/sP;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/bytedance/sdk/component/Dq/Sj/EjP;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj/EjP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/Dq/Sj/EjP;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;-><init>()V

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/component/Dq/Sj/Sj;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    move-result-object v0

    return-object v0
.end method

.method private Sj(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Landroid/os/Handler;Landroid/os/Handler;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj/sP;
    .locals 1

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/component/Dq/Sj/sP;

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/component/Dq/Sj/sP;-><init>(Landroid/os/HandlerThread;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    return-object v0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/Dq/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj/EjP;->Sj()Lcom/bytedance/sdk/component/Dq/Sj/TKC;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Dq/Sj/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Dq/Sj/sP;->Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    new-instance p1, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;-><init>(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->sP(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj/sP;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/component/utils/LqL;)Z
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/component/Dq/Sj/sP;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bytedance/sdk/component/Dq/Sj/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/Dq/Sj/EjP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Dq/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/Dq/Sj/TKC;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Dq/Sj/sP;->sP()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public sP()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->sP:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->sP:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "csj_io_handler"

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->sP:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->sP:Landroid/os/Handler;

    return-object v0
.end method
