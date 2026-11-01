.class public Lcom/bytedance/sdk/openadsdk/EjP/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;,
        Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;
    }
.end annotation


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;


# instance fields
.field private final EjP:Ljava/util/concurrent/Executor;

.field private HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

.field private final TKC:Landroid/os/Handler;

.field private sP:Landroid/os/HandlerThread;

.field private vS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->EjP:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const-string v0, "OpenAppSuccEvent_HandlerThread"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP:Landroid/os/HandlerThread;

    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/aa$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/aa$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/aa;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/EjP/aa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/aa;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->sP()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj:I

    mul-int/2addr v0, v2

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->sP:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/aa;Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->EjP:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Zq;->EjP()Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj(Z)Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    return-void

    :cond_2
    :goto_0
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    :cond_3
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "is_background"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "has_focus"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/EjP/aa;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->vS:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->vS:Ljava/util/Map;

    invoke-static {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
