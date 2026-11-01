.class public abstract Lcom/google/android/exoplayer2/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/o2;


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/k3$d;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/k3$d;

    return-void
.end method

.method private H()I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private L(J)V
    .locals 4

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getDuration()J

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/g;->seekTo(J)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/exoplayer2/v1;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/g;->N(Ljava/util/List;)V

    return-void
.end method

.method public final E()J
    .locals 3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3$d;->g()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final F()I
    .locals 4

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->H()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getShuffleModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/k3;->i(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final G()I
    .locals 4

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->H()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getShuffleModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/k3;->p(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final I()V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/g;->J(I)V

    return-void
.end method

.method public final J(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/o2;->seekTo(IJ)V

    return-void
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->F()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/g;->J(I)V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->G()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/g;->J(I)V

    :cond_0
    return-void
.end method

.method public final N(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/o2;->e(Ljava/util/List;Z)V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->q()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->s()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->M()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentPosition()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->o()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->M()V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->F()I

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

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->n()Lcom/google/android/exoplayer2/o2$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o2$b;->c(I)Z

    move-result p1

    return p1
.end method

.method public final i()Z
    .locals 3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/k3$d;->i:Z

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

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->K()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->I()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/o2;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/o2;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final q()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->G()I

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

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/k3$d;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final seekTo(J)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/o2;->seekTo(IJ)V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->r()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->L(J)V

    return-void
.end method

.method public final w()V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->y()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->L(J)V

    return-void
.end method

.method public final z()Z
    .locals 3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3$d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
