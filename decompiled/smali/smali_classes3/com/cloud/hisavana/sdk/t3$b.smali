.class public final Lcom/cloud/hisavana/sdk/t3$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/o2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/t3;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/t3;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t3;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/o2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->c(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2$b;)V

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

.method public onIsPlayingChanged(Z)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/t3;->j(Lcom/cloud/hisavana/sdk/t3;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsPlayingChanged isPlaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->k(Lcom/cloud/hisavana/sdk/t3;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/t3;->g(Lcom/cloud/hisavana/sdk/t3;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/q4;->b()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->onIsPlayingChanged(Z)V

    :cond_1
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

.method public onPlaybackStateChanged(I)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->j(Lcom/cloud/hisavana/sdk/t3;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_ENDED"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t3;->i(Lcom/cloud/hisavana/sdk/t3;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getDuration()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getDuration()J

    move-result-wide v4

    const/16 v6, 0x64

    invoke-interface/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/q4;->c(JJI)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/q4;->onComplete()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->j(Lcom/cloud/hisavana/sdk/t3;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_READY"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/q4;->e()V

    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t3;->l(Lcom/cloud/hisavana/sdk/t3;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->j(Lcom/cloud/hisavana/sdk/t3;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_BUFFERING"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->s(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/t3;->j(Lcom/cloud/hisavana/sdk/t3;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/t3;->e(Lcom/cloud/hisavana/sdk/t3;Lcom/google/android/exoplayer2/PlaybackException;)Lcom/cloud/hisavana/sdk/p;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
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

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 1

    const-string v0, "videoSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t3;->l(Lcom/cloud/hisavana/sdk/t3;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t3$b;->a:Lcom/cloud/hisavana/sdk/t3;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t3;->d(Lcom/cloud/hisavana/sdk/t3;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->onVolumeChanged(F)V

    :cond_0
    return-void
.end method
