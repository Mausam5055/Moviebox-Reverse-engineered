.class public final Lcom/transsion/home/adapter/trending/provider/l0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/l0$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/home/adapter/trending/provider/l0$a;

.field public static final j:I


# instance fields
.field private final e:I

.field private final f:Z

.field private g:Lsj/b;

.field private final h:Lcom/transsion/home/adapter/trending/provider/l0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/trending/provider/l0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/l0;->i:Lcom/transsion/home/adapter/trending/provider/l0$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/adapter/trending/provider/l0;->j:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    iput-boolean p2, p0, Lcom/transsion/home/adapter/trending/provider/l0;->f:Z

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/l0$e;

    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/l0$e;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/l0;->h:Lcom/transsion/home/adapter/trending/provider/l0$e;

    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/home/adapter/trending/provider/l0;->P(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->J(Lcom/transsion/home/bean/OperateItem;Lrl/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/trending/provider/l0;)I
    .locals 0

    iget p0, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    return p0
.end method

.method private final E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "/rank/all"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "tabId"

    iget v2, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "defaultCategory"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "rankingListId"

    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAppPackageName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oneroom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?type="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final F(ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pos_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rank_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final H(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->M(Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method private final I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "opt_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "opt_type"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private final J(Lcom/transsion/home/bean/OperateItem;Lrl/j;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListData;->getRankingListId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lrl/j;->a()I

    move-result p2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-ltz p2, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-ltz p2, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p2, v1, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method private final K(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lrl/j;
    .locals 1

    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p2

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->F(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/home/adapter/trending/provider/l0;->h:Lcom/transsion/home/adapter/trending/provider/l0$e;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrl/j;

    if-nez p2, :cond_0

    new-instance p2, Lrl/j;

    invoke-direct {p2}, Lrl/j;-><init>()V

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/l0;->h:Lcom/transsion/home/adapter/trending/provider/l0$e;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method private final L(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V
    .locals 7

    new-instance v6, Lsj/b;

    new-instance v2, Lcom/transsion/home/adapter/trending/provider/l0$b;

    invoke-direct {v2, p2, p0, p3, p4}, Lcom/transsion/home/adapter/trending/provider/l0$b;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v1, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p2, 0x1

    invoke-virtual {v6, p2}, Lsj/b;->n(I)V

    sget-object p2, Lcom/transsion/baselib/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/baselib/exposure/ExposureType;

    invoke-virtual {v6, p2}, Lsj/b;->o(Lcom/transsion/baselib/exposure/ExposureType;)V

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iput-object v6, p0, Lcom/transsion/home/adapter/trending/provider/l0;->g:Lsj/b;

    return-void
.end method

.method private final N(Lrl/j;Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListData;->getRankingListId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lrl/j;->a()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-ltz p1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ltz p1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/rank/all"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "tabId"

    iget v2, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "defaultCategory"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "rankingListId"

    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-static {p1}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    :cond_4
    return-void
.end method

.method private final O(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lig/f;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    iget v13, v6, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    iget-boolean v15, v6, Lcom/transsion/home/adapter/trending/provider/l0;->f:Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v11, 0x0

    move-object v10, v0

    move-object/from16 v12, p2

    move v14, v5

    invoke-direct/range {v10 .. v17}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    new-instance v11, Lcom/transsion/home/adapter/trending/provider/k0;

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/adapter/trending/provider/k0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;Z)V

    invoke-virtual {v10, v11}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual/range {p3 .. p3}, Lrl/j;->a()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_4
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-ltz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_5
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    invoke-virtual {v8, v0, v7}, Lrl/j;->b(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/l0$c;

    invoke-direct {v0, v8, v7}, Lcom/transsion/home/adapter/trending/provider/l0$c;-><init>(Lrl/j;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    move-object/from16 v1, p2

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/transsion/home/adapter/trending/provider/l0;->L(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V

    return-void
.end method

.method private static final P(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    const-string v0, "<unused var>"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p5, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    invoke-virtual {p5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    if-lt p7, p6, :cond_1

    return-void

    :cond_1
    invoke-static {p5, p7}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez p5, :cond_2

    return-void

    :cond_2
    invoke-direct {p1, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object p6

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sequence"

    invoke-virtual {p6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/l0;->J(Lcom/transsion/home/bean/OperateItem;Lrl/j;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    invoke-virtual {v3, p7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v3

    const/16 v4, 0x64

    const-string v5, ""

    const-string v6, "deepkLink"

    if-ne v3, v4, :cond_4

    invoke-interface {p6, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "module_name"

    const-string p5, "more"

    invoke-interface {p6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Lhj/i;->a:Lhj/i;

    sget-object p5, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v3, p1, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {p5, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p6}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p1, p3, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->N(Lrl/j;Lcom/transsion/home/bean/OperateItem;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    move-object p3, v5

    :cond_5
    const-string v3, "subject_id"

    invoke-interface {p6, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p6, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_7

    :cond_6
    move-object p3, v5

    :cond_7
    const-string v3, "subject_type"

    invoke-interface {p6, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "has_resource"

    invoke-interface {p6, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lhj/i;->a:Lhj/i;

    sget-object v3, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v7, p1, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v3, v7}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, p6}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p1, p5, p7, p2, p4}, Lcom/transsion/home/adapter/trending/provider/l0;->S(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;Z)V

    :goto_1
    invoke-direct {p1, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-interface {p4, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    invoke-virtual {p0, p7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p0

    if-ne p0, v4, :cond_9

    invoke-virtual {p6, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    move-object v0, v5

    :cond_9
    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lhj/i;->a:Lhj/i;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p1, p1, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {p2, p1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final Q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V
    .locals 14

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/home/adapter/suboperate/adapter/a;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/a;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/a;

    iget v1, v9, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/a;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    move-object v12, v0

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :goto_3
    invoke-virtual/range {p4 .. p4}, Lrl/j;->a()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-ltz v0, :cond_4

    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v2}, Lrl/j;->f(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v3

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getRankingListId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_6

    :cond_6
    move-object v6, v3

    :goto_6
    move-object v0, v4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object v7

    const-string v13, "sequence"

    invoke-virtual {v7, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "deepkLink"

    invoke-direct {p0, v3, v6}, Lcom/transsion/home/adapter/trending/provider/l0;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    const-string v3, "module_name"

    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v9, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tabId"

    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    sget-object v3, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v13, v9, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v3, v13}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    :cond_8
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v12, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    invoke-virtual {v12, v2}, Lcom/transsion/home/adapter/suboperate/adapter/a;->D1(I)V

    new-instance v13, Lcom/transsion/home/adapter/trending/provider/j0;

    move-object v0, v13

    move-object v1, p1

    move-object v2, v4

    move-object v3, p0

    move-object v4, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/home/adapter/trending/provider/j0;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/l0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lrl/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {v11, p1}, Lrl/j;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/l0$d;

    invoke-direct {v0, v11, p1}, Lcom/transsion/home/adapter/trending/provider/l0$d;-><init>(Lrl/j;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method private static final R(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/l0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lrl/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p10

    const-string v7, "<unused var>"

    move-object/from16 v8, p8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p9

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    instance-of v8, v7, Lcom/transsion/home/adapter/suboperate/adapter/a;

    if-eqz v8, :cond_0

    check-cast v7, Lcom/transsion/home/adapter/suboperate/adapter/a;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/transsion/home/adapter/suboperate/adapter/a;->C1()I

    move-result v8

    if-ltz v6, :cond_3

    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {v10}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p3

    invoke-direct {v1, v11, v12}, Lcom/transsion/home/adapter/trending/provider/l0;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v2}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "sequence"

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "deepkLink"

    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/transsion/home/bean/RankingListItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    const-string v15, "module_name"

    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v1, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v15, "tabId"

    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lhj/i;->a:Lhj/i;

    sget-object v15, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v9, v1, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v15, v9}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v12}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v1, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v15, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    if-ne v6, v8, :cond_4

    return-void

    :cond_4
    invoke-virtual {v3, v8, v4}, Lrl/j;->d(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v3, v6}, Lrl/j;->f(I)V

    invoke-virtual {v7, v6}, Lcom/transsion/home/adapter/suboperate/adapter/a;->D1(I)V

    if-ltz v6, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v6, v1, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    if-eqz v2, :cond_6

    move-object v9, v1

    check-cast v9, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_7

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_7
    invoke-virtual {v3, v6, v4}, Lrl/j;->b(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_8
    return-void
.end method

.method private final S(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;Z)V
    .locals 0

    const-string p2, "ranking_list_multi_tab"

    invoke-static {p1, p2}, Lrl/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/l0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lrl/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/transsion/home/adapter/trending/provider/l0;->R(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/l0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lrl/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->H(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->tvModuleTitle:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/home/R$id;->tvRankMore:I

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

    new-instance v2, Lcom/transsion/home/adapter/trending/provider/i0;

    invoke-direct {v2, p0, p2}, Lcom/transsion/home/adapter/trending/provider/i0;-><init>(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    :goto_1
    sget v0, Lcom/transsion/home/R$id;->rvTabList:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/transsion/home/R$id;->rvContentList:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->K(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lrl/j;

    move-result-object p1

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->Q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V

    invoke-direct {p0, v1, p2, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->O(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V

    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sequence"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    const-string v0, "deepkLink"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final M(Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/l0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sequence"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const-string v1, "deepkLink"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "all"

    const-string v1, "module_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v3, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v2, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/l0;->e:I

    invoke-virtual {v2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/l0;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->RANKING_LIST_MULTI_TAB:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->home_item_new_style_ranking:I

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "StateAwareRankListProvider"

    const-string v3, "onViewAttachedToWindow"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "StateAwareRankListProvider"

    const-string v3, "onViewDetachedFromWindow"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/adapter/trending/provider/l0;->g:Lsj/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsj/b;->f()V

    :cond_0
    return-void
.end method
