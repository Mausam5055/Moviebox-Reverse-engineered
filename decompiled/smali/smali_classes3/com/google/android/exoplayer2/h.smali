.class public abstract Lcom/google/android/exoplayer2/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/x2;
.implements Lcom/google/android/exoplayer2/z2;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/p1;

.field private c:Lcom/google/android/exoplayer2/a3;

.field private d:I

.field private e:Le9/u1;

.field private f:I

.field private g:Lt9/s;

.field private h:[Lcom/google/android/exoplayer2/o1;

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/h;->a:I

    new-instance p1, Lcom/google/android/exoplayer2/p1;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/p1;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/p1;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    return-void
.end method

.method private x(JZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->j:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/h;->r(JZ)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/exoplayer2/a3;[Lcom/google/android/exoplayer2/o1;Lt9/s;JZZJJ)V
    .locals 9

    move-object v7, p0

    move v8, p6

    iget v0, v7, Lcom/google/android/exoplayer2/h;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/a3;

    iput v1, v7, Lcom/google/android/exoplayer2/h;->f:I

    move/from16 v0, p7

    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplayer2/h;->q(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/h;->h([Lcom/google/android/exoplayer2/o1;Lt9/s;JJ)V

    move-wide v0, p4

    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/h;->x(JZ)V

    return-void
.end method

.method public synthetic d(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w2;->a(Lcom/google/android/exoplayer2/x2;FF)V

    return-void
.end method

.method public final disable()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/p1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1;->a()V

    iput v1, p0, Lcom/google/android/exoplayer2/h;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    iput-object v0, p0, Lcom/google/android/exoplayer2/h;->h:[Lcom/google/android/exoplayer2/o1;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/h;->l:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->p()V

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    return-wide v0
.end method

.method protected final f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/h;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method public final g(ILe9/u1;)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/h;->d:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/h;->e:Le9/u1;

    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/z2;
    .locals 0

    return-object p0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/u;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    return v0
.end method

.method public final getStream()Lt9/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/h;->a:I

    return v0
.end method

.method public final h([Lcom/google/android/exoplayer2/o1;Lt9/s;JJ)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/exoplayer2/h;->k:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/h;->h:[Lcom/google/android/exoplayer2/o1;

    iput-wide p5, p0, Lcom/google/android/exoplayer2/h;->i:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/h;->v([Lcom/google/android/exoplayer2/o1;JJ)V

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 9

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/z2;->a(Lcom/google/android/exoplayer2/o1;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/y2;->f(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    :goto_0
    move v6, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    throw p1

    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/x2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->l()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/o1;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    return v0
.end method

.method protected final j()Lcom/google/android/exoplayer2/a3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/a3;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a3;

    return-object v0
.end method

.method protected final k()Lcom/google/android/exoplayer2/p1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/p1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1;->a()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/p1;

    return-object v0
.end method

.method protected final l()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/h;->d:I

    return v0
.end method

.method protected final m()Le9/u1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->e:Le9/u1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le9/u1;

    return-object v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt9/s;

    invoke-interface {v0}, Lt9/s;->maybeThrowError()V

    return-void
.end method

.method protected final n()[Lcom/google/android/exoplayer2/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->h:[Lcom/google/android/exoplayer2/o1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/o1;

    return-object v0
.end method

.method protected final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt9/s;

    invoke-interface {v0}, Lt9/s;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract p()V
.end method

.method protected q(ZZ)V
    .locals 0

    return-void
.end method

.method protected abstract r(JZ)V
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/p1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1;->a()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->s()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/h;->x(JZ)V

    return-void
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->t()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput v2, p0, Lcom/google/android/exoplayer2/h;->f:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->u()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected t()V
    .locals 0

    return-void
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected abstract v([Lcom/google/android/exoplayer2/o1;JJ)V
.end method

.method protected final w(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt9/s;

    invoke-interface {v0, p1, p2, p3}, Lt9/s;->c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/h;->l:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/h;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/o1;

    iget-wide v0, p2, Lcom/google/android/exoplayer2/o1;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/o1;->p:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/h;->i:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/o1$b;->i0(J)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    :cond_3
    :goto_1
    return p3
.end method

.method protected y(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lt9/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt9/s;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/h;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lt9/s;->skipData(J)I

    move-result p1

    return p1
.end method
