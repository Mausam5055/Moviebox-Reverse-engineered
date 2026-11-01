.class public final Lqn/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqn/a$a;
    }
.end annotation


# static fields
.field public static final i:Lqn/a$a;


# instance fields
.field private final a:Lcom/transsion/player/orplayer/g;

.field private final b:Lcom/transsion/player/ui/ORPlayerView;

.field private c:I

.field private d:I

.field private e:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private f:Landroid/view/View;

.field private g:Z

.field private final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqn/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqn/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqn/a;->i:Lqn/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lqn/a;->b:Lcom/transsion/player/ui/ORPlayerView;

    const/4 p1, -0x1

    iput p1, p0, Lqn/a;->c:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lqn/a;->h:Ljava/util/Map;

    return-void
.end method

.method private final A(Lcom/transsion/ninegridview/video/NineGridItemView;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/ninegridview/R$id;->video_cover:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget v2, Lcom/transsion/ninegridview/R$id;->video_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget-object v3, p0, Lqn/a;->b:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_2
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lqn/a;->b:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    check-cast v0, Landroid/widget/FrameLayout;

    sget v3, Lcom/transsion/ninegridview/R$id;->video_cover:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    sget v3, Lcom/transsion/ninegridview/R$id;->label_gif:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lqn/a;->b:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v0, :cond_5

    sget v3, Lcom/transsion/ninegridview/R$id;->player_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    :cond_5
    iget-object v0, p0, Lqn/a;->b:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v0, :cond_8

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    :cond_7
    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Lqn/a;->b:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-void
.end method

.method private final c(Lcom/transsion/moviedetailapi/bean/Media;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_1
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-ne v2, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    if-eqz v4, :cond_4

    return v1

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method private final d(Lcom/transsion/moviedetailapi/bean/Media;Landroid/view/View;)Lcom/transsion/ninegridview/video/NineGridItemView;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Image;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p2, v0}, Lqn/a;->k(Landroid/view/View;I)Lcom/transsion/ninegridview/video/NineGridItemView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lqn/a;->o(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v0, p0, Lqn/a;->d:I

    return-object v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private final g(Lcom/transsion/moviedetailapi/bean/Media;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ge v1, v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method private final i(Lcom/transsion/moviedetailapi/bean/Media;I)I
    .locals 3

    invoke-direct {p0, p1}, Lqn/a;->g(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lqn/a;->c(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_1
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Image;

    if-ge p2, v0, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private final j(Lcom/transsion/moviedetailapi/bean/Media;I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lqn/a;->i(Lcom/transsion/moviedetailapi/bean/Media;I)I

    move-result p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ltz p2, :cond_2

    if-ge p2, v0, :cond_2

    iget v0, p0, Lqn/a;->d:I

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final k(Landroid/view/View;I)Lcom/transsion/ninegridview/video/NineGridItemView;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/ninegridview/R$id;->nine_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/ninegridview/video/NineGridVideoView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ltz p2, :cond_3

    if-ge p2, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    instance-of p2, p1, Lcom/transsion/ninegridview/video/NineGridItemView;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/transsion/ninegridview/video/NineGridItemView;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private final m(Lcom/transsion/ninegridview/video/NineGridItemView;)V
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/ninegridview/R$id;->video_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/transsion/ninegridview/R$id;->label_gif:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->h(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final t(Lcom/transsion/moviedetailapi/bean/GifBean;Lcom/transsion/ninegridview/video/NineGridItemView;Z)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ItemChangeListener"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lqn/a;->A(Lcom/transsion/ninegridview/video/NineGridItemView;)V

    iget-object p2, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz p2, :cond_3

    new-instance v8, Lao/e;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
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

    :cond_3
    iget-object p1, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_4
    iget-object p1, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_5
    iget-object p1, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_6
    return-void
.end method

.method private final u(Lcom/transsion/moviedetailapi/bean/Media;)V
    .locals 6

    invoke-virtual {p0, p1}, Lqn/a;->e(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget v2, p0, Lqn/a;->d:I

    add-int/2addr v2, v1

    invoke-direct {p0, p1, v2}, Lqn/a;->j(Lcom/transsion/moviedetailapi/bean/Media;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/ninegridview/a;->h:Lcom/transsion/ninegridview/a$a;

    invoke-virtual {v4}, Lcom/transsion/ninegridview/a$a;->a()Lbo/d;

    move-result-object v4

    invoke-virtual {v4}, Lbo/d;->l()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final z(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/ninegridview/R$id;->player_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/ui/ORPlayerView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_1
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/ninegridview/R$id;->video_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    sget v0, Lcom/transsion/ninegridview/R$id;->label_gif:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lqn/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lqn/a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lqn/a;->e:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object v0, p0, Lqn/a;->f:Landroid/view/View;

    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lqn/a;->c:I

    return v0
.end method

.method public final e(Lcom/transsion/moviedetailapi/bean/Media;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lqn/a;->d:I

    return v0
.end method

.method public final h(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/moviedetailapi/bean/Media;)F
    .locals 5

    const-string v0, "nineGridView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-direct {p0, p2, v0}, Lqn/a;->i(Lcom/transsion/moviedetailapi/bean/Media;I)I

    move-result v3

    if-ltz v3, :cond_5

    if-lt v3, v1, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, v3}, Lqn/a;->k(Landroid/view/View;I)Lcom/transsion/ninegridview/video/NineGridItemView;

    move-result-object v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0, v3}, Lqn/a;->l(Landroid/view/View;)F

    move-result v3

    cmpg-float v4, v2, v3

    if-gez v4, :cond_4

    move v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return v2
.end method

.method public final l(Landroid/view/View;)F
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    div-float/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lqn/a;->f:Landroid/view/View;

    iget v1, p0, Lqn/a;->d:I

    invoke-direct {p0, v0, v1}, Lqn/a;->k(Landroid/view/View;I)Lcom/transsion/ninegridview/video/NineGridItemView;

    move-result-object v0

    invoke-direct {p0, v0}, Lqn/a;->m(Lcom/transsion/ninegridview/video/NineGridItemView;)V

    return-void
.end method

.method public q()V
    .locals 10

    iget-object v0, p0, Lqn/a;->e:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0, v0}, Lqn/a;->e(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result v4

    :cond_2
    if-lez v3, :cond_9

    iget v5, p0, Lqn/a;->d:I

    invoke-direct {p0, v0, v5}, Lqn/a;->i(Lcom/transsion/moviedetailapi/bean/Media;I)I

    move-result v5

    iput v5, p0, Lqn/a;->d:I

    if-ltz v5, :cond_9

    if-lt v5, v3, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v6, p0, Lqn/a;->d:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v1

    :goto_2
    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v8, p0, Lqn/a;->f:Landroid/view/View;

    iget v9, p0, Lqn/a;->d:I

    invoke-direct {p0, v8, v9}, Lqn/a;->k(Landroid/view/View;I)Lcom/transsion/ninegridview/video/NineGridItemView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lqn/a;->o(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lqn/a;->g:Z

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lqn/a;->h:Ljava/util/Map;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    :goto_3
    if-ne v3, v6, :cond_7

    move v2, v6

    :cond_7
    invoke-direct {p0, v5, v8, v2}, Lqn/a;->t(Lcom/transsion/moviedetailapi/bean/GifBean;Lcom/transsion/ninegridview/video/NineGridItemView;Z)V

    iget-object v0, p0, Lqn/a;->h:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    :goto_4
    iget-object v5, p0, Lqn/a;->h:Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v7}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lqn/a;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lt v5, v4, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lqn/a;->c:I

    iget-object v0, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_9
    :goto_5
    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lqn/a;->a:Lcom/transsion/player/orplayer/g;

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    iget-object v0, p0, Lqn/a;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lqn/a;->z(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lqn/a;->a()V

    return-void
.end method

.method public s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;I)V
    .locals 6

    iput-object p2, p0, Lqn/a;->f:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h()V

    iget-object v2, p0, Lqn/a;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lqn/a;->d(Lcom/transsion/moviedetailapi/bean/Media;Landroid/view/View;)Lcom/transsion/ninegridview/video/NineGridItemView;

    move-result-object p2

    iget v4, p0, Lqn/a;->d:I

    if-ltz v4, :cond_5

    if-ge v4, v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, p0, Lqn/a;->d:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0, v1}, Lqn/a;->e(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move v3, v5

    :cond_4
    invoke-direct {p0, v0, p2, v3}, Lqn/a;->t(Lcom/transsion/moviedetailapi/bean/GifBean;Lcom/transsion/ninegridview/video/NineGridItemView;Z)V

    iput p3, p0, Lqn/a;->c:I

    iput-object p1, p0, Lqn/a;->e:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-le v2, v5, :cond_5

    invoke-direct {p0, v1}, Lqn/a;->u(Lcom/transsion/moviedetailapi/bean/Media;)V

    :cond_5
    return-void
.end method

.method public final v(Lcom/transsion/moviedetailapi/bean/Media;)V
    .locals 3

    invoke-direct {p0, p1}, Lqn/a;->c(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v0

    sget-object v1, Lcom/transsion/ninegridview/a;->h:Lcom/transsion/ninegridview/a$a;

    invoke-virtual {v1}, Lcom/transsion/ninegridview/a$a;->a()Lbo/d;

    move-result-object v1

    invoke-virtual {v1}, Lbo/d;->l()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lqn/a;->e:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v1, p0, Lqn/a;->f:Landroid/view/View;

    iget v2, p0, Lqn/a;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lqn/a;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;I)V

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lqn/a;->c:I

    return-void
.end method

.method public final y(Z)V
    .locals 0

    iput-boolean p1, p0, Lqn/a;->g:Z

    return-void
.end method
