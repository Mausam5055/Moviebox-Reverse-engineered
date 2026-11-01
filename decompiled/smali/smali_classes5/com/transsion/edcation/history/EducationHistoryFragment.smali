.class public final Lcom/transsion/edcation/history/EducationHistoryFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lvk/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/edcation/history/EducationHistoryFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lvk/b;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "j0",
        "()Landroid/view/View;",
        "",
        "isRefresh",
        "",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "i0",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "m0",
        "(Landroid/view/LayoutInflater;)Lvk/b;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "onResume",
        "Lcom/transsion/edcation/history/EducationHistoryAdapter;",
        "a",
        "Lcom/transsion/edcation/history/EducationHistoryAdapter;",
        "mAdapter",
        "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "b",
        "Lkotlin/Lazy;",
        "l0",
        "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;",
        "mVideoDetailPlayDao",
        "",
        "c",
        "I",
        "mOffset",
        "d",
        "mLimit",
        "Education_psRelease"
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
.field private a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

.field private final b:Lkotlin/Lazy;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/edcation/history/c;

    invoke-direct {v0}, Lcom/transsion/edcation/history/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->b:Lkotlin/Lazy;

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->d:I

    return-void
.end method

.method public static synthetic a0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/edcation/history/EducationHistoryFragment;->o0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b0(Lcom/transsion/edcation/history/EducationHistoryFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->n0(Lcom/transsion/edcation/history/EducationHistoryFragment;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->k0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcom/transsion/edcation/history/EducationHistoryFragment;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment;->i0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->j0()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/transsion/edcation/history/EducationHistoryFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->d:I

    return p0
.end method

.method public static final synthetic h0(Lcom/transsion/edcation/history/EducationHistoryFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->c:I

    return p0
.end method

.method private final i0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;

    iget v1, v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->c:I

    :cond_3
    invoke-direct {p0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->l0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p1

    iget p2, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->c:I

    iget v2, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->d:I

    sget-object v5, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v5

    iput v4, v0, Lcom/transsion/edcation/history/EducationHistoryFragment$fetchHistory$1;->label:I

    invoke-interface {p1, p2, v2, v5, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->i(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    iget p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->c:I

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :cond_5
    add-int/2addr p1, v3

    iput p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->c:I

    if-nez p2, :cond_6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    return-object p2
.end method

.method private final j0()Landroid/view/View;
    .locals 8

    new-instance v6, Lcom/tn/lib/view/StateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/transsion/edcation/R$string;->course_list_empy:I

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

    sget v0, Lcom/transsion/edcation/R$string;->course_explore_now:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/edcation/history/d;

    invoke-direct {v0, p0}, Lcom/transsion/edcation/history/d;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;)V

    invoke-virtual {v6, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    return-object v6
.end method

.method private static final k0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lkotlin/Unit;
    .locals 3

    const-string v0, "/main/tab"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "bottomTab"

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "topTab"

    const-string v2, "Education"

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final l0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private static final n0(Lcom/transsion/edcation/history/EducationHistoryFragment;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/edcation/history/EducationHistoryFragment$initView$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/edcation/history/EducationHistoryFragment$initView$1$1$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final o0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->m0(Landroid/view/LayoutInflater;)Lvk/b;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lvk/b;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lvk/b;->b:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_1
    new-instance p2, Lcom/transsion/edcation/history/EducationHistoryAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v0}, Lcom/transsion/edcation/history/EducationHistoryAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment;->a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lr6/f;->z(Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p2

    invoke-virtual {p2, v0}, Lr6/f;->z(Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p2

    invoke-virtual {p2, v0}, Lr6/f;->y(Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    new-instance p2, Lcom/transsion/edcation/history/e;

    invoke-direct {p2, p0}, Lcom/transsion/edcation/history/e;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;)V

    invoke-virtual {p1, p2}, Lr6/f;->D(Lp6/f;)V

    :cond_3
    return-void
.end method

.method public lazyLoadData()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/edcation/history/EducationHistoryFragment$lazyLoadData$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/edcation/history/EducationHistoryFragment$lazyLoadData$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;)Lvk/b;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lvk/b;->c(Landroid/view/LayoutInflater;)Lvk/b;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
