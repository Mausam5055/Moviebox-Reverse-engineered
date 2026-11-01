.class public Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;
.super Ljava/lang/Object;


# instance fields
.field private final Dq:Ljava/lang/Runnable;

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final HiB:Ljava/util/concurrent/atomic/AtomicInteger;

.field private Jcg:J

.field private Sj:I

.field private final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method private EjP()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP()V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    new-instance v2, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;

    const-string v3, "ev_tracker"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    :cond_0
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS()V

    return-void
.end method

.method private HiB()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private vS()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ewp()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public TKC()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
