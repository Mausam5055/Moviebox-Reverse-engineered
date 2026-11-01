.class public final Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;
.super Lcs/a;

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/shorttv/ui/widget/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;,
        Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

.field private final c:Lcom/transsion/player/orplayer/g;

.field private final d:Lcom/transsion/player/ui/ORPlayerView;

.field private e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Integer;

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->o:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcs/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    iput-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    iput-object p5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->f:Z

    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i:Z

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    return-object p0
.end method

.method private final i()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

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

    const-string v2, "ShortTvControl"

    const-string v3, "current is fail, try load more"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0}, Lr6/f;->w()V

    :cond_1
    return-void
.end method

.method private final q(ILandroid/view/View;)V
    .locals 9

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v0, p2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setCountdownController(Lcom/transsion/shorttv/ui/widget/a1;)V

    :cond_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on page select position = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "ShortTvControl"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-gez p1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljs/k;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    instance-of p1, v2, Ljs/e;

    if-eqz p1, :cond_6

    instance-of p1, p2, Lcom/transsion/shorttv/ui/widget/d;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    :cond_4
    if-eqz v1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->f:Z

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setFirstPlayInSession(Z)V

    :cond_5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->f:Z

    check-cast p2, Lcom/transsion/shorttv/ui/widget/d;

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    check-cast v2, Ljs/e;

    invoke-interface {p2, p1, v0, v2}, Lcom/transsion/shorttv/ui/widget/d;->onPageSelected(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v2, v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    :cond_1
    new-instance p1, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;

    invoke-direct {p1, v0, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->n:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iput-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public c(IZLandroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onEachPageSelected, position = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvControl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->l:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->l:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

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

    const-string v2, "ShortTvControl"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    :cond_2
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->q(ILandroid/view/View;)V

    :cond_3
    return-void
.end method

.method public e(ZILandroid/view/View;)V
    .locals 6

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageRelease, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ----- currentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvControl"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvControl"

    const-string v2, "onPageRelease, \u8fde\u7eed\u6ed1\u52a8\uff0c\u6682\u505c"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    instance-of p1, p3, Lcom/transsion/shorttv/ui/widget/d;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/transsion/shorttv/ui/widget/d;

    invoke-interface {p3, p2}, Lcom/transsion/shorttv/ui/widget/d;->onPageRelease(I)V

    :cond_1
    return-void
.end method

.method public f(IZLandroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

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

    const-string v1, "ShortTvControl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    if-ne p2, p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->j:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->j:Z

    iget p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->h:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljs/k;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_4

    instance-of v0, p2, Ljs/e;

    if-eqz v0, :cond_3

    move-object v1, p2

    check-cast v1, Ljs/e;

    :cond_3
    if-eqz v1, :cond_4

    sget-object p2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    invoke-virtual {v1}, Ljs/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e(Ljava/lang/String;)V

    :cond_4
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    invoke-direct {p0, p1, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->q(ILandroid/view/View;)V

    return-void
.end method

.method public final j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    return v0
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/d;->getProgress()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/d;->onAudioTrackChange()V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/d;->onGetDubsInfo()V

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i:Z

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onNetConnect()V

    :cond_1
    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->l:Z

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    return-void
.end method

.method public final t(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;ILjs/e;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/g;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p1, p2, v0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V

    return-void
.end method
