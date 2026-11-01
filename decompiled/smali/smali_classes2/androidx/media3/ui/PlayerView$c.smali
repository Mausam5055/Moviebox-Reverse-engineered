.class final Landroidx/media3/ui/PlayerView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/a0$d;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/media3/ui/PlayerControlView$m;
.implements Landroidx/media3/ui/PlayerControlView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/e0$b;

.field private b:Ljava/lang/Object;

.field final synthetic c:Landroidx/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/e0$b;

    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView$c;->a:Landroidx/media3/common/e0$b;

    return-void
.end method


# virtual methods
.method public l(I)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->m(Landroidx/media3/ui/PlayerView;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->o(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$d;

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->b(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Landroidx/media3/common/a0$b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->c(Landroidx/media3/common/a0$d;Landroidx/media3/common/a0$b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->l(Landroidx/media3/ui/PlayerView;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->d(Landroidx/media3/common/a0$d;Ljava/util/List;)V

    return-void
.end method

.method public onCues(Lu1/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->c(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->c(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;

    move-result-object v0

    iget-object p1, p1, Lu1/b;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic onDeviceInfoChanged(Landroidx/media3/common/m;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->f(Landroidx/media3/common/a0$d;Landroidx/media3/common/m;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->g(Landroidx/media3/common/a0$d;IZ)V

    return-void
.end method

.method public synthetic onEvents(Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->h(Landroidx/media3/common/a0$d;Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->i(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->j(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->k(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Landroidx/media3/common/t;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->m(Landroidx/media3/common/a0$d;Landroidx/media3/common/t;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Landroidx/media3/common/v;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->n(Landroidx/media3/common/a0$d;Landroidx/media3/common/v;)V

    return-void
.end method

.method public synthetic onMetadata(Landroidx/media3/common/x;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->o(Landroidx/media3/common/a0$d;Landroidx/media3/common/x;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->g(Landroidx/media3/ui/PlayerView;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->i(Landroidx/media3/ui/PlayerView;)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->q(Landroidx/media3/common/a0$d;Landroidx/media3/common/z;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->g(Landroidx/media3/ui/PlayerView;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->h(Landroidx/media3/ui/PlayerView;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->i(Landroidx/media3/ui/PlayerView;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->s(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->t(Landroidx/media3/common/a0$d;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->u(Landroidx/media3/common/a0$d;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->v(Landroidx/media3/common/a0$d;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->x(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->j(Landroidx/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->k(Landroidx/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->hideController()V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->v(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->v(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->w(Landroidx/media3/ui/PlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->d(Landroidx/media3/ui/PlayerView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->e(Landroidx/media3/ui/PlayerView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->A(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->D(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->E(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 3

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->r(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->s(Landroidx/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->u(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$f;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/ui/PlayerView$f;

    iget-object p2, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p2}, Landroidx/media3/ui/PlayerView;->t(Landroidx/media3/ui/PlayerView;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->r(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    new-instance v2, Landroidx/media3/ui/i0;

    invoke-direct {v2, v1}, Landroidx/media3/ui/i0;-><init>(Landroidx/media3/ui/PlayerView;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/media3/ui/PlayerView$f;->f(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic onTimelineChanged(Landroidx/media3/common/e0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->G(Landroidx/media3/common/a0$d;Landroidx/media3/common/e0;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/h0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->H(Landroidx/media3/common/a0$d;Landroidx/media3/common/h0;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/i0;)V
    .locals 4

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->n(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/a0;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/a0;

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/i0;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentPeriodIndex()I

    move-result p1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView$c;->a:Landroidx/media3/common/e0$b;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Landroidx/media3/ui/PlayerView$c;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v1, v3}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    invoke-interface {p1}, Landroidx/media3/common/a0;->t()I

    move-result p1

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    iput-object v2, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerView;->f(Landroidx/media3/ui/PlayerView;Z)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 1

    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->n(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/a0;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->n(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/a0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->q(Landroidx/media3/ui/PlayerView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->K(Landroidx/media3/common/a0$d;F)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->p(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$e;

    return-void
.end method
