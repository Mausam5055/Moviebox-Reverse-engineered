.class public final Lco/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroidx/media3/common/audio/AudioProcessor$a;

.field private g:Landroidx/media3/common/audio/AudioProcessor$a;

.field private h:Landroidx/media3/common/audio/AudioProcessor$a;

.field private i:Landroidx/media3/common/audio/AudioProcessor$a;

.field private j:Z

.field private k:Lco/k;

.field private l:Ljava/nio/ByteBuffer;

.field private m:Ljava/nio/ShortBuffer;

.field private n:Ljava/nio/ByteBuffer;

.field private o:J

.field private p:J

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lco/l;->c:F

    iput v0, p0, Lco/l;->d:F

    iput v0, p0, Lco/l;->e:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lco/l;->m:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lco/l;->n:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lco/l;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;
    .locals 3

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lco/l;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    :cond_0
    iput-object p1, p0, Lco/l;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$a;

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    invoke-direct {v2, v0, p1, v1}, Landroidx/media3/common/audio/AudioProcessor$a;-><init>(III)V

    iput-object v2, p0, Lco/l;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lco/l;->j:Z

    return-object v2

    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$a;)V

    throw v0
.end method

.method public b(F)F
    .locals 1

    iget v0, p0, Lco/l;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lco/l;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/l;->j:Z

    iget-object v0, p0, Lco/l;->k:Lco/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lco/k;->w(F)V

    :cond_0
    return p1
.end method

.method public flush()V
    .locals 10

    invoke-virtual {p0}, Lco/l;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/l;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iget-object v1, p0, Lco/l;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v1, p0, Lco/l;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    iget-boolean v2, p0, Lco/l;->j:Z

    if-eqz v2, :cond_0

    new-instance v2, Lco/k;

    iget v4, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    iget v5, v0, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    iget v6, p0, Lco/l;->c:F

    iget v7, p0, Lco/l;->d:F

    iget v8, p0, Lco/l;->e:F

    iget v9, v1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lco/k;-><init>(IIFFFI)V

    iput-object v2, p0, Lco/l;->k:Lco/k;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/l;->k:Lco/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lco/k;->i()V

    :cond_1
    :goto_0
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lco/l;->n:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/l;->o:J

    iput-wide v0, p0, Lco/l;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/l;->q:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lco/l;->n:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lco/l;->n:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    iget-object v0, p0, Lco/l;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lco/l;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lco/l;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lco/l;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lco/l;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    iget-object v1, p0, Lco/l;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lco/l;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/l;->k:Lco/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/k;->k()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    iget-object v0, p0, Lco/l;->k:Lco/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/k;->r()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/l;->q:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    iget-object v0, p0, Lco/l;->k:Lco/k;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/k;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lco/l;->o:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lco/l;->o:J

    invoke-virtual {v0, v1}, Lco/k;->s(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {v0}, Lco/k;->k()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v1, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lco/l;->m:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lco/l;->m:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v1, p0, Lco/l;->m:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lco/k;->j(Ljava/nio/ShortBuffer;)V

    iget-wide v0, p0, Lco/l;->p:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/l;->p:J

    iget-object v0, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lco/l;->n:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lco/l;->c:F

    iput v0, p0, Lco/l;->d:F

    iput v0, p0, Lco/l;->e:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Lco/l;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lco/l;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lco/l;->m:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lco/l;->n:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lco/l;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/l;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lco/l;->k:Lco/k;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/l;->o:J

    iput-wide v1, p0, Lco/l;->p:J

    iput-boolean v0, p0, Lco/l;->q:Z

    return-void
.end method
