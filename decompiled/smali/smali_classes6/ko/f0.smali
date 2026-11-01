.class public final Lko/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lko/f0$a;
    }
.end annotation


# static fields
.field public static final r:Lko/f0$a;


# instance fields
.field private volatile a:Lcom/transsion/player/orplayer/g;

.field private volatile b:Lao/e;

.field private c:Landroid/view/SurfaceView;

.field private d:Landroid/view/TextureView;

.field private e:Lcom/transsion/player/orplayer/f;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private g:Ljava/lang/Float;

.field private h:Z

.field private i:Z

.field private j:Lbo/d;

.field private k:Z

.field private l:Z

.field private m:F

.field private n:Lcom/transsion/player/enum/ScaleMode;

.field private o:Z

.field private p:J

.field private final q:Lko/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lko/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lko/f0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lko/f0;->r:Lko/f0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lko/f0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lko/f0;->l:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lko/f0;->m:F

    sget-object v0, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    iput-object v0, p0, Lko/f0;->n:Lcom/transsion/player/enum/ScaleMode;

    new-instance v0, Lko/a;

    invoke-direct {v0}, Lko/a;-><init>()V

    iput-object v0, p0, Lko/f0;->q:Lko/a;

    return-void
.end method

.method private final c()V
    .locals 6

    iget-object v0, p0, Lko/f0;->b:Lao/e;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lko/f0;->g()V

    sget-object v1, Lko/l0;->a:Lko/l0;

    invoke-virtual {v1}, Lko/l0;->j()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tnplayer new player playerBufferingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoConfig"

    invoke-static {v3, v2}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lko/f0;->i(Lao/e;)Z

    move-result v0

    const-string v2, "getApp(...)"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    instance-of v0, v0, Lco/h;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lko/f0;->d()V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    new-instance v0, Lco/m;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/32 v4, 0x12c00000

    invoke-direct {v0, v4, v5, v3}, Lco/m;-><init>(JLjava/lang/Integer;)V

    if-lez v1, :cond_1

    sget-object v1, Lko/m0;->a:Lko/m0;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lko/m0;->d(Landroid/content/Context;Lco/m;)Lco/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/f0;->f(Lcom/transsion/player/orplayer/g;)V

    iput-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    goto :goto_0

    :cond_1
    sget-object v0, Lko/m0;->a:Lko/m0;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lko/m0;->c(Landroid/content/Context;)Lco/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/f0;->f(Lcom/transsion/player/orplayer/g;)V

    iput-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    instance-of v0, v0, Lko/d0;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lko/f0;->d()V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_3
    sget-object v0, Lko/m0;->a:Lko/m0;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lko/m0;->b(Landroid/content/Context;)Lko/d0;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/f0;->f(Lcom/transsion/player/orplayer/g;)V

    iput-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    :cond_4
    :goto_0
    return-void
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    instance-of v1, v0, Lko/d0;

    if-eqz v1, :cond_0

    check-cast v0, Lko/d0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lko/d0;->J()V

    :cond_1
    return-void
.end method

.method private final e()I
    .locals 1

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->r()I

    move-result v0

    return v0
.end method

.method private final f(Lcom/transsion/player/orplayer/g;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lko/f0;->k:Z

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    iget-object v0, p0, Lko/f0;->j:Lbo/d;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerConfig(Lbo/d;)V

    :cond_1
    iget-object v0, p0, Lko/f0;->g:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_2
    iget-boolean v0, p0, Lko/f0;->i:Z

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    iget-boolean v0, p0, Lko/f0;->h:Z

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setAutoPlay(Z)V

    iget v0, p0, Lko/f0;->m:F

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    iget-boolean v0, p0, Lko/f0;->l:Z

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->enableHardwareDecoder(Z)V

    iget-object v0, p0, Lko/f0;->c:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    :cond_3
    iget-object v0, p0, Lko/f0;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    :cond_4
    iget-object v0, p0, Lko/f0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_5
    iget-object v0, p0, Lko/f0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/g;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lko/f0;->n:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    return-void
.end method

.method private final g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lko/f0;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lko/f0;->p:J

    return-void
.end method

.method private final i(Lao/e;)Z
    .locals 2

    invoke-direct {p0}, Lko/f0;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lao/e;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lao/e;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public addDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->a(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->q:Lko/a;

    invoke-virtual {v0, p1}, Lko/a;->a(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public changeTrackSelection(Lmo/d;I)V
    .locals 1

    const-string v0, "mediaTrackGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->changeTrackSelection(Lmo/d;I)V

    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_0
    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearSurfaceOnly()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lko/f0;->c:Landroid/view/SurfaceView;

    iput-object v0, p0, Lko/f0;->d:Landroid/view/TextureView;

    return-void
.end method

.method public currentMediaSource()Lao/e;
    .locals 1

    iget-object v0, p0, Lko/f0;->b:Lao/e;

    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    iput-boolean p1, p0, Lko/f0;->l:Z

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->enableHardwareDecoder(Z)V

    :cond_0
    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getBitrate()Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentTracks()Lmo/c;
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentTracks()Lmo/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentVideoFormat()Lmo/b;
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentVideoFormat()Lmo/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDownloadBitrate()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVideoHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->k(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVideoWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->l(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVolume()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final h(Lcom/transsion/player/orplayer/e;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Tnplayer init onBandwidthRedundancyRate"

    const-string v1, "onBandwidthRedundancy"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrPlayer setBandwidthRedundancyListener :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    instance-of v0, v0, Lko/d0;

    if-eqz v0, :cond_0

    const-string v0, "Tnplayer init TnAliPlayer"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    const-string v2, "null cannot be cast to non-null type com.transsion.player.orplayer.global.TnAliPlayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lko/d0;

    invoke-virtual {v0, p1}, Lko/d0;->Z(Lcom/transsion/player/orplayer/e;)V

    :cond_0
    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    instance-of v0, v0, Lco/h;

    if-eqz v0, :cond_1

    const-string v0, "Tnplayer init ORExoPlayer"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    const-string v1, "null cannot be cast to non-null type com.transsion.player.exo.ORExoPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lco/h;

    invoke-virtual {v0, p1}, Lco/h;->l0(Lcom/transsion/player/orplayer/e;)V

    :cond_1
    return-void
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isLoading()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->m(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPrepared()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->n(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lko/l0;->a:Lko/l0;

    iget-object v1, p0, Lko/f0;->b:Lao/e;

    invoke-virtual {v0, p0, v1}, Lko/l0;->u(Lcom/transsion/player/orplayer/g;Lao/e;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    sget-object v0, Lko/l0;->a:Lko/l0;

    const-string v1, "play"

    invoke-virtual {v0, p0, v1}, Lko/l0;->z(Lcom/transsion/player/orplayer/g;Ljava/lang/String;)V

    iget-object v1, p0, Lko/f0;->b:Lao/e;

    invoke-virtual {v0, p0, v1}, Lko/l0;->v(Lcom/transsion/player/orplayer/g;Lao/e;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lko/f0;->g()V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    iput-object v0, p0, Lko/f0;->e:Lcom/transsion/player/orplayer/f;

    iput-object v0, p0, Lko/f0;->c:Landroid/view/SurfaceView;

    iput-object v0, p0, Lko/f0;->d:Landroid/view/TextureView;

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0, p0}, Lko/l0;->x(Lcom/transsion/player/orplayer/g;)V

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lko/f0;->release()V

    return-void
.end method

.method public removeDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->p(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->q:Lko/a;

    invoke-virtual {v0, p1}, Lko/a;->d(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public requestForce()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->r(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lko/f0;->g()V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    iget-object v0, p0, Lko/f0;->b:Lao/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_1
    sget-object p1, Lko/l0;->a:Lko/l0;

    iget-object p2, p0, Lko/f0;->b:Lao/e;

    invoke-virtual {p1, p0, p2}, Lko/l0;->B(Lcom/transsion/player/orplayer/g;Lao/e;)V

    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iput-boolean p1, p0, Lko/f0;->h:Z

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setAutoPlay(Z)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lao/e;)V
    .locals 2

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lko/l0;->a:Lko/l0;

    const-string v1, "setDataSource"

    invoke-virtual {v0, p0, v1}, Lko/l0;->z(Lcom/transsion/player/orplayer/g;Ljava/lang/String;)V

    iput-object p1, p0, Lko/f0;->b:Lao/e;

    invoke-direct {p0}, Lko/f0;->c()V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lko/f0;->q:Lko/a;

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_0
    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_1
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iput-boolean p1, p0, Lko/f0;->i:Z

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iput-boolean p1, p0, Lko/f0;->k:Z

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setPlayerConfig(Lbo/d;)V
    .locals 1

    const-string v0, "vodConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lko/f0;->j:Lbo/d;

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setPlayerConfig(Lbo/d;)V

    :cond_0
    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lko/f0;->e:Lcom/transsion/player/orplayer/f;

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_0
    iget-object p1, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOrPlayer setPlayerListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBandwidthRedundancy"

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    const-string v0, "scaleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lko/f0;->n:Lcom/transsion/player/enum/ScaleMode;

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iput p1, p0, Lko/f0;->m:F

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lko/f0;->d:Landroid/view/TextureView;

    iput-object p1, p0, Lko/f0;->c:Landroid/view/SurfaceView;

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lko/f0;->c:Landroid/view/SurfaceView;

    iput-object p1, p0, Lko/f0;->d:Landroid/view/TextureView;

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 1

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->setVipResolution(ZI)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lko/f0;->g:Ljava/lang/Float;

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lko/f0;->g()V

    iget-object v0, p0, Lko/f0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    return-void
.end method
