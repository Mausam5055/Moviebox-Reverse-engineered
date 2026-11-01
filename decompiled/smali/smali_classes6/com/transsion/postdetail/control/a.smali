.class public final Lcom/transsion/postdetail/control/a;
.super Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/control/a$a;,
        Lcom/transsion/postdetail/control/a$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/postdetail/control/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/control/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/control/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/ui/adapter/l;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/ui/adapter/l;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V

    return-void
.end method


# virtual methods
.method public e(ZILandroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e(ZILandroid/view/View;)V

    instance-of p1, p3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-virtual {p3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->onPlayerReset()V

    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 13

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->g(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "play url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  width:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",height:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", duration: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", builtIn = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ShortTvImmVideoPlayer"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    invoke-virtual {v2, v1}, Lcom/transsion/postdetail/control/a$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v12, Lao/e;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v5, v3

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v12}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    move-result v1

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_8
    return-void
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/postdetail/control/a$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/l;->u(Lcom/transsion/baselib/report/l$a;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->v(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    return-void
.end method

.method protected q(ILandroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->q(ILandroid/view/View;)V

    return-void
.end method

.method public s(I)V
    .locals 0

    return-void
.end method

.method public t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "video"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected w()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method protected x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Llg/a;->a:Llg/a$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "play url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  width:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",height:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", builtIn = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ShortTvImmVideoPlayer"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/control/a$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v1, p2}, Lcom/transsion/player/shorttv/preload/q;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_7
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_9
    :goto_5
    return-void
.end method
