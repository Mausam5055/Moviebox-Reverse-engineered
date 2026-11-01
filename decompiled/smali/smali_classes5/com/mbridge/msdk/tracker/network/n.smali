.class public Lcom/mbridge/msdk/tracker/network/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mbridge/msdk/tracker/network/m;

.field private final c:Lcom/mbridge/msdk/tracker/network/b;

.field private final d:Lcom/mbridge/msdk/tracker/network/w;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/b;Lcom/mbridge/msdk/tracker/network/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;>;",
            "Lcom/mbridge/msdk/tracker/network/m;",
            "Lcom/mbridge/msdk/tracker/network/b;",
            "Lcom/mbridge/msdk/tracker/network/w;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/n;->e:Z

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/n;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/network/n;->b:Lcom/mbridge/msdk/tracker/network/m;

    iput-object p3, p0, Lcom/mbridge/msdk/tracker/network/n;->c:Lcom/mbridge/msdk/tracker/network/b;

    iput-object p4, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    return-void
.end method

.method private a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/n;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/tracker/network/t;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/tracker/network/n;->b(Lcom/mbridge/msdk/tracker/network/t;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->s()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Lcom/mbridge/msdk/tracker/network/b0;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/t;->c(Lcom/mbridge/msdk/tracker/network/b0;)Lcom/mbridge/msdk/tracker/network/b0;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/tracker/network/w;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V

    return-void
.end method


# virtual methods
.method b(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V
    :try_end_0
    .catch Lcom/mbridge/msdk/tracker/network/b0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->y()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/n;->a(Lcom/mbridge/msdk/tracker/network/t;)V

    :cond_1
    iget-object v3, p0, Lcom/mbridge/msdk/tracker/network/n;->b:Lcom/mbridge/msdk/tracker/network/m;

    invoke-interface {v3, p1}, Lcom/mbridge/msdk/tracker/network/m;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/tracker/network/q;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/mbridge/msdk/tracker/network/q;->e:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "not-modified"

    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V
    :try_end_1
    .catch Lcom/mbridge/msdk/tracker/network/b0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/v;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/mbridge/msdk/tracker/network/v;->b:Lcom/mbridge/msdk/tracker/network/b$a;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mbridge/msdk/tracker/network/n;->c:Lcom/mbridge/msdk/tracker/network/b;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/mbridge/msdk/tracker/network/v;->b:Lcom/mbridge/msdk/tracker/network/b$a;

    invoke-interface {v4, v5, v6}, Lcom/mbridge/msdk/tracker/network/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/b$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->w()V

    iget-object v4, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    invoke-interface {v4, p1, v3}, Lcom/mbridge/msdk/tracker/network/w;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/v;)V

    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/v;)V
    :try_end_2
    .catch Lcom/mbridge/msdk/tracker/network/b0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_0
    :try_start_3
    const-string v4, "Unhandled exception %s"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v4, v6}, Lcom/mbridge/msdk/tracker/network/c0;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/mbridge/msdk/tracker/network/a0;

    invoke-direct {v4, v3}, Lcom/mbridge/msdk/tracker/network/a0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/tracker/network/b0;->a(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    invoke-interface {v0, p1, v4}, Lcom/mbridge/msdk/tracker/network/w;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/tracker/network/b0;->a(J)V

    invoke-direct {p0, p1, v3}, Lcom/mbridge/msdk/tracker/network/n;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    return-void

    :goto_3
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    throw v0
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/network/n;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/n;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/tracker/network/c0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
