.class public Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field private final c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Lcom/cloud/hisavana/sdk/q4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const-string p2, "SplashAdVideoView"

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->layout_splash_ad_video_view:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    sget p2, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c:Landroid/widget/ImageView;

    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    return-object p0
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/q4;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e:Lcom/cloud/hisavana/sdk/q4;

    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->d:Z

    return p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->getDuration()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getRemainingDuration()I
    .locals 8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->getDuration()J

    move-result-wide v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainingDuration -------------> duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SplashAdVideoView"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRemainingDuration -------------> currentDuration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRemainingDuration -------------> remainingDuration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->release()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e:Lcom/cloud/hisavana/sdk/q4;

    instance-of v2, v0, Lcom/cloud/hisavana/sdk/f4;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/cloud/hisavana/sdk/f4;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/f4;->j()V

    :cond_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e:Lcom/cloud/hisavana/sdk/q4;

    return-void
.end method

.method public resetVolumePosition(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->hisavana_ad_dimen_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->hisavana_ad_dimen_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e:Lcom/cloud/hisavana/sdk/q4;

    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->d:Z

    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;II)V
    .locals 0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionSize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaData -------------> path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashAdVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {}, La7/c;->r()Z

    move-result v1

    invoke-virtual {v0, p2, p1, v1, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
