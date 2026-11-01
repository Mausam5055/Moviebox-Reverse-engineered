.class public Lcom/bytedance/sdk/openadsdk/utils/Dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/Fmk;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;
    }
.end annotation


# instance fields
.field private Dq:Z

.field private EjP:J

.field private HiB:J

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

.field private Sj:Landroid/view/View;

.field private final TKC:Landroid/os/Handler;

.field private final sP:Landroid/app/Activity;

.field private final uA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private vS:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ILcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->uA:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP:Landroid/app/Activity;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    return-void
.end method

.method private EjP()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;->Sj()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private HiB()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private Jcg()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public static Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)Lcom/bytedance/sdk/openadsdk/utils/Fmk;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->liH()I

    move-result v0

    if-gez v0, :cond_0

    new-instance p0, Lcom/bytedance/sdk/openadsdk/utils/Dq$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq$1;-><init>()V

    return-object p0

    :cond_0
    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/Dq;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Dq;-><init>(Landroid/app/Activity;ILcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)V

    return-object v1
.end method

.method private Sj(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private sP(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    if-eqz v1, :cond_2

    float-to-double v1, p1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double p1, v1, v3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private vS()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;->sP()V

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg()V

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(J)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->uA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB()V

    return-void
.end method

.method public TKC()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS()V

    return-void
.end method

.method public sP()V
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
