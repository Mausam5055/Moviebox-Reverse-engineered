.class public abstract Lcom/transsion/postdetail/control/VideoPagerChangeControl;
.super Lcs/a;

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;,
        Lcom/transsion/postdetail/control/VideoPagerChangeControl$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private b:Z

.field private final c:Lcom/transsion/postdetail/ui/adapter/e;

.field private final d:Lcom/transsion/player/orplayer/g;

.field private final e:Lcom/transsion/player/ui/ORPlayerView;

.field private f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private g:Ljava/lang/String;

.field private final h:I

.field private final i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->o:Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;ZLcom/transsion/postdetail/ui/adapter/e;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcs/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    iput-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->b:Z

    iput-object p3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    iput-object p4, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    iput-object p5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    iput-object p6, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    iput-object p7, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->g:Ljava/lang/String;

    const/4 p2, 0x3

    iput p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    const-wide/16 p2, 0xbb8

    iput-wide p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->i:J

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->i()V

    return-void
.end method

.method private final g()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ImmVideoPlayer"

    const-string v3, "current is fail, try load more"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0}, Lr6/f;->w()V

    :cond_1
    return-void
.end method

.method private final i()V
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    return-void
.end method

.method private final j(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/transsion/postdetail/util/u;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/moviedetailapi/bean/Video;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final m(ILandroid/view/View;)V
    .locals 6

    iput-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on page select position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_0
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-gt v0, p1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v0, p2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    if-nez v0, :cond_3

    return-void

    :cond_3
    move-object v0, p2

    check-cast v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setPosition(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setPlayer(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V

    :cond_5
    iget-object v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_6

    check-cast p2, Lcom/transsion/player/orplayer/f;

    invoke-interface {v2, p2}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_1

    :cond_7
    move-object p2, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :cond_8
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_9

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getPlayerContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->b:Z

    if-eqz v2, :cond_a

    iput-boolean v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->b:Z

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->showCommentDialog()V

    :cond_a
    iget-object v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->o(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method private final o(I)V
    .locals 13

    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_7

    move v3, v1

    :goto_0
    add-int v4, p1, v3

    if-ltz v4, :cond_7

    iget-object v5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/e;

    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lcom/transsion/postdetail/util/u;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v6

    if-nez v6, :cond_5

    iget v5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    add-int/2addr v5, p1

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_6

    move v2, v1

    goto :goto_2

    :cond_5
    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try preload position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", duration = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", url = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "ImmVideoPlayer"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/moviedetailapi/bean/Video;)V

    :cond_6
    :goto_2
    if-eq v3, v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j(I)V

    :cond_8
    return-void
.end method

.method private final p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->i:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lej/f;->a:Lej/f$a;

    sget-object v7, Ljn/b;->e:Ljn/b$a;

    invoke-virtual {v7}, Ljn/b$a;->a()I

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljn/b$a;->a()I

    move-result v3

    const/16 v5, 0x8

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lej/f$a;->j(Lej/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitComplete, position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ----- currentPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ImmVideoPlayer"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m(ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public e(ZILandroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageRelease, position = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ----- currentPosition = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public f(IZLandroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->g()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ----- currentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    if-ne p2, p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l:Z

    iput p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    sget-object p2, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->t()V

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m(ILandroid/view/View;)V

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    return v0
.end method

.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k:Z

    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->o(I)V

    return-void
.end method

.method public final l(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->n:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->app2Background()V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l:Z

    return-void
.end method

.method public onBackgroundStatusChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->n:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->app2Background()V

    :cond_3
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/postdetail/control/VideoPagerChangeControl$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/l;->u(Lcom/transsion/baselib/report/l$a;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    iget-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/control/VideoPagerChangeControl$onStateChanged$1;

    invoke-direct {v3, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl$onStateChanged$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->k()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h()V

    :goto_0
    return-void
.end method

.method protected final q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Lcom/transsion/postdetail/util/u;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v3

    sget-object v10, Llg/a;->a:Llg/a$a;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v2

    :goto_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object v8, v2

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "play url="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  width:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",height:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", duration: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", builtIn = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ImmVideoPlayer"

    const/4 v7, 0x0

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v4, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v8

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v6

    goto :goto_7

    :cond_7
    :goto_6
    move v7, v5

    :goto_7
    xor-int/2addr v7, v6

    invoke-interface {v4, v7}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_8
    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v4

    if-ne v4, v6, :cond_f

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    const-string v4, "main/"

    const/4 v6, 0x2

    invoke-static {v11, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    const-string v5, ""

    goto :goto_8

    :cond_a
    move-object v5, v2

    :cond_b
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/Video;->setUrl(Ljava/lang/String;)V

    move-object v14, v2

    goto :goto_9

    :cond_c
    move-object v14, v11

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ImmVideoPlayer"

    const/4 v7, 0x0

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_d

    new-instance v3, Lao/e;

    const/16 v18, 0x1c

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v3

    move-object v13, v14

    invoke-direct/range {v12 .. v19}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_d
    iget-object v2, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_e
    invoke-virtual {v1, v11}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v11, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v11, :cond_10

    new-instance v12, Lao/e;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v11, v12}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_10
    iget-object v3, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_11
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g(Ljava/lang/String;)V

    :cond_12
    :goto_a
    return-void
.end method
