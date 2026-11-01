.class final Lcom/google/android/exoplayer2/source/rtsp/i0;
.super Lcom/google/android/exoplayer2/upstream/f;

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/c;
.implements Lcom/google/android/exoplayer2/source/rtsp/u$b;


# instance fields
.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final f:J

.field private g:[B

.field private h:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->f:J

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 2

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    aput-object v2, v4, v3

    const-string v0, "RTP/AVP/TCP;unicast;interleaved=%d-%d"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    return v0
.end method

.method public f([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()Lcom/google/android/exoplayer2/source/rtsp/u$b;
    .locals 0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    array-length v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    array-length v3, v2

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    if-ne v1, p3, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->f:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return v2

    :cond_2
    sub-int/2addr p3, v1

    array-length v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/2addr p2, v1

    invoke-static {v3, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    if-ge p3, p1, :cond_3

    array-length p1, v3

    invoke-static {v3, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    :cond_3
    add-int/2addr v1, p3

    return v1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v2
.end method
