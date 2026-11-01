.class abstract Lcom/facebook/biddingkit/auction/e;
.super Lcom/facebook/biddingkit/auction/d;


# direct methods
.method protected static a(Ljava/lang/String;Ln8/b;Lcom/facebook/biddingkit/auction/b;)Ljava/util/List;
    .locals 1

    sget-object p2, Lo8/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/facebook/biddingkit/auction/e$a;

    invoke-direct {v0, p1, p0}, Lcom/facebook/biddingkit/auction/e$a;-><init>(Ln8/b;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    new-instance p0, Lcom/facebook/biddingkit/logging/e;

    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/e;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method
