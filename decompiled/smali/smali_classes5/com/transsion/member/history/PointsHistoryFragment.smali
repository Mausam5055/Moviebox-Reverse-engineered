.class public final Lcom/transsion/member/history/PointsHistoryFragment;
.super Lcom/transsion/baseui/fragment/BaseListFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/history/PointsHistoryFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseListFragment<",
        "Lcom/transsion/member/bean/PointsHistoryItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0007J\u000f\u0010\u0012\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/member/history/PointsHistoryFragment;",
        "Lcom/transsion/baseui/fragment/BaseListFragment;",
        "Lcom/transsion/member/bean/PointsHistoryItem;",
        "<init>",
        "()V",
        "",
        "s0",
        "()Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "m0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "initViewData",
        "G0",
        "loadMore",
        "lazyLoadData",
        "getPageStateLayoutTitle",
        "initViewModel",
        "retryLoadData",
        "Landroid/view/View;",
        "q0",
        "()Landroid/view/View;",
        "Lcom/transsion/member/history/PointsHistoryViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "Q0",
        "()Lcom/transsion/member/history/PointsHistoryViewModel;",
        "mViewModel",
        "c",
        "Ljava/lang/String;",
        "mPageNum",
        "",
        "d",
        "Z",
        "hasMoreData",
        "e",
        "a",
        "Member_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final e:Lcom/transsion/member/history/PointsHistoryFragment$a;

.field public static final f:I


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/history/PointsHistoryFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/history/PointsHistoryFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/history/PointsHistoryFragment;->e:Lcom/transsion/member/history/PointsHistoryFragment$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/history/PointsHistoryFragment;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;-><init>()V

    const-class v0, Lcom/transsion/member/history/PointsHistoryViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/history/PointsHistoryFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/member/history/PointsHistoryFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/member/history/PointsHistoryFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/member/history/PointsHistoryFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->b:Lkotlin/Lazy;

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->d:Z

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/member/history/PointsHistoryFragment;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/history/PointsHistoryFragment;->S0(Lcom/transsion/member/history/PointsHistoryFragment;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(Lcom/transsion/member/history/PointsHistoryFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/history/PointsHistoryFragment;->R0(Lcom/transsion/member/history/PointsHistoryFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final Q0()Lcom/transsion/member/history/PointsHistoryViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/member/history/PointsHistoryViewModel;

    return-object v0
.end method

.method private static final R0(Lcom/transsion/member/history/PointsHistoryFragment;)Lkotlin/Unit;
    .locals 3

    const-string v0, "/rewards/center"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final S0(Lcom/transsion/member/history/PointsHistoryFragment;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/member/bean/PointsHistoryData;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->A0()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, v1, v0, v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->N0()V

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/member/bean/PointsHistoryData;->getPage()Lcom/transsion/member/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/member/bean/Pager;->getHasMore()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/member/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-boolean v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->d:Z

    invoke-virtual {p1}, Lcom/transsion/member/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->B0()V

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/transsion/member/history/PointsHistoryFragment;->d:Z

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public G0()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    const-string v1, "1"

    iput-object v1, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->d:Z

    invoke-virtual {p0}, Lcom/transsion/member/history/PointsHistoryFragment;->lazyLoadData()V

    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/member/R$string;->points_history_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initViewData()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->initViewData()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->u0()V

    invoke-direct {p0}, Lcom/transsion/member/history/PointsHistoryFragment;->Q0()Lcom/transsion/member/history/PointsHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/history/PointsHistoryViewModel;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/history/d;

    invoke-direct {v1, p0}, Lcom/transsion/member/history/d;-><init>(Lcom/transsion/member/history/PointsHistoryFragment;)V

    new-instance v2, Lcom/transsion/member/history/PointsHistoryFragment$b;

    invoke-direct {v2, v1}, Lcom/transsion/member/history/PointsHistoryFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/history/PointsHistoryFragment;->Q0()Lcom/transsion/member/history/PointsHistoryViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "1"

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/member/history/PointsHistoryViewModel;->d(Ljava/lang/String;)V

    return-void
.end method

.method public loadMore()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/member/history/PointsHistoryFragment;->c:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/member/history/PointsHistoryFragment;->lazyLoadData()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public m0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 4

    new-instance v0, Lcom/transsion/member/adapter/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/member/adapter/f;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public q0()Landroid/view/View;
    .locals 8

    new-instance v6, Lcom/transsion/member/view/HistoryStateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/transsion/member/view/HistoryStateView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/transsion/member/R$string;->points_history_empty:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/transsion/member/R$string;->points_history_earn:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/member/history/c;

    invoke-direct {v0, p0}, Lcom/transsion/member/history/c;-><init>(Lcom/transsion/member/history/PointsHistoryFragment;)V

    invoke-virtual {v6, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    return-object v6
.end method

.method public retryLoadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/member/history/PointsHistoryFragment;->lazyLoadData()V

    return-void
.end method

.method public s0()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/member/R$string;->points_history_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
