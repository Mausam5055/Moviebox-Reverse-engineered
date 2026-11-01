.class public final Lcom/transsion/shorttv_pugc/ui/widget/u;
.super Lgt/a;

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ui/widget/u$a;,
        Lcom/transsion/shorttv_pugc/ui/widget/u$b;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/shorttv_pugc/ui/widget/u$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

.field private final c:Lcom/transsion/player/orplayer/g;

.field private final d:Lcom/transsion/player/ui/ORPlayerView;

.field private e:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/widget/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv_pugc/ui/widget/u;->l:Lcom/transsion/shorttv_pugc/ui/widget/u$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgt/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->c:Lcom/transsion/player/orplayer/g;

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->d:Lcom/transsion/player/ui/ORPlayerView;

    iput-object p5, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->e:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->h:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void
.end method

.method private final e()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

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

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0}, Lr6/f;->w()V

    :cond_1
    return-void
.end method

.method private final j(ILandroid/view/View;)V
    .locals 6

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->i:Landroid/view/View;

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvControl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v3

    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->l(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    :cond_3
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    instance-of p1, p2, Lcom/transsion/shorttv_pugc/ui/widget/a;

    if-eqz p1, :cond_4

    check-cast p2, Lcom/transsion/shorttv_pugc/ui/widget/a;

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->c:Lcom/transsion/player/orplayer/g;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->d:Lcom/transsion/player/ui/ORPlayerView;

    invoke-interface {p2, p1, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/a;->onPageSelected(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(IZLandroid/view/View;)V
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

.method public b(Landroid/view/View;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->j:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->j:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->e:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

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

    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    :cond_2
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/u;->j(ILandroid/view/View;)V

    :cond_3
    return-void
.end method

.method public c(ZILandroid/view/View;)V
    .locals 6

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

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

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

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

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->c:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    instance-of p1, p3, Lcom/transsion/shorttv_pugc/ui/widget/a;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/transsion/shorttv_pugc/ui/widget/a;

    invoke-interface {p3, p2}, Lcom/transsion/shorttv_pugc/ui/widget/a;->onPageRelease(I)V

    :cond_1
    return-void
.end method

.method public d(IZLandroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/u;->e()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

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

    iget p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    if-ne p2, p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->k:Z

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->g:I

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    invoke-direct {p0, p1, p3}, Lcom/transsion/shorttv_pugc/ui/widget/u;->j(ILandroid/view/View;)V

    return-void
.end method

.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->i:Landroid/view/View;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->f:I

    return v0
.end method

.method public final h()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->i:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv_pugc/ui/widget/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/shorttv_pugc/ui/widget/a;->getProgress()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->i:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->onNetConnect()V

    :cond_1
    return-void
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->j:Z

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/shorttv_pugc/ui/widget/u$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->i:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/u;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :goto_0
    return-void
.end method
