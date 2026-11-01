.class public Lcom/bytedance/sdk/openadsdk/EjP/Sj/Ym;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/HiB;


# instance fields
.field private final Sj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[7114]"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Ym;->Sj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public EjP()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->EjP()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public Fmk()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;)V

    return-void
.end method

.method public HiB()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public Jcg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/EjP/Sj;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Z)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;Z)V

    return-void
.end method

.method public Sj(ZIJLcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V
    .locals 1

    if-nez p5, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;ZIJ)V

    const-string p2, "track_link_result"

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Fmk;

    const/4 p4, 0x1

    invoke-direct {p1, p4, p5}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Fmk;-><init>(ZLcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TFd()Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->EjP()I

    move-result p4

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->vS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->Sj(Ljava/lang/String;)I

    move-result v0

    if-ge p4, v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->Sj()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p5, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->Sj(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->vS()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->sP(Ljava/lang/String;)I

    move-result p1

    int-to-long p4, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p2, p4, p5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Fmk;

    invoke-direct {p1, p3, p5}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Fmk;-><init>(ZLcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_4
    return-void
.end method

.method public Sj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sj(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public TEQ()Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;-><init>()V

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TFd()Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->Sj(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public TKC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Ym()Lcom/bytedance/sdk/component/vS/Sj/vS;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/vS;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Zq()J
    .locals 4

    const-string v0, "log_queue_timeout"

    const v1, 0x9c40

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x1d4c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-wide/32 v0, 0x9c40

    :cond_1
    return-wide v0
.end method

.method public aa()Lcom/bytedance/sdk/component/vS/Sj/Jcg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sef()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->Sj:Z

    return v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vS()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
