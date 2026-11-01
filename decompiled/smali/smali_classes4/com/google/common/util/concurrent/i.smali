.class public abstract Lcom/google/common/util/concurrent/i;
.super Lcom/google/common/util/concurrent/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/i$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/n;-><init>()V

    return-void
.end method

.method public static from(Lcom/google/common/util/concurrent/i;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/i;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/i;

    return-object p0
.end method

.method public static from(Lcom/google/common/util/concurrent/r;)Lcom/google/common/util/concurrent/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/r;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/util/concurrent/i;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/i;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/j;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/util/concurrent/r;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final addCallback(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final catching(Ljava/lang/Class;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->b(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/i;

    return-object p1
.end method

.method public final catchingAsync(Ljava/lang/Class;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->c(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/i;

    return-object p1
.end method

.method public final transform(Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->f(Lcom/google/common/util/concurrent/r;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/i;

    return-object p1
.end method

.method public final transformAsync(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->g(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/i;

    return-object p1
.end method

.method public final withTimeout(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/i;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/Futures;->h(Lcom/google/common/util/concurrent/r;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/i;

    return-object p1
.end method
