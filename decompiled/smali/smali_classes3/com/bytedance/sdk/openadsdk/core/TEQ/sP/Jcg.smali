.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TEQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;
    }
.end annotation


# instance fields
.field private EjP:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP()V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/sef;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/sef;-><init>()V

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj(I)V

    invoke-virtual {v0, p3}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj(Lcom/bytedance/adsdk/ugeno/core/sef;)V

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p3

    if-nez p3, :cond_4

    return-void

    :cond_4
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Z)V

    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->a_(I)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-object p0
.end method

.method private sP()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->EjP:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->EjP:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->EjP:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "remove ugen time out task fail"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "RenderInterceptor"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->vS()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const-string v2, "time is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    invoke-direct {p0, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;

    invoke-direct {v3, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;ILcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->EjP:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    :goto_0
    return v1
.end method
