.class public abstract Landroidx/media3/decoder/SimpleDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/decoder/g;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;

.field private final d:Ljava/util/ArrayDeque;

.field private final e:[Landroidx/media3/decoder/DecoderInputBuffer;

.field private final f:[Landroidx/media3/decoder/h;

.field private g:I

.field private h:I

.field private i:Landroidx/media3/decoder/DecoderInputBuffer;

.field private j:Landroidx/media3/decoder/DecoderException;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:J


# direct methods
.method protected constructor <init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/decoder/SimpleDecoder;->n:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    array-length p1, p1

    iput p1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Landroidx/media3/decoder/SimpleDecoder;->e()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/media3/decoder/SimpleDecoder;->f:[Landroidx/media3/decoder/h;

    array-length p2, p2

    iput p2, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    :goto_1
    iget p2, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Landroidx/media3/decoder/SimpleDecoder;->f:[Landroidx/media3/decoder/h;

    invoke-virtual {p0}, Landroidx/media3/decoder/SimpleDecoder;->f()Landroidx/media3/decoder/h;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Landroidx/media3/decoder/SimpleDecoder$1;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Landroidx/media3/decoder/SimpleDecoder$1;-><init>(Landroidx/media3/decoder/SimpleDecoder;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoder;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Landroidx/media3/decoder/SimpleDecoder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->r()V

    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/decoder/SimpleDecoder;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/decoder/SimpleDecoder;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v3, p0, Landroidx/media3/decoder/SimpleDecoder;->f:[Landroidx/media3/decoder/h;

    iget v4, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    aget-object v3, v3, v4

    iget-boolean v4, p0, Landroidx/media3/decoder/SimpleDecoder;->k:Z

    iput-boolean v2, p0, Landroidx/media3/decoder/SimpleDecoder;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroidx/media3/decoder/a;->addFlag(I)V

    goto :goto_2

    :cond_2
    iget-wide v6, v1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iput-wide v6, v3, Landroidx/media3/decoder/h;->timeUs:J

    invoke-virtual {v1}, Landroidx/media3/decoder/a;->isFirstSample()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x8000000

    invoke-virtual {v3, v0}, Landroidx/media3/decoder/a;->addFlag(I)V

    :cond_3
    iget-wide v6, v1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0, v6, v7}, Landroidx/media3/decoder/SimpleDecoder;->l(J)Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v5, v3, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Landroidx/media3/decoder/SimpleDecoder;->h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/SimpleDecoder;->g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/SimpleDecoder;->g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iput-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->j:Landroidx/media3/decoder/DecoderException;

    monitor-exit v4

    return v2

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_2
    iget-object v4, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-boolean v0, p0, Landroidx/media3/decoder/SimpleDecoder;->k:Z

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Landroidx/media3/decoder/h;->release()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_6
    iget-boolean v0, v3, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/media3/decoder/SimpleDecoder;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Landroidx/media3/decoder/SimpleDecoder;->m:I

    invoke-virtual {v3}, Landroidx/media3/decoder/h;->release()V

    goto :goto_3

    :cond_7
    iget v0, p0, Landroidx/media3/decoder/SimpleDecoder;->m:I

    iput v0, v3, Landroidx/media3/decoder/h;->skippedOutputBufferCount:I

    iput v2, p0, Landroidx/media3/decoder/SimpleDecoder;->m:I

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_3
    invoke-direct {p0, v1}, Landroidx/media3/decoder/SimpleDecoder;->o(Landroidx/media3/decoder/DecoderInputBuffer;)V

    monitor-exit v4

    return v5

    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private m()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->j:Landroidx/media3/decoder/DecoderException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private o(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    iget v1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private q(Landroidx/media3/decoder/h;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/decoder/h;->clear()V

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->f:[Landroidx/media3/decoder/h;

    iget v1, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/decoder/SimpleDecoder;->h:I

    aput-object p1, v0, v1

    return-void
.end method

.method private r()V
    .locals 2

    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->i()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    iget-object v2, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Landroidx/media3/decoder/SimpleDecoder;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    iput-wide p1, p0, Landroidx/media3/decoder/SimpleDecoder;->n:J

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->n()V

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->i:Landroidx/media3/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->m()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoder;->i:Landroidx/media3/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/decoder/SimpleDecoder;->j()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/decoder/SimpleDecoder;->k()Landroidx/media3/decoder/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e()Landroidx/media3/decoder/DecoderInputBuffer;
.end method

.method protected abstract f()Landroidx/media3/decoder/h;
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/decoder/SimpleDecoder;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/decoder/SimpleDecoder;->m:I

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->i:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/media3/decoder/SimpleDecoder;->o(Landroidx/media3/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->i:Landroidx/media3/decoder/DecoderInputBuffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media3/decoder/SimpleDecoder;->o(Landroidx/media3/decoder/DecoderInputBuffer;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/h;

    invoke-virtual {v1}, Landroidx/media3/decoder/h;->release()V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
.end method

.method protected abstract h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
.end method

.method public final j()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 4

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->n()V

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->i:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    iget v1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->i:Landroidx/media3/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Landroidx/media3/decoder/h;
    .locals 2

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->n()V

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/h;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final l(J)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroidx/media3/decoder/SimpleDecoder;->n:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected p(Landroidx/media3/decoder/h;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->q(Landroidx/media3/decoder/h;)V

    invoke-direct {p0}, Landroidx/media3/decoder/SimpleDecoder;->m()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->b(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/decoder/SimpleDecoder;->l:Z

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final s(I)V
    .locals 4

    iget v0, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    iget-object v1, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
