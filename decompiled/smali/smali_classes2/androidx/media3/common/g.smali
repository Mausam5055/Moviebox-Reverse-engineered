.class public abstract Landroidx/media3/common/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/a0;


# instance fields
.field protected final a:Landroidx/media3/common/e0$c;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/e0$c;

    invoke-direct {v0}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    return-void
.end method

.method private b0()I
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/a0;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private c0(I)V
    .locals 6

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/g;->e0(IJIZ)V

    return-void
.end method

.method private d0(I)V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/g;->e0(IJIZ)V

    return-void
.end method

.method private f0(JI)V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/g;->e0(IJIZ)V

    return-void
.end method

.method private g0(II)V
    .locals 6

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/g;->e0(IJIZ)V

    return-void
.end method

.method private h0(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/g;->Z()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/common/g;->c0(I)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/common/g;->d0(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/g;->g0(II)V

    :goto_0
    return-void
.end method

.method private i0(JI)V
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-interface {p0}, Landroidx/media3/common/a0;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/g;->f0(JI)V

    return-void
.end method

.method private j0(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/g;->a0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/common/g;->c0(I)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/common/g;->d0(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/g;->g0(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-interface {p0, v0, v1}, Landroidx/media3/common/a0;->G(II)V

    return-void
.end method

.method public final E(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1, v0}, Landroidx/media3/common/a0;->G(II)V

    return-void
.end method

.method public final F()I
    .locals 1

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->p()I

    move-result v0

    return v0
.end method

.method public final H(Landroidx/media3/common/t;)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/g;->k0(Ljava/util/List;)V

    return-void
.end method

.method public final J(Landroidx/media3/common/t;)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/g;->Y(Ljava/util/List;)V

    return-void
.end method

.method public final N(ILandroidx/media3/common/t;)V
    .locals 0

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/a0;->S(ILjava/util/List;)V

    return-void
.end method

.method public final O(I)Landroidx/media3/common/t;
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    return-object p1
.end method

.method public final P(ILandroidx/media3/common/t;)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-interface {p0, p1, v0, p2}, Landroidx/media3/common/a0;->C(IILjava/util/List;)V

    return-void
.end method

.method public final Q()J
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final Y(Ljava/util/List;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/a0;->S(ILjava/util/List;)V

    return-void
.end method

.method public final Z()I
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/g;->b0()I

    move-result v2

    invoke-interface {p0}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/e0;->e(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final a(F)V
    .locals 1

    invoke-interface {p0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/z;->b(F)Landroidx/media3/common/z;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/a0;->b(Landroidx/media3/common/z;)V

    return-void
.end method

.method public final a0()I
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/g;->b0()I

    move-result v2

    invoke-interface {p0}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/e0;->l(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract e0(IJIZ)V
.end method

.method public final f()V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    invoke-interface {p0}, Landroidx/media3/common/a0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/g;->q()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/g;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/g;->s()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroidx/media3/common/g;->j0(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/common/g;->c0(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {p0}, Landroidx/media3/common/a0;->o()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    invoke-direct {p0, v1}, Landroidx/media3/common/g;->j0(I)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v1}, Landroidx/media3/common/g;->f0(JI)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Landroidx/media3/common/g;->c0(I)V

    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/g;->Z()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(I)Z
    .locals 1

    invoke-interface {p0}, Landroidx/media3/common/a0;->n()Landroidx/media3/common/a0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/a0$b;->b(I)Z

    move-result p1

    return p1
.end method

.method public final i()Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/e0$c;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/a0;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k0(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroidx/media3/common/a0;->e(Ljava/util/List;Z)V

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    const/16 v1, 0x9

    if-nez v0, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/a0;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroidx/media3/common/g;->h0(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/g;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/g;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/g;->g0(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/common/g;->c0(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Landroidx/media3/common/g;->c0(I)V

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/media3/common/a0;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/a0;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final q()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/g;->a0()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/e0$c;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final seekTo(IJ)V
    .locals 6

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/g;->e0(IJIZ)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/g;->f0(JI)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/g;->g0(II)V

    return-void
.end method

.method public final v()V
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/a0;->r()J

    move-result-wide v0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/g;->i0(JI)V

    return-void
.end method

.method public final w()V
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/a0;->y()J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/g;->i0(JI)V

    return-void
.end method

.method public final z()Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/a0;->t()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
