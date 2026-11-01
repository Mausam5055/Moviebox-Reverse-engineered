.class final Lcom/google/android/exoplayer2/ui/PlayerControlView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/o2$d;
.implements Lcom/google/android/exoplayer2/ui/n0$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public l(Lcom/google/android/exoplayer2/ui/n0;J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/o2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->c(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2$b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/o2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->m()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->f()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->v()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->w()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o2;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o2;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getRepeatMode()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/f0;->a(II)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/o2;->setRepeatMode(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_8

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getShuffleModeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/o2;->setShuffleModeEnabled(Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic onCues(Lba/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->d(Lcom/google/android/exoplayer2/o2$d;Lba/f;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->e(Lcom/google/android/exoplayer2/o2$d;Ljava/util/List;)V

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

.method public onEvents(Lcom/google/android/exoplayer2/o2;Lcom/google/android/exoplayer2/o2$c;)V
    .locals 4

    const/4 p1, 0x4

    const/4 v0, 0x5

    filled-new-array {p1, v0}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/o2$c;->b([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_0
    const/4 v1, 0x7

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o2$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o2$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/o2$c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_3
    const/16 v1, 0xd

    const/16 v2, 0xb

    const/4 v3, 0x0

    filled-new-array {p1, v0, v2, v3, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o2$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_4
    filled-new-array {v2, v3}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o2$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_5
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

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->p(Lcom/google/android/exoplayer2/o2$d;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->q(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->r(Lcom/google/android/exoplayer2/o2$d;I)V

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

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/q2;->y(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q2;->z(Lcom/google/android/exoplayer2/o2$d;)V

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

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->K(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/video/y;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->L(Lcom/google/android/exoplayer2/o2$d;F)V

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/ui/n0;JZ)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/o2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/o2;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o2;J)V

    :cond_0
    return-void
.end method

.method public r(Lcom/google/android/exoplayer2/ui/n0;J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
