.class public Ld2/e;
.super Landroidx/media3/exoplayer/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/e$a;,
        Ld2/e$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroidx/media3/common/r;

.field private C:Ld2/c;

.field private D:Landroidx/media3/decoder/DecoderInputBuffer;

.field private E:Landroidx/media3/exoplayer/image/ImageOutput;

.field private F:Landroid/graphics/Bitmap;

.field private G:Z

.field private H:Ld2/e$b;

.field private I:Ld2/e$b;

.field private J:I

.field private K:Z

.field private final r:Ld2/c$a;

.field private final s:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final t:Ljava/util/ArrayDeque;

.field private u:Z

.field private v:Z

.field private w:Ld2/e$a;

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(Ld2/c$a;Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/i;-><init>(I)V

    iput-object p1, p0, Ld2/e;->r:Ld2/c$a;

    invoke-static {p2}, Ld2/e;->U(Landroidx/media3/exoplayer/image/ImageOutput;)Landroidx/media3/exoplayer/image/ImageOutput;

    move-result-object p1

    iput-object p1, p0, Ld2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->f()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Ld2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    sget-object p1, Ld2/e$a;->c:Ld2/e$a;

    iput-object p1, p0, Ld2/e;->w:Ld2/e$a;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ld2/e;->y:J

    iput-wide p1, p0, Ld2/e;->x:J

    const/4 p1, 0x0

    iput p1, p0, Ld2/e;->z:I

    const/4 p1, 0x1

    iput p1, p0, Ld2/e;->A:I

    return-void
.end method

.method private Q(Landroidx/media3/common/r;)Z
    .locals 1

    iget-object v0, p0, Ld2/e;->r:Ld2/c$a;

    invoke-interface {v0, p1}, Ld2/c$a;->a(Landroidx/media3/common/r;)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private R(I)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Ld2/e;->F:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld2/e;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/r;

    iget v1, v1, Landroidx/media3/common/r;->L:I

    div-int/2addr v0, v1

    iget-object v1, p0, Ld2/e;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->M:I

    div-int/2addr v1, v2

    iget-object v2, p0, Ld2/e;->B:Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->L:I

    rem-int v3, p1, v2

    mul-int/2addr v3, v0

    div-int/2addr p1, v2

    mul-int/2addr p1, v1

    iget-object v2, p0, Ld2/e;->F:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private S(JJ)Z
    .locals 13

    move-object v8, p0

    iget-object v0, v8, Ld2/e;->F:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    if-nez v0, :cond_0

    return v9

    :cond_0
    iget v0, v8, Ld2/e;->A:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return v9

    :cond_1
    iget-object v0, v8, Ld2/e;->F:Landroid/graphics/Bitmap;

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-nez v0, :cond_6

    iget-object v0, v8, Ld2/e;->C:Ld2/c;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Ld2/e;->C:Ld2/c;

    invoke-interface {v0}, Ld2/c;->dequeueOutputBuffer()Ld2/d;

    move-result-object v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/d;

    invoke-virtual {v1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v8, Ld2/e;->z:I

    if-ne v1, v10, :cond_3

    invoke-direct {p0}, Ld2/e;->c0()V

    iget-object v0, v8, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ld2/e;->Y()Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/d;

    invoke-virtual {v0}, Landroidx/media3/decoder/h;->release()V

    iget-object v0, v8, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v11, v8, Ld2/e;->v:Z

    :cond_4
    :goto_0
    return v9

    :cond_5
    iget-object v1, v0, Ld2/d;->a:Landroid/graphics/Bitmap;

    const-string v2, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v1, v2}, Landroidx/media3/common/util/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Ld2/d;->a:Landroid/graphics/Bitmap;

    iput-object v1, v8, Ld2/e;->F:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/d;

    invoke-virtual {v0}, Landroidx/media3/decoder/h;->release()V

    :cond_6
    iget-boolean v0, v8, Ld2/e;->G:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Ld2/e;->F:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    if-eqz v0, :cond_e

    iget-object v0, v8, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Ld2/e;->B:Landroidx/media3/common/r;

    iget v1, v0, Landroidx/media3/common/r;->L:I

    if-ne v1, v11, :cond_7

    iget v2, v0, Landroidx/media3/common/r;->M:I

    if-eq v2, v11, :cond_8

    :cond_7
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget v0, v0, Landroidx/media3/common/r;->M:I

    if-eq v0, v2, :cond_8

    move v12, v11

    goto :goto_1

    :cond_8
    move v12, v9

    :goto_1
    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    invoke-virtual {v0}, Ld2/e$b;->d()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    if-eqz v12, :cond_9

    invoke-virtual {v0}, Ld2/e$b;->c()I

    move-result v1

    invoke-direct {p0, v1}, Ld2/e;->R(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_9
    iget-object v1, v8, Ld2/e;->F:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v0, v1}, Ld2/e$b;->e(Landroid/graphics/Bitmap;)V

    :cond_a
    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    invoke-virtual {v0}, Ld2/e$b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    invoke-virtual {v0}, Ld2/e$b;->a()J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v7}, Ld2/e;->b0(JJLandroid/graphics/Bitmap;J)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_b
    iget-object v0, v8, Ld2/e;->H:Ld2/e$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/e$b;

    invoke-virtual {v0}, Ld2/e$b;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ld2/e;->a0(J)V

    iput v10, v8, Ld2/e;->A:I

    const/4 v0, 0x0

    if-eqz v12, :cond_c

    iget-object v1, v8, Ld2/e;->H:Ld2/e$b;

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/e$b;

    invoke-virtual {v1}, Ld2/e$b;->c()I

    move-result v1

    iget-object v2, v8, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->M:I

    iget-object v3, v8, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v3}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/r;

    iget v3, v3, Landroidx/media3/common/r;->L:I

    mul-int/2addr v2, v3

    sub-int/2addr v2, v11

    if-ne v1, v2, :cond_d

    :cond_c
    iput-object v0, v8, Ld2/e;->F:Landroid/graphics/Bitmap;

    :cond_d
    iget-object v1, v8, Ld2/e;->I:Ld2/e$b;

    iput-object v1, v8, Ld2/e;->H:Ld2/e$b;

    iput-object v0, v8, Ld2/e;->I:Ld2/e$b;

    return v11

    :cond_e
    return v9
.end method

.method private T(J)Z
    .locals 7

    iget-boolean v0, p0, Ld2/e;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/e;->H:Ld2/e$b;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object v0

    iget-object v2, p0, Ld2/e;->C:Ld2/c;

    if-eqz v2, :cond_d

    iget v3, p0, Ld2/e;->z:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    iget-boolean v3, p0, Ld2/e;->u:Z

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v3, :cond_2

    invoke-interface {v2}, Landroidx/media3/decoder/g;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v2, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Ld2/e;->z:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroidx/media3/decoder/a;->setFlags(I)V

    iget-object p1, p0, Ld2/e;->C:Ld2/c;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/c;

    iget-object p2, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {p1, p2}, Ld2/c;->b(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iput-object v5, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    iput v4, p0, Ld2/e;->z:I

    return v1

    :cond_3
    iget-object v2, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    const/4 v6, 0x1

    if-eq v2, v4, :cond_c

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 p1, -0x3

    if-ne v2, p1, :cond_4

    return v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    iget-object v0, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v0, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v6

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Ld2/e;->C:Ld2/c;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/c;

    iget-object v3, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v2, v3}, Ld2/c;->b(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iput v1, p0, Ld2/e;->J:I

    :cond_9
    iget-object v2, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, p1, p2, v2}, Ld2/e;->X(JLandroidx/media3/decoder/DecoderInputBuffer;)V

    iget-object p1, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v6, p0, Ld2/e;->u:Z

    iput-object v5, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    return v1

    :cond_a
    iget-wide p1, p0, Ld2/e;->y:J

    iget-object v1, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v1, v1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ld2/e;->y:J

    if-eqz v0, :cond_b

    iput-object v5, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    goto :goto_1

    :cond_b
    iget-object p1, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :goto_1
    iget-boolean p1, p0, Ld2/e;->G:Z

    xor-int/2addr p1, v6

    return p1

    :cond_c
    iget-object p1, v0, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    iput-object p1, p0, Ld2/e;->B:Landroidx/media3/common/r;

    iput-boolean v6, p0, Ld2/e;->K:Z

    iput v3, p0, Ld2/e;->z:I

    return v6

    :cond_d
    :goto_2
    return v1
.end method

.method private static U(Landroidx/media3/exoplayer/image/ImageOutput;)Landroidx/media3/exoplayer/image/ImageOutput;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    :cond_0
    return-object p0
.end method

.method private V(Ld2/e$b;)Z
    .locals 3

    iget-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->L:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->M:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Ld2/e$b;->c()I

    move-result p1

    iget-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->M:I

    iget-object v2, p0, Ld2/e;->B:Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->L:I

    mul-int/2addr v0, v2

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private W(I)V
    .locals 1

    iget v0, p0, Ld2/e;->A:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ld2/e;->A:I

    return-void
.end method

.method private X(JLandroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 8

    invoke-virtual {p3}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ld2/e;->G:Z

    return-void

    :cond_0
    new-instance v0, Ld2/e$b;

    iget v2, p0, Ld2/e;->J:I

    iget-wide v3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-direct {v0, v2, v3, v4}, Ld2/e$b;-><init>(IJ)V

    iput-object v0, p0, Ld2/e;->I:Ld2/e$b;

    iget p3, p0, Ld2/e;->J:I

    add-int/2addr p3, v1

    iput p3, p0, Ld2/e;->J:I

    iget-boolean p3, p0, Ld2/e;->G:Z

    if-nez p3, :cond_5

    invoke-virtual {v0}, Ld2/e$b;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    sub-long v6, v2, v4

    cmp-long p3, v6, p1

    const/4 v0, 0x0

    if-gtz p3, :cond_1

    add-long/2addr v4, v2

    cmp-long p3, p1, v4

    if-gtz p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iget-object v4, p0, Ld2/e;->H:Ld2/e$b;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ld2/e$b;->a()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_2

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget-object p2, p0, Ld2/e;->I:Ld2/e$b;

    invoke-static {p2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld2/e$b;

    invoke-direct {p0, p2}, Ld2/e;->V(Ld2/e$b;)Z

    move-result p2

    if-nez p3, :cond_4

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    iput-boolean v1, p0, Ld2/e;->G:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Ld2/e;->I:Ld2/e$b;

    iput-object p1, p0, Ld2/e;->H:Ld2/e$b;

    const/4 p1, 0x0

    iput-object p1, p0, Ld2/e;->I:Ld2/e$b;

    return-void
.end method

.method private Y()Z
    .locals 3

    invoke-virtual {p0}, Ld2/e;->Z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Ld2/e;->K:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    invoke-direct {p0, v0}, Ld2/e;->Q(Landroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld2/e;->C:Ld2/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/decoder/g;->release()V

    :cond_2
    iget-object v0, p0, Ld2/e;->r:Ld2/c$a;

    invoke-interface {v0}, Ld2/c$a;->b()Ld2/c;

    move-result-object v0

    iput-object v0, p0, Ld2/e;->C:Ld2/c;

    iput-boolean v1, p0, Ld2/e;->K:Z

    return v2

    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld2/e;->B:Landroidx/media3/common/r;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private a0(J)V
    .locals 2

    iput-wide p1, p0, Ld2/e;->x:J

    :goto_0
    iget-object v0, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/e$a;

    iget-wide v0, v0, Ld2/e$a;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/e$a;

    iput-object v0, p0, Ld2/e;->w:Ld2/e$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c0()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput v1, p0, Ld2/e;->z:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Ld2/e;->y:J

    iget-object v1, p0, Ld2/e;->C:Ld2/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/decoder/g;->release()V

    iput-object v0, p0, Ld2/e;->C:Ld2/c;

    :cond_0
    return-void
.end method

.method private d0(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 0

    invoke-static {p1}, Ld2/e;->U(Landroidx/media3/exoplayer/image/ImageOutput;)Landroidx/media3/exoplayer/image/ImageOutput;

    move-result-object p1

    iput-object p1, p0, Ld2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method

.method private e0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p0, Ld2/e;->A:I

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    return v3

    :cond_3
    return v0
.end method


# virtual methods
.method protected C()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    sget-object v0, Ld2/e$a;->c:Ld2/e$a;

    iput-object v0, p0, Ld2/e;->w:Ld2/e$a;

    iget-object v0, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Ld2/e;->c0()V

    iget-object v0, p0, Ld2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    return-void
.end method

.method protected D(ZZ)V
    .locals 0

    iput p2, p0, Ld2/e;->A:I

    return-void
.end method

.method protected F(JZ)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld2/e;->W(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld2/e;->v:Z

    iput-boolean p1, p0, Ld2/e;->u:Z

    const/4 p2, 0x0

    iput-object p2, p0, Ld2/e;->F:Landroid/graphics/Bitmap;

    iput-object p2, p0, Ld2/e;->H:Ld2/e$b;

    iput-object p2, p0, Ld2/e;->I:Ld2/e$b;

    iput-boolean p1, p0, Ld2/e;->G:Z

    iput-object p2, p0, Ld2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object p1, p0, Ld2/e;->C:Ld2/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/decoder/g;->flush()V

    :cond_0
    iget-object p1, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method protected G()V
    .locals 0

    invoke-direct {p0}, Ld2/e;->c0()V

    return-void
.end method

.method protected I()V
    .locals 1

    invoke-direct {p0}, Ld2/e;->c0()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld2/e;->W(I)V

    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 4

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/i;->L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V

    iget-object p1, p0, Ld2/e;->w:Ld2/e$a;

    iget-wide p1, p1, Ld2/e$a;->b:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Ld2/e;->y:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iget-wide v2, p0, Ld2/e;->x:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_0

    cmp-long p1, v2, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld2/e;->t:Ljava/util/ArrayDeque;

    new-instance p2, Ld2/e$a;

    iget-wide v0, p0, Ld2/e;->y:J

    invoke-direct {p2, v0, v1, p4, p5}, Ld2/e$a;-><init>(JJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ld2/e$a;

    invoke-direct {p1, v0, v1, p4, p5}, Ld2/e$a;-><init>(JJ)V

    iput-object p1, p0, Ld2/e;->w:Ld2/e$a;

    :goto_1
    return-void
.end method

.method protected Z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroidx/media3/common/r;)I
    .locals 1

    iget-object v0, p0, Ld2/e;->r:Ld2/c$a;

    invoke-interface {v0, p1}, Ld2/c$a;->a(Landroidx/media3/common/r;)I

    move-result p1

    return p1
.end method

.method protected b0(JJLandroid/graphics/Bitmap;J)Z
    .locals 0

    sub-long p1, p6, p1

    invoke-direct {p0}, Ld2/e;->e0()Z

    move-result p3

    if-nez p3, :cond_1

    const-wide/16 p3, 0x7530

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Ld2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, Ld2/e;->w:Ld2/e$a;

    iget-wide p2, p2, Ld2/e$a;->b:J

    sub-long/2addr p6, p2

    invoke-interface {p1, p6, p7, p5}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/i;->handleMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_1

    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Ld2/e;->d0(Landroidx/media3/exoplayer/image/ImageOutput;)V

    :goto_1
    return-void
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Ld2/e;->v:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Ld2/e;->A:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld2/e;->G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public render(JJ)V
    .locals 4

    iget-boolean v0, p0, Ld2/e;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object v0

    iget-object v1, p0, Ld2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v1, p0, Ld2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iput-object v0, p0, Ld2/e;->B:Landroidx/media3/common/r;

    iput-boolean v3, p0, Ld2/e;->K:Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Ld2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean v3, p0, Ld2/e;->u:Z

    iput-boolean v3, p0, Ld2/e;->v:Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Ld2/e;->C:Ld2/c;

    if-nez v0, :cond_4

    invoke-direct {p0}, Ld2/e;->Y()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    :try_start_0
    const-string v0, "drainAndFeedDecoder"

    invoke-static {v0}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Ld2/e;->S(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    invoke-direct {p0, p1, p2}, Ld2/e;->T(J)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    const/16 p3, 0xfa3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method
