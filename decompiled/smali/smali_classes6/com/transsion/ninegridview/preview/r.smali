.class public final Lcom/transsion/ninegridview/preview/r;
.super Lch/a;


# instance fields
.field private final a:Lcom/transsion/player/orplayer/g;

.field private final b:Lcom/transsion/player/ui/ORPlayerView;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Lcom/transsion/moviedetailapi/bean/Image;


# direct methods
.method public constructor <init>(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lch/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/ninegridview/preview/r;->c:I

    return-void
.end method

.method private final e(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/ninegridview/R$id;->video_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/photoview/PhotoView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final h(Lcom/transsion/moviedetailapi/bean/GifBean;Landroid/view/View;Z)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/transsion/ninegridview/preview/r;->i(Landroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/g;

    new-instance v8, Lao/e;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v8}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/g;

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->prepare()V

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/g;

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/g;

    invoke-interface {p1, p3}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    return-void
.end method

.method private final i(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/ninegridview/R$id;->video_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/ninegridview/R$id;->video_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/photoview/PhotoView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    sget v1, Lcom/transsion/ninegridview/R$id;->player_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->e:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/r;->e:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    int-to-float v1, v1

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    goto :goto_3

    :goto_4
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, v2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public c(ZILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final f(ILcom/transsion/moviedetailapi/bean/Image;Landroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/preview/r;->c:I

    iput-object p3, p0, Lcom/transsion/ninegridview/preview/r;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/r;->e:Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/ninegridview/preview/r;->h(Lcom/transsion/moviedetailapi/bean/GifBean;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/transsion/ninegridview/preview/r;->e(Landroid/view/View;)V

    return-void
.end method
