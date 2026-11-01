.class final Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;
.super Lcom/google/common/util/concurrent/AbstractCatchingFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractCatchingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncCatchingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractCatchingFuture<",
        "TV;TX;",
        "Lcom/google/common/util/concurrent/f;",
        "Lcom/google/common/util/concurrent/r;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/util/concurrent/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/r;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;-><init>(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method doFallback(Lcom/google/common/util/concurrent/f;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/f;",
            "TX;)",
            "Lcom/google/common/util/concurrent/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/common/util/concurrent/f;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/r;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lcom/google/common/base/m;->q(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method bridge synthetic doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->doFallback(Lcom/google/common/util/concurrent/f;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    return-object p1
.end method

.method setResult(Lcom/google/common/util/concurrent/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/r;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/r;)Z

    return-void
.end method

.method bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/r;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->setResult(Lcom/google/common/util/concurrent/r;)V

    return-void
.end method
