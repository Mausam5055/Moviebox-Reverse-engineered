.class public final Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lcom/transsion/home/bean/OperateItem;

.field private h:Lcom/transsion/home/adapter/suboperate/adapter/q;

.field private i:Lcom/transsion/home/adapter/suboperate/adapter/r;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->e:I

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/adapter/suboperate/adapter/q;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/q;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/bean/OperateItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->g:Lcom/transsion/home/bean/OperateItem;

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/adapter/suboperate/adapter/r;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/r;

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->L(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    return-void
.end method

.method private static final G(Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final H(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
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
    new-instance v2, Lcom/transsion/home/adapter/suboperate/adapter/q;

    iget v12, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->e:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object v9, v2

    move-object/from16 v11, p3

    invoke-direct/range {v9 .. v14}, Lcom/transsion/home/adapter/suboperate/adapter/q;-><init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/q;

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

    iget-object v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/q;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v2, Landroidx/recyclerview/widget/n;

    invoke-direct {v2}, Landroidx/recyclerview/widget/n;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/r;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v3, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;

    move-object/from16 v4, p2

    invoke-direct {v3, v2, p0, v4}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;-><init>(Landroidx/recyclerview/widget/n;Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method private final I(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
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
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/r;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/transsion/home/adapter/suboperate/adapter/r;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/r;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/r;->C1(I)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/r;

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
    iget-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/r;

    if-eqz p3, :cond_3

    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/m0;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/home/adapter/suboperate/provider/m0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/r;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private static final J(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput p5, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    if-eqz p5, :cond_2

    iget-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/q;

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
    invoke-direct {p0, p1, p5}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->L(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/r;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    invoke-virtual {p1, p0}, Lcom/transsion/home/adapter/suboperate/adapter/r;->C1(I)V

    :cond_3
    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private final K()V
    .locals 7

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->e:I

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

    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->f:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final L(Landroidx/recyclerview/widget/RecyclerView;I)V
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

.method private final M()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->f:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->f:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->J(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->G(Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->g:Lcom/transsion/home/bean/OperateItem;

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_text:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_linear:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/l0;

    invoke-direct {v1, p2}, Lcom/transsion/home/adapter/suboperate/provider/l0;-><init>(Lcom/transsion/home/bean/OperateItem;)V

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

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->H(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->I(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->RANKING_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_rank_list:I

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->K()V

    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->M()V

    return-void
.end method
