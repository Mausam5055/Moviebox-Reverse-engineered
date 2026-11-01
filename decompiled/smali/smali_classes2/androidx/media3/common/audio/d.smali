.class public final Landroidx/media3/common/audio/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field private final b:Z

.field private c:I

.field private d:F

.field private e:F

.field private f:Landroidx/media3/common/audio/AudioProcessor$a;

.field private g:Landroidx/media3/common/audio/AudioProcessor$a;

.field private h:Landroidx/media3/common/audio/AudioProcessor$a;

.field private i:Landroidx/media3/common/audio/AudioProcessor$a;

.field private j:Z

.field private k:Landroidx/media3/common/audio/c;

.field private l:Ljava/nio/ByteBuffer;

.field private m:Ljava/nio/ShortBuffer;

.field private n:Ljava/nio/ByteBuffer;

.field private o:J

.field private p:J

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/d;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/d;->d:F

    iput v0, p0, Landroidx/media3/common/audio/d;->e:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/d;->m:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->n:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/audio/d;->c:I

    iput-boolean p1, p0, Landroidx/media3/common/audio/d;->b:Z

    return-void
.end method

.method private b()Z
    .locals 3

    iget v0, p0, Landroidx/media3/common/audio/d;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/audio/d;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/d;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    iget-object v1, p0, Landroidx/media3/common/audio/d;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;
    .locals 3

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/d;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    :cond_0
    iput-object p1, p0, Landroidx/media3/common/audio/d;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$a;

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    invoke-direct {v2, v0, p1, v1}, Landroidx/media3/common/audio/AudioProcessor$a;-><init>(III)V

    iput-object v2, p0, Landroidx/media3/common/audio/d;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/common/audio/d;->j:Z

    return-object v2

    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$a;)V

    throw v0
.end method

.method public c(J)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Landroidx/media3/common/audio/d;->p:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, v0, Landroidx/media3/common/audio/d;->o:J

    iget-object v3, v0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/audio/c;

    invoke-virtual {v3}, Landroidx/media3/common/audio/c;->l()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    iget-object v1, v0, Landroidx/media3/common/audio/d;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    iget-object v2, v0, Landroidx/media3/common/audio/d;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    if-ne v1, v2, :cond_0

    iget-wide v9, v0, Landroidx/media3/common/audio/d;->p:J

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    mul-long v11, v7, v3

    iget-wide v3, v0, Landroidx/media3/common/audio/d;->p:J

    int-to-long v1, v2

    mul-long v13, v3, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_1
    iget v1, v0, Landroidx/media3/common/audio/d;->d:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public d(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget v0, p0, Landroidx/media3/common/audio/d;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Landroidx/media3/common/audio/d;->e:F

    iput-boolean v1, p0, Landroidx/media3/common/audio/d;->j:Z

    :cond_1
    return-void
.end method

.method public e(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget v0, p0, Landroidx/media3/common/audio/d;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Landroidx/media3/common/audio/d;->d:F

    iput-boolean v1, p0, Landroidx/media3/common/audio/d;->j:Z

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/common/audio/d;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/audio/d;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iget-object v1, p0, Landroidx/media3/common/audio/d;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v1, p0, Landroidx/media3/common/audio/d;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    iget-boolean v2, p0, Landroidx/media3/common/audio/d;->j:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/media3/common/audio/c;

    iget v4, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    iget v5, v0, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    iget v6, p0, Landroidx/media3/common/audio/d;->d:F

    iget v7, p0, Landroidx/media3/common/audio/d;->e:F

    iget v8, v1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroidx/media3/common/audio/c;-><init>(IIFFI)V

    iput-object v2, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/audio/c;->i()V

    :cond_1
    :goto_0
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->n:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/audio/d;->o:J

    iput-wide v0, p0, Landroidx/media3/common/audio/d;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/d;->q:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/audio/c;->k()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/d;->m:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Landroidx/media3/common/audio/d;->m:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/audio/d;->m:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Landroidx/media3/common/audio/c;->j(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Landroidx/media3/common/audio/d;->p:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/common/audio/d;->p:J

    iget-object v0, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->n:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/audio/d;->n:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/d;->n:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/audio/d;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/audio/d;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/common/audio/d;->b()Z

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

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/audio/d;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/audio/c;->k()I

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

    iget-object v0, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/audio/c;->s()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/d;->q:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/audio/c;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Landroidx/media3/common/audio/d;->o:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/common/audio/d;->o:J

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/c;->t(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/d;->d:F

    iput v0, p0, Landroidx/media3/common/audio/d;->e:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->f:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->g:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->h:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->i:Landroidx/media3/common/audio/AudioProcessor$a;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/d;->m:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/d;->n:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/audio/d;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/d;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/audio/d;->k:Landroidx/media3/common/audio/c;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/common/audio/d;->o:J

    iput-wide v1, p0, Landroidx/media3/common/audio/d;->p:J

    iput-boolean v0, p0, Landroidx/media3/common/audio/d;->q:Z

    return-void
.end method
