.class public Lcom/bytedance/sdk/openadsdk/sU/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/sU/sP$Sj;
    }
.end annotation


# instance fields
.field private EjP:I

.field private HiB:Lcom/bytedance/sdk/openadsdk/sU/sP$Sj;

.field private Sj:Ljava/util/concurrent/ScheduledExecutorService;

.field private TKC:J

.field private sP:Lcom/bytedance/sdk/openadsdk/sU/Dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->TKC:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->sP:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->EjP:I

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/sU/sP;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->sP:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/sU/sP;)Lcom/bytedance/sdk/openadsdk/sU/sP$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->HiB:Lcom/bytedance/sdk/openadsdk/sU/sP$Sj;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/sP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->TKC:J

    return-wide v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/sU/sP;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/sP;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->EjP:I

    return p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/sU/sP$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/sU/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/sP;)V

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->TKC:J

    return-void
.end method

.method public sP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
