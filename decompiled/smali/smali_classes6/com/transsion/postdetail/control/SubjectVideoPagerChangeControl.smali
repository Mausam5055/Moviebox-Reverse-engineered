.class public Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;
.super Lcs/a;

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;,
        Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$b;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/postdetail/ui/adapter/l;

.field private final c:Lcom/transsion/player/orplayer/g;

.field private final d:Lcom/transsion/player/ui/ORPlayerView;

.field private e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private final f:I

.field private final g:J

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private final l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->n:Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/ui/adapter/l;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcs/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    iput-object p3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    iput-object p4, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    iput-object p5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    const/4 p2, 0x3

    iput p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    const-wide/16 p2, 0xbb8

    iput-wide p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->g:J

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->i:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->m()V

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l:Ljava/lang/String;

    return-void
.end method

.method private final h()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

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

    const-string v2, "ShortTvImmVideoPlayer"

    const-string v3, "current is fail, try load more"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0}, Lr6/f;->w()V

    :cond_1
    return-void
.end method

.method private final l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lin/d;->a(Lcom/transsion/moviedetailapi/bean/PreVideoAddress;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private final m()V
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

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

    const-string v2, "ShortTvImmVideoPlayer"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->q(ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public e(ZILandroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

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

    const-string v1, "ShortTvImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->w()V

    iget-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public f(IZLandroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

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

    const-string v1, "ShortTvImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    if-ne p2, p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j:Z

    iput p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

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
    invoke-virtual {p0, p1, p3}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->q(ILandroid/view/View;)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    return v0
.end method

.method protected final j()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected final k()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public n(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->i:Z

    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->s(I)V

    return-void
.end method

.method public onBackgroundStatusChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->m:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->app2Background()V

    :cond_3
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$b;->a:[I

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

    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    iget-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$onStateChanged$1;

    invoke-direct {v3, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$onStateChanged$1;-><init>(Lkotlin/coroutines/Continuation;)V

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

.method public final p(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->app2Background()V

    :cond_1
    return-void
.end method

.method protected q(ILandroid/view/View;)V
    .locals 6

    iput-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->u()V

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gt v0, p1, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p2, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setPosition(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setPlayer(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_5

    check-cast p2, Lcom/transsion/player/orplayer/f;

    invoke-interface {v2, p2}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_5
    iget-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    goto :goto_1

    :cond_6
    move-object p2, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :cond_7
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    invoke-direct {p0, p2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_9
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->addVideoView(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V

    iget-object v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->s(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j:Z

    return-void
.end method

.method public s(I)V
    .locals 13

    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_6

    move v3, v1

    :goto_0
    add-int v4, p1, v3

    if-ltz v4, :cond_6

    iget-object v5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/l;

    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, v5}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v6

    if-nez v6, :cond_4

    iget v5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    add-int/2addr v5, p1

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_5

    move v2, v1

    goto :goto_1

    :cond_4
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

    const-string v8, "ShortTvImmVideoPlayer"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, v5, v6}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V

    :cond_5
    :goto_1
    if-eq v3, v0, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->n(I)V

    :cond_7
    return-void
.end method

.method public t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->g:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

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

.method protected u()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_0
    return-void
.end method

.method protected final v(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    return-void
.end method

.method protected w()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_1
    return-void
.end method

.method protected x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "view"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v3

    sget-object v10, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v11

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v11

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v11

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v11

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v11

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "play url="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v4, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v8

    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_6

    move v7, v6

    goto :goto_6

    :cond_6
    :goto_5
    move v7, v5

    :goto_6
    xor-int/2addr v7, v6

    invoke-interface {v4, v7}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_7
    if-eqz v2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v4

    if-ne v4, v6, :cond_c

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    const-string v4, "main/"

    const/4 v6, 0x2

    invoke-static {v12, v4, v5, v6, v11}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-object v15, v2

    goto :goto_7

    :cond_9
    move-object v15, v12

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ImmVideoPlayer"

    const/4 v7, 0x0

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_a

    new-instance v3, Lao/e;

    const/16 v19, 0x1c

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object v14, v15

    invoke-direct/range {v13 .. v20}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_a
    iget-object v2, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_b
    invoke-virtual {v1, v12}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v11, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v11, :cond_d

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

    :cond_d
    iget-object v3, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_e
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g(Ljava/lang/String;)V

    :cond_f
    :goto_8
    return-void
.end method
