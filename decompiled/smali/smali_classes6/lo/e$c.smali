.class public final Llo/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llo/e;-><init>(Lcom/transsion/player/shorttv/preload/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Llo/e;


# direct methods
.method constructor <init>(Llo/e;)V
    .locals 0

    iput-object p1, p0, Llo/e$c;->b:Llo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Llo/e$c;->a:I

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

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->g(Llo/e;)Lcom/transsion/player/orplayer/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/player/orplayer/c;->f(Z)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v2}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    if-eqz v3, :cond_1

    invoke-static {v3, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->J(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->i(Llo/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v1}, Llo/e;->n(Llo/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    iget-object v2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v2}, Llo/e;->h(Llo/e;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    move-result v2

    if-ne v2, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v2}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    if-eqz v3, :cond_5

    invoke-static {v3, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->G(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->i(Llo/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v1}, Llo/e;->n(Llo/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_3
    sget-object v2, Loo/e;->a:Loo/e;

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsPlayingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/t;I)V
    .locals 6

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v1}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaItemTransition  reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {p2}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

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
    .locals 9

    sget-object v6, Loo/e;->a:Loo/e;

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged  playbackState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p1, v0, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_1

    invoke-static {v1, v8, v7, v8}, Lcom/transsion/player/orplayer/f$a;->f(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v1}, Llo/e;->q(Llo/e;)V

    iget-object v1, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v1}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_3

    invoke-static {v2, v8, v7, v8}, Lcom/transsion/player/orplayer/f$a;->x(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget v1, p0, Llo/e$c;->a:I

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_5

    invoke-static {v1, v8, v7, v8}, Lcom/transsion/player/orplayer/f$a;->l(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onPlaybackStateChanged STATE_BUFFERING"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_7

    invoke-static {v1, v8, v7, v8}, Lcom/transsion/player/orplayer/f$a;->j(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    :goto_4
    iput p1, p0, Llo/e$c;->a:I

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Loo/e;->a:Loo/e;

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayerError:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

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

    new-instance v2, Lcom/transsion/player/orplayer/PlayError;

    iget v3, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/transsion/player/orplayer/PlayError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/transsion/player/orplayer/f$a;->r(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
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
    .locals 8

    const-string v0, "oldPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newPosition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, Landroidx/media3/common/a0$e;->c:I

    iget-wide v6, p2, Landroidx/media3/common/a0$e;->g:J

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object p2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {p2}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionDiscontinuity: currentWindowIndex="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentPositionMs="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p2, 0x1

    if-eq p3, p2, :cond_0

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {p2}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/player/orplayer/f;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {p2}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-wide v1, v6

    invoke-static/range {v0 .. v5}, Lcom/transsion/player/orplayer/f$a;->z(Lcom/transsion/player/orplayer/f;JLao/e;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Llo/e$c;->b:Llo/e;

    invoke-static {p2}, Llo/e;->o(Llo/e;)Lcom/transsion/player/shorttv/preload/g;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/transsion/player/shorttv/preload/g;->h(I)V

    :cond_5
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 6

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v1}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onRenderedFirstFrame:"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

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
    .locals 1

    const-string v0, "tracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 10

    const-string v0, "videoSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->k(Llo/e;)Lcom/transsion/player/ui/render/SurfaceRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroidx/media3/common/m0;->c:I

    invoke-virtual {v0, v1}, Lcom/transsion/player/ui/render/SurfaceRenderView;->setVideoRotation(I)V

    :cond_0
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->m(Llo/e;)Lcom/transsion/player/ui/render/TextureRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p1, Landroidx/media3/common/m0;->c:I

    invoke-virtual {v0, v1}, Lcom/transsion/player/ui/render/TextureRenderView;->setVideoRotation(I)V

    :cond_1
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->k(Llo/e;)Lcom/transsion/player/ui/render/SurfaceRenderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p1, Landroidx/media3/common/m0;->a:I

    iget v2, p1, Landroidx/media3/common/m0;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/player/ui/render/SurfaceRenderView;->setVideoSize(II)V

    :cond_2
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->m(Llo/e;)Lcom/transsion/player/ui/render/TextureRenderView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p1, Landroidx/media3/common/m0;->a:I

    iget v2, p1, Landroidx/media3/common/m0;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/player/ui/render/TextureRenderView;->setVideoSize(II)V

    :cond_3
    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->j(Llo/e;)Ljava/util/concurrent/CopyOnWriteArrayList;

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
    sget-object v4, Loo/e;->a:Loo/e;

    iget-object v0, p0, Llo/e$c;->b:Llo/e;

    invoke-static {v0}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object v5

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

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    return-void
.end method
