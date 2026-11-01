.class public final Lk2/b;
.super Landroidx/media3/exoplayer/i;


# instance fields
.field private final r:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final s:Landroidx/media3/common/util/j0;

.field private t:Lk2/a;

.field private u:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/i;-><init>(I)V

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Lk2/b;->s:Landroidx/media3/common/util/j0;

    return-void
.end method

.method private Q(Ljava/nio/ByteBuffer;)[F
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lk2/b;->s:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object v0, p0, Lk2/b;->s:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lk2/b;->s:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private R()V
    .locals 1

    iget-object v0, p0, Lk2/b;->t:Lk2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk2/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected C()V
    .locals 0

    invoke-direct {p0}, Lk2/b;->R()V

    return-void
.end method

.method protected F(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lk2/b;->u:J

    invoke-direct {p0}, Lk2/b;->R()V

    return-void
.end method

.method public a(Landroidx/media3/common/r;)I
    .locals 1

    const-string v0, "application/x-camera-motion"

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

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

    check-cast p2, Lk2/a;

    iput-object p2, p0, Lk2/b;->t:Lk2/a;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/i;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public render(JJ)V
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_5

    iget-wide p3, p0, Lk2/b;->u:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_5

    iget-object p3, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object p3

    iget-object p4, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_5

    iget-object p3, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide p3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iput-wide p3, p0, Lk2/b;->u:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v1

    cmp-long p3, p3, v1

    if-gez p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object p3, p0, Lk2/b;->t:Lk2/a;

    if-eqz p3, :cond_0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object p3, p0, Lk2/b;->r:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object p3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lk2/b;->Q(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p4, p0, Lk2/b;->t:Lk2/a;

    invoke-static {p4}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lk2/a;

    iget-wide v0, p0, Lk2/b;->u:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->z()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lk2/a;->a(J[F)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
