.class public final Lcom/transsion/home/adapter/operateUGC/provider/w;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private f:Lcom/transsion/home/bean/OperateItem;

.field private g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

.field private h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/operateUGC/provider/w;)Lcom/transsion/home/adapter/operateUGC/adapter/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->K(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/operateUGC/provider/w;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    return-void
.end method

.method private static final E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/operateUGC/provider/w;->J(Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private final F(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lig/f;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    new-instance v2, Lcom/transsion/home/adapter/operateUGC/adapter/d;

    iget v12, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object v9, v2

    move-object/from16 v11, p3

    invoke-direct/range {v9 .. v14}, Lcom/transsion/home/adapter/operateUGC/adapter/d;-><init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v2, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v2, Lcom/transsion/home/view/d;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/transsion/home/view/d;-><init>(I)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/r;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v3, Lcom/transsion/home/adapter/operateUGC/provider/w$a;

    move-object/from16 v4, p2

    invoke-direct {v3, v2, p0, v4}, Lcom/transsion/home/adapter/operateUGC/provider/w$a;-><init>(Lcom/transsion/home/view/d;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method private final G(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
    .locals 9

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

    if-nez v0, :cond_0

    new-instance v0, Lig/f;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/adapter/e;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/transsion/home/adapter/operateUGC/adapter/e;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/e;->C1(I)V

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_2
    iget-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    if-eqz p3, :cond_3

    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/v;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/v;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private static final H(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput p5, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    if-eqz p5, :cond_2

    iget-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p5}, Lcom/transsion/home/adapter/operateUGC/provider/w;->K(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    invoke-virtual {p1, p0}, Lcom/transsion/home/adapter/operateUGC/adapter/e;->C1(I)V

    :cond_3
    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private final I(Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "all"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final J(Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "all"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final K(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_1
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/operateUGC/provider/w;->H(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->f:Lcom/transsion/home/bean/OperateItem;

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_text:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_linear:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/u;

    invoke-direct {v1, p2, p0}, Lcom/transsion/home/adapter/operateUGC/provider/u;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_all:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_recycler:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_tab_recycler:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->F(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->G(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->I(Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_RANKING_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_rank_list:I

    return v0
.end method
