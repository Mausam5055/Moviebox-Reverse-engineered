.class final Lcom/google/common/util/concurrent/TimeoutFuture;
.super Lcom/google/common/util/concurrent/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/TimeoutFuture$Fire;,
        Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/util/concurrent/r;

.field private b:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/i$a;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/r;

    iput-object p1, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->a:Lcom/google/common/util/concurrent/r;

    return-void
.end method

.method static synthetic s(Lcom/google/common/util/concurrent/TimeoutFuture;)Lcom/google/common/util/concurrent/r;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->a:Lcom/google/common/util/concurrent/r;

    return-object p0
.end method

.method static synthetic t(Lcom/google/common/util/concurrent/TimeoutFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic u(Lcom/google/common/util/concurrent/TimeoutFuture;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static v(Lcom/google/common/util/concurrent/r;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/r;
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/TimeoutFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/TimeoutFuture;-><init>(Lcom/google/common/util/concurrent/r;)V

    new-instance v1, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;-><init>(Lcom/google/common/util/concurrent/TimeoutFuture;)V

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/util/concurrent/TimeoutFuture;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/google/common/util/concurrent/r;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected afterDone()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->a:Lcom/google/common/util/concurrent/r;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->a:Lcom/google/common/util/concurrent/r;

    iput-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->a:Lcom/google/common/util/concurrent/r;

    iget-object v1, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputFuture=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
