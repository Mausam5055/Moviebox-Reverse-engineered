.class public Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/m4;

.field private final b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

.field private final c:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

.field private d:Lcom/cloud/hisavana/sdk/q4;

.field private e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

.field private final k:Ljava/lang/Runnable;

.field private l:Lcom/cloud/hisavana/sdk/e5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Z

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Z

    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Ljava/lang/Runnable;

    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Lcom/cloud/hisavana/sdk/e5;

    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/m4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->p(Lcom/cloud/hisavana/sdk/m4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/q4;

    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n()V

    return-void
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    return p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    return p1
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m()V

    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    return-object p0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Z

    return p0
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    return-object p0
.end method

.method private m()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/cloud/hisavana/sdk/a5;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Lcom/cloud/hisavana/sdk/e5;

    invoke-direct {v1, v0, p0, v2}, Lcom/cloud/hisavana/sdk/a5;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/e5;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->g(Lcom/cloud/hisavana/sdk/a5;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic p(Lcom/cloud/hisavana/sdk/m4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/cloud/hisavana/sdk/m4;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->b()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public dispatchPlay()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->e()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n()V

    :cond_0
    return-void
.end method

.method public dispatchPlayPause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->d()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public isPlayWhenReady()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected o()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public openOrCloseVolume()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->a()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release videoPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/hisavana/sdk/m4;->release()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    :cond_0
    return-void
.end method

.method public releasePlayer()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePlayer videoPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    :cond_0
    return-void
.end method

.method public repeat()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->c()V

    :cond_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/m4;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/q4;

    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {p1, v2, v3, v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCompanionViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListModeVisibilityCallback(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;)V
    .locals 0
    .param p1    # Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    return-void
.end method

.method public setMeasureAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Z

    return-void
.end method

.method public setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 9

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaData path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->release()V

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/d4;->a(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/m4;->a(Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Z

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/m4;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Z

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/m4;->a(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/m4;->c(Lcom/cloud/hisavana/sdk/q4;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setVideoSize(II)V

    :cond_1
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/a;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/widget/video/a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/m4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/m4;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setUseListMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/m4;->a(Z)V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoSize width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    if-lez p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    move-result v1

    :goto_0
    if-lez p2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->adaptVideoSize(II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/q4;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/q4;->onVideoSizeChanged(II)V

    :cond_2
    return-void
.end method
