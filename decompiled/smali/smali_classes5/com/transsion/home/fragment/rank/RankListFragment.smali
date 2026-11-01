.class public final Lcom/transsion/home/fragment/rank/RankListFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/rank/RankListFragment$a;,
        Lcom/transsion/home/fragment/rank/RankListFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lgl/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002!\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR$\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/home/fragment/rank/RankListFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lgl/v;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "e0",
        "(Landroid/view/LayoutInflater;)Lgl/v;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Lcom/transsion/home/bean/RankAllData;",
        "data",
        "k0",
        "(Lcom/transsion/home/bean/RankAllData;)V",
        "errorView",
        "j0",
        "(Landroid/view/View;)V",
        "startLoading",
        "hideLoading",
        "Lcom/transsion/home/viewmodel/RankAllViewModel;",
        "a",
        "Lcom/transsion/home/viewmodel/RankAllViewModel;",
        "viewModel",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "b",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "mMainAdapter",
        "Landroid/widget/TextView;",
        "c",
        "Landroid/widget/TextView;",
        "headerView",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/home/viewmodel/RankAllViewModel;

.field private b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->h0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/fragment/rank/RankListFragment;->g0(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/fragment/rank/RankListFragment;->f0(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    return-void
.end method

.method public static synthetic d0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->i0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V

    return-void
.end method

.method private static final f0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 4

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->a:Lcom/transsion/home/viewmodel/RankAllViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->l()V

    goto :goto_0

    :cond_0
    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgl/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/home/fragment/rank/m;

    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/rank/m;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final g0(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private static final h0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lr6/f;->v()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getSubjects()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/v;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lgl/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/home/fragment/rank/l;

    invoke-direct {v1, p0, p1}, Lcom/transsion/home/fragment/rank/l;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final i0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->r()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->s()V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-static {p0, v0, v1, p1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public e0(Landroid/view/LayoutInflater;)Lgl/v;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/lifecycle/v0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/transsion/home/viewmodel/RankAllViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/viewmodel/RankAllViewModel;

    iput-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->a:Lcom/transsion/home/viewmodel/RankAllViewModel;

    :cond_0
    invoke-static {p1}, Lgl/v;->c(Landroid/view/LayoutInflater;)Lgl/v;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->e0(Landroid/view/LayoutInflater;)Lgl/v;

    move-result-object p1

    return-object p1
.end method

.method public hideLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/v;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->h(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "tabId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/transsion/home/fragment/rank/RankListFragment$a;

    invoke-direct {p1}, Lcom/transsion/home/fragment/rank/RankListFragment$a;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/transsion/home/fragment/rank/RankListFragment$b;

    invoke-direct {p1}, Lcom/transsion/home/fragment/rank/RankListFragment$b;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/v;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lgl/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lig/f;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_2
    return-void
.end method

.method public final j0(Landroid/view/View;)V
    .locals 2

    const-string v0, "errorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final k0(Lcom/transsion/home/bean/RankAllData;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getSubjects()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v7

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    invoke-virtual {v0, v5, v7, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsion/usercenter/R$color;->pair_text_191F2B:I

    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Lil/a;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v4, "ans-serif"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v4, :cond_3

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    :cond_3
    iput-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->c:Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_4

    :cond_7
    move p1, v3

    :goto_4
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Lr6/f;->z(Z)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Lr6/f;->y(Z)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p1, v3, v2, v1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/v;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lgl/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_b
    return-void
.end method

.method public lazyLoadData()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/home/fragment/rank/j;

    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/rank/j;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    invoke-virtual {v0, v1}, Lr6/f;->D(Lp6/f;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankListFragment;->a:Lcom/transsion/home/viewmodel/RankAllViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/home/fragment/rank/k;

    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/rank/k;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V

    new-instance v2, Lcom/transsion/home/fragment/rank/RankListFragment$c;

    invoke-direct {v2, v1}, Lcom/transsion/home/fragment/rank/RankListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_1
    return-void
.end method

.method public startLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/v;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method
