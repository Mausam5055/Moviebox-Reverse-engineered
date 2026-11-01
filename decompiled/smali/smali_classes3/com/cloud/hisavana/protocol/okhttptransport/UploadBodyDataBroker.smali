.class final Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private d()Landroid/util/Pair;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while waiting for a read to finish!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method b(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/y;->s()Lcom/google/common/util/concurrent/y;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method h()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->d()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/y;

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method i(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/y;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->d()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/y;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    int-to-long v3, v2

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p1, v1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    sub-long/2addr p2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The source has been exhausted but we expected more!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    throw p1

    :cond_1
    return-void
.end method
