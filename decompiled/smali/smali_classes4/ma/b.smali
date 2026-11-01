.class public final Lma/b;
.super Lcom/google/android/exoplayer2/h;


# instance fields
.field private final n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final o:Lcom/google/android/exoplayer2/util/d0;

.field private p:J

.field private q:Lma/a;

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h;-><init>(I)V

    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object v0, p0, Lma/b;->o:Lcom/google/android/exoplayer2/util/d0;

    return-void
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Lma/b;->q:Lma/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lma/a;->b()V

    :cond_0
    return-void
.end method

.method private z(Ljava/nio/ByteBuffer;)[F
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lma/b;->o:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/d0;->N([BI)V

    iget-object v0, p0, Lma/b;->o:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lma/b;->o:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/o1;)I
    .locals 1

    const-string v0, "application/x-camera-motion"

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    check-cast p2, Lma/a;

    iput-object p2, p0, Lma/b;->q:Lma/a;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/h;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected p()V
    .locals 0

    invoke-direct {p0}, Lma/b;->A()V

    return-void
.end method

.method protected r(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lma/b;->r:J

    invoke-direct {p0}, Lma/b;->A()V

    return-void
.end method

.method public render(JJ)V
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Lma/b;->r:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_4

    iget-object p3, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->k()Lcom/google/android/exoplayer2/p1;

    move-result-object p3

    iget-object p4, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/exoplayer2/h;->w(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    iget-object p3, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lma/b;->r:J

    iget-object p4, p0, Lma/b;->q:Lma/a;

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/a;->g()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-object p3, p0, Lma/b;->n:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p3, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lma/b;->z(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lma/b;->q:Lma/a;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lma/a;

    iget-wide v0, p0, Lma/b;->r:J

    iget-wide v2, p0, Lma/b;->p:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lma/a;->a(J[F)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method protected v([Lcom/google/android/exoplayer2/o1;JJ)V
    .locals 0

    iput-wide p4, p0, Lma/b;->p:J

    return-void
.end method
