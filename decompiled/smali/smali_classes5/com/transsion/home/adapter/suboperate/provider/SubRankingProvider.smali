.class public final Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lcom/transsion/home/bean/OperateItem;

.field private h:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->h:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)Lcom/transsion/home/bean/OperateItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->g:Lcom/transsion/home/bean/OperateItem;

    return-object p0
.end method

.method private final D()V
    .locals 7

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$registerCourse$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->f:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final E(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "browse_ranking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tabId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lil/b;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    :cond_0
    invoke-static {p3, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final F(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "click_ranking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tabId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lil/b;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    :cond_0
    invoke-static {p3, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final G(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/n0;

    invoke-direct {v0, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/n0;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/adapter/t;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/t;

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/o0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/o0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/t;->F1(Lkotlin/jvm/functions/Function2;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->h:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->g:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method

.method private static final H(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "op_ranking"

    invoke-static {p2, p3}, Lrl/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    invoke-direct {p1, p2, p4, p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->F(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private static final I(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;
    .locals 1

    const-string v0, "subject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->E(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final J()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->f:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->f:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->H(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->I(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranking_title:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranking_recycler:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    new-instance v2, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$a;

    invoke-direct {v2, v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$a;-><init>(II)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingData()Lcom/transsion/home/bean/RankingData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/home/bean/RankingData;->getPerRow()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    new-instance v2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v5}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v2, Lcom/transsion/home/adapter/suboperate/adapter/t;

    iget v5, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    invoke-direct {v2, v1, v5, v4, v3}, Lcom/transsion/home/adapter/suboperate/adapter/t;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    rem-int/lit8 v3, v0, 0x2

    sub-int/2addr v0, v3

    invoke-interface {v4, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :cond_3
    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    rem-int/lit8 v3, v0, 0x3

    sub-int/2addr v0, v3

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :cond_5
    new-instance v2, Lcom/transsion/home/view/RankingAdapter;

    if-eqz v3, :cond_6

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-direct {v2, v0}, Lcom/transsion/home/view/RankingAdapter;-><init>(Ljava/util/List;)V

    :goto_2
    invoke-direct {p0, v2, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->G(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->OP_RANKING:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_ranking:I

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->D()V

    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->J()V

    return-void
.end method
