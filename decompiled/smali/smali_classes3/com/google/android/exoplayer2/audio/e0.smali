.class public final Lcom/google/android/exoplayer2/audio/e0;
.super Lcom/google/android/exoplayer2/audio/v;


# instance fields
.field private final i:J

.field private final j:J

.field private final k:S

.field private l:I

.field private m:Z

.field private n:[B

.field private o:[B

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    const-wide/32 v1, 0x249f0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/e0;-><init>(JJS)V

    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/v;-><init>()V

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/e0;->i:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/e0;->j:J

    iput-short p5, p0, Lcom/google/android/exoplayer2/audio/e0;->k:S

    sget-object p1, Lcom/google/android/exoplayer2/util/p0;->f:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    return-void
.end method

.method private h(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/v;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private i(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/e0;->k:S

    if-le v1, v2, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1
.end method

.method private j(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/e0;->k:S

    if-le v1, v2, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    div-int/2addr v0, p1

    mul-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    return p1
.end method

.method private l(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/v;->g(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/e0;->s:Z

    :cond_0
    return-void
.end method

.method private m([BI)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/v;->g(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/e0;->s:Z

    :cond_0
    return-void
.end method

.method private n(Ljava/nio/ByteBuffer;)V
    .locals 9

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->j(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    array-length v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplayer2/audio/e0;->m([BI)V

    iput v6, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    iput v6, p0, Lcom/google/android/exoplayer2/audio/e0;->p:I

    goto :goto_1

    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    iget v3, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    array-length v3, v1

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/e0;->s:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/e0;->m([BI)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    iget v3, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    mul-int/2addr v5, v4

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    goto :goto_0

    :cond_1
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/e0;->r(Ljava/nio/ByteBuffer;[BI)V

    iput v6, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    iput v4, p0, Lcom/google/android/exoplayer2/audio/e0;->p:I

    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method private o(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->i(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/audio/e0;->p:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->l(Ljava/nio/ByteBuffer;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private p(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->j(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    iget v3, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/exoplayer2/audio/e0;->r(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/e0;->m([BI)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/e0;->p:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private r(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/e0;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)V

    throw v0
.end method

.method protected d()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/e0;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/v;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->d:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/e0;->i:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/e0;->h(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/e0;->j:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/e0;->h(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/e0;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    iput v0, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/e0;->s:Z

    return-void
.end method

.method protected e()V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/audio/e0;->q:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/e0;->m([BI)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/e0;->s:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/e0;->l:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    :cond_1
    return-void
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/e0;->m:Z

    iput v0, p0, Lcom/google/android/exoplayer2/audio/e0;->r:I

    sget-object v0, Lcom/google/android/exoplayer2/util/p0;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->n:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->o:[B

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/e0;->m:Z

    return v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/e0;->t:J

    return-wide v0
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/e0;->m:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/v;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/e0;->p:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->p(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->n(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/e0;->o(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    return-void
.end method
