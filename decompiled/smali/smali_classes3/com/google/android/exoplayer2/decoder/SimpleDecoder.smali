.class public abstract Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/d;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;

.field private final d:Ljava/util/ArrayDeque;

.field private final e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final f:[Lcom/google/android/exoplayer2/decoder/f;

.field private g:I

.field private h:I

.field private i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private j:Lcom/google/android/exoplayer2/decoder/DecoderException;

.field private k:Z

.field private l:Z

.field private m:I


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lcom/google/android/exoplayer2/decoder/f;

    array-length p2, p2

    iput p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lcom/google/android/exoplayer2/decoder/f;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d()Lcom/google/android/exoplayer2/decoder/f;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;-><init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->p()V

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lcom/google/android/exoplayer2/decoder/f;

    iget v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    aget-object v3, v3, v4

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x8000000

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j:Lcom/google/android/exoplayer2/decoder/DecoderException;

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/f;->l()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/a;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/f;->l()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    iput v0, v3, Lcom/google/android/exoplayer2/decoder/f;->c:I

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

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

.method private j()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j:Lcom/google/android/exoplayer2/decoder/DecoderException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private o(Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->b()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lcom/google/android/exoplayer2/decoder/f;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    aput-object p1, v0, v1

    return-void
.end method

.method private p()V
    .locals 2

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g()Z

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
.method protected abstract c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.end method

.method protected abstract d()Lcom/google/android/exoplayer2/decoder/f;
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i()Lcom/google/android/exoplayer2/decoder/f;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
.end method

.method protected abstract f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/f;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/f;->l()V

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

.method public final h()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Lcom/google/android/exoplayer2/decoder/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/f;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected n(Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->o(Lcom/google/android/exoplayer2/decoder/f;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final q(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->a:Ljava/lang/Thread;

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
