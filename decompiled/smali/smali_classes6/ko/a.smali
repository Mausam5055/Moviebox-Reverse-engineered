.class public final Lko/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private b:J

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0xbb8

    iput v0, p0, Lko/a;->c:I

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    const-class v0, Lko/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final c(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "GMT+0:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 2

    const-string v0, "dashVideoTracksGroup"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f;->canNonSubscriberPlay(ZIILmo/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public initPlayer()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->initPlayer()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onBufferedPosition(JLao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lko/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onCompletion() --> \u5237\u65b0\u901a\u77e5\u680f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->r(Lcom/transsion/player/mediasession/MediaItem;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->i(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->k(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onLoadingEnd(Lao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onLoadingProgress(IFLao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoopingStart()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onLoopingStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onMediaItemTransition(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 2

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->q(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2}, Lcom/transsion/player/orplayer/f;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onPlayerRelease(Lao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayerReset()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 4

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->y(Lcom/transsion/player/orplayer/f;JLao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lko/a;->b:J

    sub-long/2addr v0, v2

    iget v2, p0, Lko/a;->c:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lko/a;->b:J

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lko/l0;->a:Lko/l0;

    invoke-virtual {v2}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/player/mediasession/MediaItem;->setDuration(Ljava/lang/Long;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_3
    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object p1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->t(Lcom/transsion/player/mediasession/MediaItem;)V

    :cond_5
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->A(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetDataSource()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onSetDataSource()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onTracksAudioBitrateChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 2

    const-string v0, "tracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onTracksChange(Lmo/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->F(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lko/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lko/a;->c(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onVideoPause() --> \u5237\u65b0\u901a\u77e5\u680f --> position = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> position = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lko/l0;->a:Lko/l0;

    invoke-virtual {v1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setDuration(Ljava/lang/Long;)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lko/l0;->a:Lko/l0;

    invoke-virtual {v1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_6
    sget-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object v0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v3

    :cond_7
    invoke-virtual {v0, v3}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->r(Lcom/transsion/player/mediasession/MediaItem;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->I(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lko/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lko/a;->c(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onVideoStart() --> \u5237\u65b0\u901a\u77e5\u680f --> position = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> position = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lko/l0;->a:Lko/l0;

    invoke-virtual {v1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setDuration(Ljava/lang/Long;)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lko/l0;->a:Lko/l0;

    invoke-virtual {v1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_6
    sget-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object v0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v3

    :cond_7
    invoke-virtual {v0, v3}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->t(Lcom/transsion/player/mediasession/MediaItem;)V

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 6

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    goto :goto_0

    :cond_0
    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->currentMediaSource()Lao/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Lcom/transsion/player/mediasession/MediaItem;->setDuration(Ljava/lang/Long;)V

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_5
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lko/a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    :cond_6
    const-wide/16 v4, 0x0

    :goto_4
    invoke-direct {p0, v4, v5}, Lko/a;->c(J)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v2

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> setOnSeekCompleteListener() --> \u5237\u65b0\u901a\u77e5\u680f --> position = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> position = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->t(Lcom/transsion/player/mediasession/MediaItem;)V

    return-void
.end method
