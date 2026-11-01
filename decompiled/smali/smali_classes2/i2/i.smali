.class public final Li2/i;
.super Landroidx/media3/exoplayer/i;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:Li3/p;

.field private B:I

.field private final C:Landroid/os/Handler;

.field private final D:Li2/h;

.field private final E:Landroidx/media3/exoplayer/s2;

.field private F:Z

.field private G:Z

.field private H:Landroidx/media3/common/r;

.field private I:J

.field private J:J

.field private K:Z

.field private L:Ljava/io/IOException;

.field private final r:Li3/b;

.field private final s:Landroidx/media3/decoder/DecoderInputBuffer;

.field private t:Li2/a;

.field private final u:Li2/g;

.field private v:Z

.field private w:I

.field private x:Li3/l;

.field private y:Li3/o;

.field private z:Li3/p;


# direct methods
.method public constructor <init>(Li2/h;Landroid/os/Looper;)V
    .locals 1

    sget-object v0, Li2/g;->a:Li2/g;

    invoke-direct {p0, p1, p2, v0}, Li2/i;-><init>(Li2/h;Landroid/os/Looper;Li2/g;)V

    return-void
.end method

.method public constructor <init>(Li2/h;Landroid/os/Looper;Li2/g;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/i;-><init>(I)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/h;

    iput-object p1, p0, Li2/i;->D:Li2/h;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Landroidx/media3/common/util/a1;->z(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Li2/i;->C:Landroid/os/Handler;

    iput-object p3, p0, Li2/i;->u:Li2/g;

    new-instance p1, Li3/b;

    invoke-direct {p1}, Li3/b;-><init>()V

    iput-object p1, p0, Li2/i;->r:Li3/b;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/exoplayer/s2;

    invoke-direct {p1}, Landroidx/media3/exoplayer/s2;-><init>()V

    iput-object p1, p0, Li2/i;->E:Landroidx/media3/exoplayer/s2;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Li2/i;->J:J

    iput-wide p1, p0, Li2/i;->I:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Li2/i;->K:Z

    return-void
.end method

.method private Q()V
    .locals 3

    iget-boolean v0, p0, Li2/i;->K:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Li2/i;->H:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li2/i;->H:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li2/i;->H:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy decoding is disabled, can\'t handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li2/i;->H:Landroidx/media3/common/r;

    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " samples (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "application/x-media3-cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    return-void
.end method

.method private R()V
    .locals 4

    new-instance v0, Lu1/b;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-wide v2, p0, Li2/i;->I:J

    invoke-direct {p0, v2, v3}, Li2/i;->U(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lu1/b;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v0}, Li2/i;->h0(Lu1/b;)V

    return-void
.end method

.method private S(J)J
    .locals 1

    iget-object v0, p0, Li2/i;->z:Li3/p;

    invoke-virtual {v0, p1, p2}, Li3/p;->getNextEventTimeIndex(J)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Li2/i;->z:Li3/p;

    invoke-virtual {p2}, Li3/p;->getEventTimeCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Li2/i;->z:Li3/p;

    invoke-virtual {p1}, Li3/p;->getEventTimeCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Li3/p;->getEventTime(I)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Li2/i;->z:Li3/p;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Li3/p;->getEventTime(I)J

    move-result-wide p1

    :goto_0
    return-wide p1

    :cond_2
    :goto_1
    iget-object p1, p0, Li2/i;->z:Li3/p;

    iget-wide p1, p1, Landroidx/media3/decoder/h;->timeUs:J

    return-wide p1
.end method

.method private T()J
    .locals 4

    iget v0, p0, Li2/i;->B:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Li2/i;->z:Li3/p;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Li2/i;->B:I

    iget-object v1, p0, Li2/i;->z:Li3/p;

    invoke-virtual {v1}, Li3/p;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li2/i;->z:Li3/p;

    iget v1, p0, Li2/i;->B:I

    invoke-virtual {v0, v1}, Li3/p;->getEventTime(I)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private U(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->z()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private V(Landroidx/media3/extractor/text/SubtitleDecoderException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li2/i;->H:Landroidx/media3/common/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Li2/i;->R()V

    invoke-direct {p0}, Li2/i;->f0()V

    return-void
.end method

.method private static W(Li3/k;J)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Li3/k;->getEventTimeCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p0, v1}, Li3/k;->getEventTime(I)J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private X()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Li2/i;->v:Z

    iget-object v0, p0, Li2/i;->u:Li2/g;

    iget-object v1, p0, Li2/i;->H:Landroidx/media3/common/r;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/r;

    invoke-interface {v0, v1}, Li2/g;->b(Landroidx/media3/common/r;)Li3/l;

    move-result-object v0

    iput-object v0, p0, Li2/i;->x:Li3/l;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/decoder/g;->a(J)V

    return-void
.end method

.method private Y(Lu1/b;)V
    .locals 2

    iget-object v0, p0, Li2/i;->D:Li2/h;

    iget-object v1, p1, Lu1/b;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1}, Li2/h;->onCues(Ljava/util/List;)V

    iget-object v0, p0, Li2/i;->D:Li2/h;

    invoke-interface {v0, p1}, Li2/h;->onCues(Lu1/b;)V

    return-void
.end method

.method private static Z(Landroidx/media3/common/r;)Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v0, "application/x-media3-cues"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a0(J)Z
    .locals 7

    iget-boolean v0, p0, Li2/i;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li2/i;->E:Landroidx/media3/exoplayer/s2;

    iget-object v2, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    const/4 v2, -0x4

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Li2/i;->F:Z

    return v1

    :cond_2
    iget-object v0, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v0, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Li2/i;->r:Li3/b;

    iget-object v2, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v2, v2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Li3/b;->a(J[BII)Li3/e;

    move-result-object v0

    iget-object v1, p0, Li2/i;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v1, p0, Li2/i;->t:Li2/a;

    invoke-interface {v1, v0, p1, p2}, Li2/a;->d(Li3/e;J)Z

    move-result p1

    return p1
.end method

.method private b0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Li2/i;->y:Li3/o;

    const/4 v1, -0x1

    iput v1, p0, Li2/i;->B:I

    iget-object v1, p0, Li2/i;->z:Li3/p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/decoder/h;->release()V

    iput-object v0, p0, Li2/i;->z:Li3/p;

    :cond_0
    iget-object v1, p0, Li2/i;->A:Li3/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/decoder/h;->release()V

    iput-object v0, p0, Li2/i;->A:Li3/p;

    :cond_1
    return-void
.end method

.method private c0()V
    .locals 1

    invoke-direct {p0}, Li2/i;->b0()V

    iget-object v0, p0, Li2/i;->x:Li3/l;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/l;

    invoke-interface {v0}, Landroidx/media3/decoder/g;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Li2/i;->x:Li3/l;

    const/4 v0, 0x0

    iput v0, p0, Li2/i;->w:I

    return-void
.end method

.method private d0(J)V
    .locals 6

    invoke-direct {p0, p1, p2}, Li2/i;->a0(J)Z

    move-result v0

    iget-object v1, p0, Li2/i;->t:Li2/a;

    iget-wide v2, p0, Li2/i;->I:J

    invoke-interface {v1, v2, v3}, Li2/a;->c(J)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-boolean v5, p0, Li2/i;->F:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Li2/i;->G:Z

    :cond_0
    if-eqz v3, :cond_1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_1

    move v0, v4

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Li2/i;->t:Li2/a;

    invoke-interface {v0, p1, p2}, Li2/a;->a(J)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Li2/i;->t:Li2/a;

    invoke-interface {v1, p1, p2}, Li2/a;->b(J)J

    move-result-wide v1

    new-instance v3, Lu1/b;

    invoke-direct {p0, v1, v2}, Li2/i;->U(J)J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lu1/b;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v3}, Li2/i;->h0(Lu1/b;)V

    iget-object v0, p0, Li2/i;->t:Li2/a;

    invoke-interface {v0, v1, v2}, Li2/a;->e(J)V

    :cond_2
    iput-wide p1, p0, Li2/i;->I:J

    return-void
.end method

.method private e0(J)V
    .locals 10

    iput-wide p1, p0, Li2/i;->I:J

    iget-object v0, p0, Li2/i;->A:Li3/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Li2/i;->x:Li3/l;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/l;

    invoke-interface {v0, p1, p2}, Li3/l;->setPositionUs(J)V

    :try_start_0
    iget-object v0, p0, Li2/i;->x:Li3/l;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/l;

    invoke-interface {v0}, Landroidx/media3/decoder/g;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/p;

    iput-object v0, p0, Li2/i;->A:Li3/p;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Li2/i;->V(Landroidx/media3/extractor/text/SubtitleDecoderException;)V

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Li2/i;->z:Li3/p;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li2/i;->T()J

    move-result-wide v4

    move v0, v2

    :goto_1
    cmp-long v4, v4, p1

    if-gtz v4, :cond_3

    iget v0, p0, Li2/i;->B:I

    add-int/2addr v0, v3

    iput v0, p0, Li2/i;->B:I

    invoke-direct {p0}, Li2/i;->T()J

    move-result-wide v4

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    iget-object v4, p0, Li2/i;->A:Li3/p;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_7

    invoke-direct {p0}, Li2/i;->T()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    iget v4, p0, Li2/i;->w:I

    if-ne v4, v1, :cond_4

    invoke-direct {p0}, Li2/i;->f0()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Li2/i;->b0()V

    iput-boolean v3, p0, Li2/i;->G:Z

    goto :goto_2

    :cond_5
    iget-wide v6, v4, Landroidx/media3/decoder/h;->timeUs:J

    cmp-long v6, v6, p1

    if-gtz v6, :cond_7

    iget-object v0, p0, Li2/i;->z:Li3/p;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/media3/decoder/h;->release()V

    :cond_6
    invoke-virtual {v4, p1, p2}, Li3/p;->getNextEventTimeIndex(J)I

    move-result v0

    iput v0, p0, Li2/i;->B:I

    iput-object v4, p0, Li2/i;->z:Li3/p;

    iput-object v5, p0, Li2/i;->A:Li3/p;

    move v0, v3

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Li2/i;->z:Li3/p;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Li2/i;->S(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Li2/i;->U(J)J

    move-result-wide v6

    new-instance v0, Lu1/b;

    iget-object v4, p0, Li2/i;->z:Li3/p;

    invoke-virtual {v4, p1, p2}, Li3/p;->getCues(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, v6, v7}, Lu1/b;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v0}, Li2/i;->h0(Lu1/b;)V

    :cond_8
    iget p1, p0, Li2/i;->w:I

    if-ne p1, v1, :cond_9

    return-void

    :cond_9
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Li2/i;->F:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Li2/i;->y:Li3/o;

    if-nez p1, :cond_b

    iget-object p1, p0, Li2/i;->x:Li3/l;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li3/l;

    invoke-interface {p1}, Landroidx/media3/decoder/g;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li3/o;

    if-nez p1, :cond_a

    return-void

    :cond_a
    iput-object p1, p0, Li2/i;->y:Li3/o;

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_b
    :goto_4
    iget p2, p0, Li2/i;->w:I

    if-ne p2, v3, :cond_c

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroidx/media3/decoder/a;->setFlags(I)V

    iget-object p2, p0, Li2/i;->x:Li3/l;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li3/l;

    invoke-interface {p2, p1}, Landroidx/media3/decoder/g;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v5, p0, Li2/i;->y:Li3/o;

    iput v1, p0, Li2/i;->w:I

    return-void

    :cond_c
    iget-object p2, p0, Li2/i;->E:Landroidx/media3/exoplayer/s2;

    invoke-virtual {p0, p2, p1, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 v0, -0x4

    if-ne p2, v0, :cond_f

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result p2

    if-eqz p2, :cond_d

    iput-boolean v3, p0, Li2/i;->F:Z

    iput-boolean v2, p0, Li2/i;->v:Z

    goto :goto_5

    :cond_d
    iget-object p2, p0, Li2/i;->E:Landroidx/media3/exoplayer/s2;

    iget-object p2, p2, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget-wide v6, p2, Landroidx/media3/common/r;->t:J

    iput-wide v6, p1, Li3/o;->i:J

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-boolean p2, p0, Li2/i;->v:Z

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isKeyFrame()Z

    move-result v0

    xor-int/2addr v0, v3

    and-int/2addr p2, v0

    iput-boolean p2, p0, Li2/i;->v:Z

    :goto_5
    iget-boolean p2, p0, Li2/i;->v:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Li2/i;->x:Li3/l;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li3/l;

    invoke-interface {p2, p1}, Landroidx/media3/decoder/g;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v5, p0, Li2/i;->y:Li3/o;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_f
    const/4 p1, -0x3

    if-ne p2, p1, :cond_9

    return-void

    :goto_6
    invoke-direct {p0, p1}, Li2/i;->V(Landroidx/media3/extractor/text/SubtitleDecoderException;)V

    :cond_10
    return-void
.end method

.method private f0()V
    .locals 0

    invoke-direct {p0}, Li2/i;->c0()V

    invoke-direct {p0}, Li2/i;->X()V

    return-void
.end method

.method private h0(Lu1/b;)V
    .locals 2

    iget-object v0, p0, Li2/i;->C:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Li2/i;->Y(Lu1/b;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected C()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Li2/i;->H:Landroidx/media3/common/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Li2/i;->J:J

    invoke-direct {p0}, Li2/i;->R()V

    iput-wide v0, p0, Li2/i;->I:J

    iget-object v0, p0, Li2/i;->x:Li3/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li2/i;->c0()V

    :cond_0
    return-void
.end method

.method protected F(JZ)V
    .locals 0

    iput-wide p1, p0, Li2/i;->I:J

    iget-object p1, p0, Li2/i;->t:Li2/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Li2/a;->clear()V

    :cond_0
    invoke-direct {p0}, Li2/i;->R()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Li2/i;->F:Z

    iput-boolean p1, p0, Li2/i;->G:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Li2/i;->J:J

    iget-object p1, p0, Li2/i;->H:Landroidx/media3/common/r;

    if-eqz p1, :cond_2

    invoke-static {p1}, Li2/i;->Z(Landroidx/media3/common/r;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Li2/i;->w:I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Li2/i;->f0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Li2/i;->b0()V

    iget-object p1, p0, Li2/i;->x:Li3/l;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li3/l;

    invoke-interface {p1}, Landroidx/media3/decoder/g;->flush()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Landroidx/media3/decoder/g;->a(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Li2/i;->H:Landroidx/media3/common/r;

    invoke-static {p1}, Li2/i;->Z(Landroidx/media3/common/r;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Li2/i;->Q()V

    iget-object p1, p0, Li2/i;->x:Li3/l;

    if-eqz p1, :cond_0

    iput p2, p0, Li2/i;->w:I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Li2/i;->X()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Li2/i;->H:Landroidx/media3/common/r;

    iget p1, p1, Landroidx/media3/common/r;->K:I

    if-ne p1, p2, :cond_2

    new-instance p1, Li2/e;

    invoke-direct {p1}, Li2/e;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Li2/f;

    invoke-direct {p1}, Li2/f;-><init>()V

    :goto_0
    iput-object p1, p0, Li2/i;->t:Li2/a;

    :goto_1
    return-void
.end method

.method public a(Landroidx/media3/common/r;)I
    .locals 1

    invoke-static {p1}, Li2/i;->Z(Landroidx/media3/common/r;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Li2/i;->u:Li2/g;

    invoke-interface {v0, p1}, Li2/g;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    iget p1, p1, Landroidx/media3/common/r;->N:I

    if-nez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1
.end method

.method public g0(J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->isCurrentStreamFinal()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-wide p1, p0, Li2/i;->J:J

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lu1/b;

    invoke-direct {p0, p1}, Li2/i;->Y(Lu1/b;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Li2/i;->G:Z

    return v0
.end method

.method public isReady()Z
    .locals 7

    iget-object v0, p0, Li2/i;->H:Landroidx/media3/common/r;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li2/i;->L:Ljava/io/IOException;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Li2/i;->L:Ljava/io/IOException;

    :cond_1
    :goto_0
    iget-object v0, p0, Li2/i;->L:Ljava/io/IOException;

    if-eqz v0, :cond_5

    iget-object v0, p0, Li2/i;->H:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    invoke-static {v0}, Li2/i;->Z(Landroidx/media3/common/r;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li2/i;->t:Li2/a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li2/a;

    iget-wide v3, p0, Li2/i;->I:J

    invoke-interface {v0, v3, v4}, Li2/a;->c(J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    iget-boolean v0, p0, Li2/i;->G:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Li2/i;->F:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Li2/i;->z:Li3/p;

    iget-wide v3, p0, Li2/i;->I:J

    invoke-static {v0, v3, v4}, Li2/i;->W(Li3/k;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Li2/i;->A:Li3/p;

    iget-wide v3, p0, Li2/i;->I:J

    invoke-static {v0, v3, v4}, Li2/i;->W(Li3/k;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Li2/i;->y:Li3/o;

    if-eqz v0, :cond_5

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public render(JJ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->isCurrentStreamFinal()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide p3, p0, Li2/i;->J:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    invoke-direct {p0}, Li2/i;->b0()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Li2/i;->G:Z

    :cond_0
    iget-boolean p3, p0, Li2/i;->G:Z

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Li2/i;->H:Landroidx/media3/common/r;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/r;

    invoke-static {p3}, Li2/i;->Z(Landroidx/media3/common/r;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Li2/i;->t:Li2/a;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Li2/i;->d0(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Li2/i;->Q()V

    invoke-direct {p0, p1, p2}, Li2/i;->e0(J)V

    :goto_0
    return-void
.end method
