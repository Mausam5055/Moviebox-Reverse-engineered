.class public Lcom/bytedance/sdk/openadsdk/dNu/TKC;
.super Ljava/lang/Object;


# static fields
.field private static volatile EjP:Landroid/os/Handler;

.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

.field private static volatile TKC:Landroid/os/HandlerThread;

.field private static sP:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "pag__bus_monitor"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic EjP()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static HiB()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    if-nez v0, :cond_5

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/sef;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_1
    monitor-exit v0

    throw v1

    :cond_2
    :goto_2
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/sef;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_3
    :goto_3
    const-string v1, "csj_init_handle"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    return-object v0

    :goto_5
    monitor-exit v0

    throw v1
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;-><init>()V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/sP;)Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    return-object v0
.end method

.method static synthetic Sj(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/HiB;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/dNu/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method static synthetic TKC()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->HiB()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/HiB;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v2, v3}, Lcom/bytedance/sdk/openadsdk/dNu/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method public static sP()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Z)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/HiB;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v2}, Lcom/bytedance/sdk/openadsdk/dNu/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method
