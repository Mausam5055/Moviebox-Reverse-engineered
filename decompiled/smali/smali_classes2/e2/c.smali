.class public final Le2/c;
.super Landroidx/media3/exoplayer/i;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:Landroidx/media3/common/x;

.field private B:J

.field private final r:Le2/a;

.field private final s:Le2/b;

.field private final t:Landroid/os/Handler;

.field private final u:Lu2/b;

.field private final v:Z

.field private w:Lu2/a;

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Le2/b;Landroid/os/Looper;)V
    .locals 1

    sget-object v0, Le2/a;->a:Le2/a;

    invoke-direct {p0, p1, p2, v0}, Le2/c;-><init>(Le2/b;Landroid/os/Looper;Le2/a;)V

    return-void
.end method

.method public constructor <init>(Le2/b;Landroid/os/Looper;Le2/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Le2/c;-><init>(Le2/b;Landroid/os/Looper;Le2/a;Z)V

    return-void
.end method

.method public constructor <init>(Le2/b;Landroid/os/Looper;Le2/a;Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/i;-><init>(I)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le2/b;

    iput-object p1, p0, Le2/c;->s:Le2/b;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Landroidx/media3/common/util/a1;->z(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le2/c;->t:Landroid/os/Handler;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le2/a;

    iput-object p1, p0, Le2/c;->r:Le2/a;

    iput-boolean p4, p0, Le2/c;->v:Z

    new-instance p1, Lu2/b;

    invoke-direct {p1}, Lu2/b;-><init>()V

    iput-object p1, p0, Le2/c;->u:Lu2/b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Le2/c;->B:J

    return-void
.end method

.method private Q(Landroidx/media3/common/x;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/x;->e()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/x$a;->getWrappedMetadataFormat()Landroidx/media3/common/r;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Le2/c;->r:Le2/a;

    invoke-interface {v2, v1}, Le2/a;->a(Landroidx/media3/common/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Le2/c;->r:Le2/a;

    invoke-interface {v2, v1}, Le2/a;->b(Landroidx/media3/common/r;)Lu2/a;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/x$a;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Le2/c;->u:Lu2/b;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v3, p0, Le2/c;->u:Lu2/b;

    array-length v4, v2

    invoke-virtual {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->b(I)V

    iget-object v3, p0, Le2/c;->u:Lu2/b;

    iget-object v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Le2/c;->u:Lu2/b;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v2, p0, Le2/c;->u:Lu2/b;

    invoke-interface {v1, v2}, Lu2/a;->a(Lu2/b;)Landroidx/media3/common/x;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Le2/c;->Q(Landroidx/media3/common/x;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private R(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    iget-wide v5, p0, Le2/c;->B:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    iget-wide v0, p0, Le2/c;->B:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private S(Landroidx/media3/common/x;)V
    .locals 2

    iget-object v0, p0, Le2/c;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Le2/c;->T(Landroidx/media3/common/x;)V

    :goto_0
    return-void
.end method

.method private T(Landroidx/media3/common/x;)V
    .locals 1

    iget-object v0, p0, Le2/c;->s:Le2/b;

    invoke-interface {v0, p1}, Le2/b;->onMetadata(Landroidx/media3/common/x;)V

    return-void
.end method

.method private U(J)Z
    .locals 4

    iget-object v0, p0, Le2/c;->A:Landroidx/media3/common/x;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Le2/c;->v:Z

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroidx/media3/common/x;->b:J

    invoke-direct {p0, p1, p2}, Le2/c;->R(J)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Le2/c;->A:Landroidx/media3/common/x;

    invoke-direct {p0, p1}, Le2/c;->S(Landroidx/media3/common/x;)V

    const/4 p1, 0x0

    iput-object p1, p0, Le2/c;->A:Landroidx/media3/common/x;

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Le2/c;->x:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Le2/c;->A:Landroidx/media3/common/x;

    if-nez p2, :cond_2

    iput-boolean v1, p0, Le2/c;->y:Z

    :cond_2
    return p1
.end method

.method private V()V
    .locals 4

    iget-boolean v0, p0, Le2/c;->x:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Le2/c;->A:Landroidx/media3/common/x;

    if-nez v0, :cond_2

    iget-object v0, p0, Le2/c;->u:Lu2/b;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object v0

    iget-object v1, p0, Le2/c;->u:Lu2/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Le2/c;->u:Lu2/b;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/c;->x:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le2/c;->u:Lu2/b;

    iget-wide v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Le2/c;->u:Lu2/b;

    iget-wide v1, p0, Le2/c;->z:J

    iput-wide v1, v0, Lu2/b;->i:J

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v0, p0, Le2/c;->w:Lu2/a;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/a;

    iget-object v1, p0, Le2/c;->u:Lu2/b;

    invoke-interface {v0, v1}, Lu2/a;->a(Lu2/b;)Landroidx/media3/common/x;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/media3/common/x;->e()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, v1}, Le2/c;->Q(Landroidx/media3/common/x;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/media3/common/x;

    iget-object v2, p0, Le2/c;->u:Lu2/b;

    iget-wide v2, v2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-direct {p0, v2, v3}, Le2/c;->R(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/common/x;-><init>(JLjava/util/List;)V

    iput-object v0, p0, Le2/c;->A:Landroidx/media3/common/x;

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iget-wide v0, v0, Landroidx/media3/common/r;->t:J

    iput-wide v0, p0, Le2/c;->z:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected C()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Le2/c;->A:Landroidx/media3/common/x;

    iput-object v0, p0, Le2/c;->w:Lu2/a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Le2/c;->B:J

    return-void
.end method

.method protected F(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Le2/c;->A:Landroidx/media3/common/x;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le2/c;->x:Z

    iput-boolean p1, p0, Le2/c;->y:Z

    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 2

    iget-object p2, p0, Le2/c;->r:Le2/a;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Le2/a;->b(Landroidx/media3/common/r;)Lu2/a;

    move-result-object p1

    iput-object p1, p0, Le2/c;->w:Lu2/a;

    iget-object p1, p0, Le2/c;->A:Landroidx/media3/common/x;

    if-eqz p1, :cond_0

    iget-wide p2, p1, Landroidx/media3/common/x;->b:J

    iget-wide v0, p0, Le2/c;->B:J

    add-long/2addr p2, v0

    sub-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/x;->c(J)Landroidx/media3/common/x;

    move-result-object p1

    iput-object p1, p0, Le2/c;->A:Landroidx/media3/common/x;

    :cond_0
    iput-wide p4, p0, Le2/c;->B:J

    return-void
.end method

.method public a(Landroidx/media3/common/r;)I
    .locals 1

    iget-object v0, p0, Le2/c;->r:Le2/a;

    invoke-interface {v0, p1}, Le2/a;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroidx/media3/common/r;->N:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/x;

    invoke-direct {p0, p1}, Le2/c;->T(Landroidx/media3/common/x;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Le2/c;->y:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public render(JJ)V
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    invoke-direct {p0}, Le2/c;->V()V

    invoke-direct {p0, p1, p2}, Le2/c;->U(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method
