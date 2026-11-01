.class public Lcom/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/android/volley/c;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/j;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private final mWaitingRequestManager:Lcom/android/volley/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/volley/l;->b:Z

    sput-boolean v0, Lcom/android/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/c;Lcom/android/volley/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/c;",
            "Lcom/android/volley/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/c;

    iput-object p4, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/j;

    new-instance p1, Lcom/android/volley/m;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/volley/m;-><init>(Lcom/android/volley/CacheDispatcher;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/j;)V

    iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/android/volley/m;

    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    invoke-virtual {p0, v0}, Lcom/android/volley/CacheDispatcher;->processRequest(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/android/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->sendEvent(I)V

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "cache-discard-canceled"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/c;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/volley/c;->a(Ljava/lang/String;)Lcom/android/volley/c$a;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "cache-miss"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/android/volley/m;

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/c$a;->b(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "cache-hit-expired"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/c$a;)Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/android/volley/m;

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :cond_4
    :try_start_3
    const-string v5, "cache-hit"

    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    new-instance v5, Lcom/android/volley/g;

    iget-object v6, v2, Lcom/android/volley/c$a;->a:[B

    iget-object v7, v2, Lcom/android/volley/c$a;->g:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/android/volley/g;-><init>([BLjava/util/Map;)V

    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/g;)Lcom/android/volley/i;

    move-result-object v5

    const-string v6, "cache-hit-parsed"

    invoke-virtual {p1, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/volley/i;->b()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v2, "cache-parsing-failed"

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/c;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/volley/c;->b(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/c$a;)Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/android/volley/m;

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :cond_6
    :try_start_4
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/c$a;->c(J)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/j;

    invoke-interface {v0, p1, v5}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;Lcom/android/volley/i;)V

    goto :goto_0

    :cond_7
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/c$a;)Lcom/android/volley/Request;

    iput-boolean v0, v5, Lcom/android/volley/i;->d:Z

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/android/volley/m;

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/j;

    new-instance v2, Lcom/android/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/android/volley/CacheDispatcher$1;-><init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V

    invoke-interface {v0, p1, v5, v2}, Lcom/android/volley/j;->b(Lcom/android/volley/Request;Lcom/android/volley/i;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/j;

    invoke-interface {v0, p1, v5}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;Lcom/android/volley/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->sendEvent(I)V

    throw v0
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lcom/android/volley/CacheDispatcher;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/c;

    invoke-interface {v0}, Lcom/android/volley/c;->initialize()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/volley/CacheDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/volley/l;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
