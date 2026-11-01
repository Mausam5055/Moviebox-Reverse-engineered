.class final Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/o2$d;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/k3$b;

.field final synthetic b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/exoplayer2/k3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/k3$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/k3$b;

    return-void
.end method


# virtual methods
.method public l(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/o2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->c(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2$b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    return-void
.end method

.method public synthetic onCues(Lba/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->d(Lcom/google/android/exoplayer2/o2$d;Lba/f;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/r;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->f(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/r;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->g(Lcom/google/android/exoplayer2/o2$d;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/o2;Lcom/google/android/exoplayer2/o2$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->h(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2;Lcom/google/android/exoplayer2/o2$c;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->i(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->j(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->k(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/v1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->m(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/v1;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->n(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->o(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->q(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->s(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->t(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->u(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->v(Lcom/google/android/exoplayer2/o2$d;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->x(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->A(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q2;->D(Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->E(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->F(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->G(Lcom/google/android/exoplayer2/o2$d;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/k3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->H(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/k3;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->I(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/p3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->J(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/p3;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->L(Lcom/google/android/exoplayer2/o2$d;F)V

    return-void
.end method
