.class public final Lco/h$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/h;-><init>(Landroid/content/Context;Lco/m;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lco/h;


# direct methods
.method constructor <init>(Lco/h;)V
    .locals 0

    iput-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lco/h$g;->a:I

    return-void
.end method


# virtual methods
.method public onAudioSessionIdChanged(I)V
    .locals 0

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/a0$b;)V
    .locals 1

    const-string v0, "availableCommands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1

    const-string v0, "cues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCues(Lu1/b;)V
    .locals 1

    const-string v0, "cueGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/m;)V
    .locals 1

    const-string v0, "deviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onEvents(Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "events"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 8

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->j(Lco/h;)Lcom/transsion/player/orplayer/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/player/orplayer/c;->f(Z)V

    :cond_0
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    move-wide v3, v1

    :goto_1
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0, v3, v4}, Lco/h;->G(Lco/h;J)V

    const-string v0, "ORExoPlayer"

    if-eqz p1, :cond_6

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1, v3, v4}, Lco/h;->L(Lco/h;J)V

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    if-eqz v3, :cond_4

    invoke-static {v2}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->n(Lco/h;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v2}, Lco/h;->s(Lco/h;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_6
    iget-object v5, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v5, v3, v4}, Lco/h;->h(Lco/h;J)V

    iget-object v3, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v3}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    move-result v3

    if-ne v3, v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v3}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget-object v5, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/player/orplayer/f;

    if-eqz v6, :cond_8

    invoke-static {v5}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    goto :goto_3

    :cond_9
    :goto_4
    iget-object v3, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v3}, Lco/h;->n(Lco/h;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v5}, Lco/h;->s(Lco/h;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v3}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroidx/media3/common/a0;->getDuration()J

    move-result-wide v5

    goto :goto_5

    :cond_a
    move-wide v5, v1

    :goto_5
    iget-object v3, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v3}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v1

    :cond_b
    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x7d0

    cmp-long v1, v1, v5

    if-gez v1, :cond_d

    const-string v1, "onIsPlayingChanged onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->y(Lco/h;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1, v4}, Lco/h;->F(Lco/h;Z)V

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    if-eqz v3, :cond_c

    invoke-static {v2}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_6

    :cond_d
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIsPlayingChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/t;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaItemTransition  reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p2}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onMediaItemTransition(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/v;)V
    .locals 1

    const-string v0, "mediaMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/x;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 1

    const-string v0, "playbackParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged  playbackState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->y(Lco/h;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0, v2}, Lco/h;->F(Lco/h;Z)V

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->A(Lco/h;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1, v2}, Lco/h;->H(Lco/h;Z)V

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->l(Lco/h;)Lko/e0;

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v3, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/player/orplayer/f;

    if-eqz v4, :cond_3

    invoke-static {v3}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->E(Lco/h;)V

    :cond_5
    iget v1, p0, Lco/h$g;->a:I

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->l(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    const-string v0, "onPlaybackStateChanged STATE_BUFFERING"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_8

    invoke-static {v1}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    goto :goto_3

    :cond_9
    :goto_4
    iput p1, p0, Lco/h$g;->a:I

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 9

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/h;->H(Lco/h;Z)V

    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lco/h$g;->b:Lco/h;

    instance-of v3, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_2

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v0, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v3, 0x194

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Lco/h;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2}, Lco/h;->getCurrentPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    cmp-long v0, v3, v7

    if-lez v0, :cond_2

    long-to-float v0, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v0, v5

    long-to-float v3, v3

    div-float/2addr v0, v3

    const v3, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-static {v2}, Lco/h;->y(Lco/h;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2, v1}, Lco/h;->F(Lco/h;Z)V

    invoke-static {v2}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v2, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v2}, Lco/h;->w(Lco/h;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exo onPlayerError\uff0cMimeType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cause:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ORExoPlayer"

    invoke-virtual {v0, v5, v4, v1}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v4}, Lco/h;->k(Lco/h;)Lcom/transsion/player/exo/ORExoDecoderType;

    move-result-object v4

    sget-object v6, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v4}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lao/e;->m()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-nez v4, :cond_4

    iget-object v4, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v4}, Lco/h;->w(Lco/h;)Ljava/lang/String;

    move-result-object v4

    iget v6, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exo \u786c\u89e3\u5931\u8d25\uff0c\u5207\u6362\u5230\u8f6f\u89e3\uff0cMimeType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1, v1}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p1}, Lco/h;->g(Lco/h;)Lao/e;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-virtual {v0, p1}, Lco/h;->setDataSource(Lao/e;)V

    invoke-virtual {v0}, Lco/h;->prepare()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lcom/transsion/player/orplayer/PlayError;

    iget v1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/player/orplayer/PlayError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/player/orplayer/PlayError;->setExoCause(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p1}, Lco/h;->l(Lco/h;)Lko/e0;

    iget-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->r(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 3

    const-string v0, "oldPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newPosition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, Landroidx/media3/common/a0$e;->c:I

    iget-wide v0, p2, Landroidx/media3/common/a0$e;->g:J

    iget-object p2, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p2, v0, v1}, Lco/h;->G(Lco/h;J)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionDiscontinuity: currentWindowIndex="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentPositionMs="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p2, v0, v1}, Lco/h;->h(Lco/h;J)V

    iget-object p2, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p2}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroidx/media3/common/a0;->isPlaying()Z

    move-result p2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p1, v0, v1}, Lco/h;->L(Lco/h;J)V

    :cond_1
    iget-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/player/orplayer/f;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lco/h$g;->b:Lco/h;

    invoke-static {p1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object p2, p0, Lco/h$g;->b:Lco/h;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/player/orplayer/f;

    if-eqz p3, :cond_4

    invoke-static {p2}, Lco/h;->p(Lco/h;)Lao/e;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->B(Lco/h;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lco/h;->I(Lco/h;Z)V

    const-string v0, "ORExoPlayer"

    const-string v1, "onRenderedFirstFrame:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/e0;I)V
    .locals 0

    const-string p2, "timeline"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/h0;)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/i0;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "tracks"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lco/h$g;->b:Lco/h;

    invoke-static {v1}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v3, v0, Lco/h$g;->b:Lco/h;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/player/orplayer/f;

    if-eqz v4, :cond_1

    invoke-static/range {p1 .. p1}, Lmo/a;->c(Landroidx/media3/common/i0;)Lmo/c;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/transsion/player/orplayer/f;->onTracksChange(Lmo/c;)V

    :cond_1
    invoke-static/range {p1 .. p1}, Lmo/a;->c(Landroidx/media3/common/i0;)Lmo/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeTrackSelection \u6240\u6709\u7684\u5206\u8fa8\u7387\u4e3a\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmo/c;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmo/d;

    invoke-virtual {v11}, Lmo/d;->e()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    invoke-virtual {v11}, Lmo/d;->b()[Lmo/b;

    move-result-object v7

    array-length v13, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v13, :cond_6

    aget-object v16, v7, v14

    add-int/lit8 v17, v15, 0x1

    invoke-static {v3}, Lco/h;->C(Lco/h;)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {v16 .. v16}, Lmo/b;->c()I

    move-result v6

    invoke-static {v3}, Lco/h;->x(Lco/h;)I

    move-result v12

    if-ge v6, v12, :cond_5

    invoke-virtual/range {v16 .. v16}, Lmo/b;->c()I

    move-result v6

    if-le v6, v10, :cond_3

    invoke-virtual/range {v16 .. v16}, Lmo/b;->c()I

    move-result v6

    :goto_3
    move v10, v6

    move v8, v15

    :cond_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lmo/b;->c()I

    move-result v6

    invoke-static {v3}, Lco/h;->x(Lco/h;)I

    move-result v9

    if-lt v6, v9, :cond_3

    invoke-virtual/range {v16 .. v16}, Lmo/b;->c()I

    move-result v6

    if-le v6, v10, :cond_3

    invoke-virtual/range {v16 .. v16}, Lmo/b;->c()I

    move-result v6

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v17

    goto :goto_2

    :cond_6
    move-object v7, v11

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lco/h;->C(Lco/h;)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v9, :cond_8

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-interface {v4, v5, v10, v8, v7}, Lcom/transsion/player/orplayer/f;->canNonSubscriberPlay(ZIILmo/d;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5, v5, v8, v7}, Lcom/transsion/player/orplayer/f;->canNonSubscriberPlay(ZIILmo/d;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-interface {v4, v5, v10, v8, v7}, Lcom/transsion/player/orplayer/f;->canNonSubscriberPlay(ZIILmo/d;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 4

    const-string v0, "videoSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->q(Lco/h;)Lcom/transsion/player/ui/render/SurfaceRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroidx/media3/common/m0;->c:I

    invoke-virtual {v0, v1}, Lcom/transsion/player/ui/render/SurfaceRenderView;->setVideoRotation(I)V

    :cond_0
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->r(Lco/h;)Lcom/transsion/player/ui/render/TextureRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p1, Landroidx/media3/common/m0;->c:I

    invoke-virtual {v0, v1}, Lcom/transsion/player/ui/render/TextureRenderView;->setVideoRotation(I)V

    :cond_1
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->q(Lco/h;)Lcom/transsion/player/ui/render/SurfaceRenderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p1, Landroidx/media3/common/m0;->a:I

    iget v2, p1, Landroidx/media3/common/m0;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/player/ui/render/SurfaceRenderView;->setVideoSize(II)V

    :cond_2
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->r(Lco/h;)Lcom/transsion/player/ui/render/TextureRenderView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p1, Landroidx/media3/common/m0;->a:I

    iget v2, p1, Landroidx/media3/common/m0;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/player/ui/render/TextureRenderView;->setVideoSize(II)V

    :cond_3
    iget-object v0, p0, Lco/h$g;->b:Lco/h;

    invoke-static {v0}, Lco/h;->o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_4

    iget v2, p1, Landroidx/media3/common/m0;->a:I

    iget v3, p1, Landroidx/media3/common/m0;->b:I

    invoke-interface {v1, v2, v3}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroidx/media3/common/m0;->a:I

    iget p1, p1, Landroidx/media3/common/m0;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  height:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ORExoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    return-void
.end method
