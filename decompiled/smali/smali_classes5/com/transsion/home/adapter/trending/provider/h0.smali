.class public final Lcom/transsion/home/adapter/trending/provider/h0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/h0;->e:I

    iput-boolean p2, p0, Lcom/transsion/home/adapter/trending/provider/h0;->f:Z

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/g0;

    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/g0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/h0;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A(Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/trending/provider/h0;->H(Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/h0;->E(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/h0;->F(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method

.method private static final E(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/h0;->L(Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private static final F(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/h0;->L(Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private static final G(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;Ljava/util/List;)V
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    return-void
.end method

.method private static final H(Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/home/bean/LiveListItem;

    if-eqz p0, :cond_0

    invoke-direct {p1, p0, p2, p5}, Lcom/transsion/home/adapter/trending/provider/h0;->K(Lcom/transsion/home/bean/LiveListItem;Lcom/transsion/home/bean/OperateItem;I)V

    :cond_0
    return-void
.end method

.method private static final I()Lcom/transsion/home/adapter/trending/provider/h0$b;
    .locals 1

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/h0$b;

    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/provider/h0$b;-><init>()V

    return-object v0
.end method

.method private final J()Lcom/transsion/home/adapter/trending/provider/h0$b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/h0;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/adapter/trending/provider/h0$b;

    return-object v0
.end method

.method private final K(Lcom/transsion/home/bean/LiveListItem;Lcom/transsion/home/bean/OperateItem;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "click_sport_live_item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p3, p0, Lcom/transsion/home/adapter/trending/provider/h0;->e:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "tabId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    if-nez p2, :cond_1

    move-object p2, p3

    :cond_1
    const-string v1, "opt_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getMatchId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, p3

    :cond_2
    const-string v1, "match_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    move-object p2, p3

    :cond_3
    const-string v1, "match_status"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object p3, p1

    :goto_0
    const-string p1, "ops"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/trending/provider/h0;->e:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final L(Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "event_type"

    const-string v3, "click_sport_live_more"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sequence"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    const-string v2, "deepLink"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/h0;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_MORE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "opt_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v2, p0, Lcom/transsion/home/adapter/trending/provider/h0;->e:I

    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/trending/provider/h0;->G(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic z()Lcom/transsion/home/adapter/trending/provider/h0$b;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/h0;->I()Lcom/transsion/home/adapter/trending/provider/h0$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->main_operation_sport_live_title:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/home/R$id;->main_operation_sport_more_text:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    new-instance v2, Lcom/transsion/home/adapter/trending/provider/c0;

    invoke-direct {v2, p0, p2}, Lcom/transsion/home/adapter/trending/provider/c0;-><init>(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/d0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/trending/provider/d0;-><init>(Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    :goto_1
    sget v0, Lcom/transsion/home/R$id;->main_operation_sport_live_recycler:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;

    iget v3, p0, Lcom/transsion/home/adapter/trending/provider/h0;->e:I

    iget-boolean v4, p0, Lcom/transsion/home/adapter/trending/provider/h0;->f:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/h0$a;

    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/provider/h0$a;-><init>()V

    invoke-virtual {v7, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lig/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/h0;->J()Lcom/transsion/home/adapter/trending/provider/h0$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/h0;->J()Lcom/transsion/home/adapter/trending/provider/h0$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getLiveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/home/bean/LiveListItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MatchEnded"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/e0;

    invoke-direct {v0, v7, v1}, Lcom/transsion/home/adapter/trending/provider/e0;-><init>(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/f0;

    invoke-direct {p1, v1, p0, p2}, Lcom/transsion/home/adapter/trending/provider/f0;-><init>(Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/h0;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v7, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/h0;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SPORT_LIVE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->post_list_item_sport_live:I

    return v0
.end method
