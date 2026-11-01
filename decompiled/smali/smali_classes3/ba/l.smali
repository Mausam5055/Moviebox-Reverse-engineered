.class public Lba/l;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# instance fields
.field private final a:Lba/j;

.field private final b:Lba/d;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:Lcom/google/android/exoplayer2/o1;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:Lg9/n;

.field private h:Lg9/e0;

.field private i:I

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Lba/j;Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/l;->a:Lba/j;

    new-instance p1, Lba/d;

    invoke-direct {p1}, Lba/d;-><init>()V

    iput-object p1, p0, Lba/l;->b:Lba/d;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    const-string v0, "text/x-exoplayer-cues"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    iput-object p1, p0, Lba/l;->d:Lcom/google/android/exoplayer2/o1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lba/l;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lba/l;->f:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lba/l;->j:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lba/l;->k:J

    return-void
.end method

.method private a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lba/l;->a:Lba/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/m;

    :goto_0
    const-wide/16 v1, 0x5

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lba/l;->a:Lba/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/m;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget v3, p0, Lba/l;->i:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v4

    iget v5, p0, Lba/l;->i:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget v4, p0, Lba/l;->i:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lba/l;->a:Lba/j;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/decoder/d;->queueInputBuffer(Ljava/lang/Object;)V

    iget-object v0, p0, Lba/l;->a:Lba/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/n;

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lba/l;->a:Lba/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/n;

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lba/n;->getEventTimeCount()I

    move-result v1

    if-ge v6, v1, :cond_2

    invoke-virtual {v0, v6}, Lba/n;->getEventTime(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lba/n;->getCues(J)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lba/l;->b:Lba/d;

    invoke-virtual {v2, v1}, Lba/d;->a(Ljava/util/List;)[B

    move-result-object v1

    iget-object v2, p0, Lba/l;->e:Ljava/util/List;

    invoke-virtual {v0, v6}, Lba/n;->getEventTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lba/l;->f:Ljava/util/List;

    new-instance v3, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/f;->l()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    const-string v1, "SubtitleDecoder failed."

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private e(Lg9/m;)Z
    .locals 6

    iget-object v0, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->b()I

    move-result v0

    iget v1, p0, Lba/l;->i:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    add-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->c(I)V

    :cond_0
    iget-object v0, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    iget v1, p0, Lba/l;->i:I

    iget-object v2, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->b()I

    move-result v2

    iget v3, p0, Lba/l;->i:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lg9/m;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lba/l;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lba/l;->i:I

    :cond_1
    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget p1, p0, Lba/l;->i:I

    int-to-long v4, p1

    cmp-long p1, v4, v2

    if-eqz p1, :cond_3

    :cond_2
    if-ne v0, v1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(Lg9/m;)Z
    .locals 4

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    invoke-interface {p1, v0}, Lg9/m;->skip(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private g()V
    .locals 11

    iget-object v0, p0, Lba/l;->h:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lba/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lba/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-wide v0, p0, Lba/l;->k:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lba/l;->e:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v0, v3, v3}, Lcom/google/android/exoplayer2/util/p0;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lba/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lba/l;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v3

    array-length v8, v3

    iget-object v3, p0, Lba/l;->h:Lg9/e0;

    invoke-interface {v3, v1, v8}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget-object v4, p0, Lba/l;->h:Lg9/e0;

    iget-object v1, p0, Lba/l;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lg9/e0;->d(JIIILg9/e0$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 7

    iget v0, p0, Lba/l;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-object p1, p0, Lba/l;->g:Lg9/n;

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Lba/l;->h:Lg9/e0;

    iget-object p1, p0, Lba/l;->g:Lg9/n;

    invoke-interface {p1}, Lg9/n;->endTracks()V

    iget-object p1, p0, Lba/l;->g:Lg9/n;

    new-instance v0, Lg9/z;

    const-wide/16 v3, 0x0

    new-array v5, v2, [J

    aput-wide v3, v5, v1

    new-array v6, v2, [J

    aput-wide v3, v6, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v5, v6, v3, v4}, Lg9/z;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Lg9/n;->d(Lg9/b0;)V

    iget-object p1, p0, Lba/l;->h:Lg9/e0;

    iget-object v0, p0, Lba/l;->d:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p1, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    iput v2, p0, Lba/l;->j:I

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 7

    iget p2, p0, Lba/l;->j:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget p2, p0, Lba/l;->j:I

    const/4 v2, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lba/l;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x400

    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    iput v1, p0, Lba/l;->i:I

    iput v2, p0, Lba/l;->j:I

    :cond_2
    iget p2, p0, Lba/l;->j:I

    const/4 v0, 0x4

    if-ne p2, v2, :cond_3

    invoke-direct {p0, p1}, Lba/l;->e(Lg9/m;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lba/l;->a()V

    invoke-direct {p0}, Lba/l;->g()V

    iput v0, p0, Lba/l;->j:I

    :cond_3
    iget p2, p0, Lba/l;->j:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    invoke-direct {p0, p1}, Lba/l;->f(Lg9/m;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lba/l;->g()V

    iput v0, p0, Lba/l;->j:I

    :cond_4
    iget p1, p0, Lba/l;->j:I

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    return v1
.end method

.method public d(Lg9/m;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public release()V
    .locals 2

    iget v0, p0, Lba/l;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lba/l;->a:Lba/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->release()V

    iput v1, p0, Lba/l;->j:I

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget p1, p0, Lba/l;->j:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-wide p3, p0, Lba/l;->k:J

    iget p1, p0, Lba/l;->j:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iput p2, p0, Lba/l;->j:I

    :cond_1
    iget p1, p0, Lba/l;->j:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lba/l;->j:I

    :cond_2
    return-void
.end method
