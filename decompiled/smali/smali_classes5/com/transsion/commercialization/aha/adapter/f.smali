.class public final Lcom/transsion/commercialization/aha/adapter/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljk/a;

.field private final f:I


# direct methods
.method public constructor <init>(Ljk/a;)V
    .locals 1

    const-string v0, "gameDotHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/aha/adapter/f;->e:Ljk/a;

    sget-object p1, Lcom/transsion/bean/GameLayoutType;->PEOPLE_PLAYING:Lcom/transsion/bean/GameLayoutType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/transsion/commercialization/aha/adapter/f;->f:I

    return-void
.end method

.method private static final A(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/bean/AhaGameAllGames;

    invoke-virtual {p2}, Lcom/transsion/bean/AhaGameAllGames;->getLink()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "/web/web"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "page_from"

    const-string v1, "game_center"

    invoke-virtual {p2, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/bean/AhaGameAllGames;

    iget-object p1, p1, Lcom/transsion/commercialization/aha/adapter/f;->e:Ljk/a;

    sget-object p2, Lcom/transsion/bean/GameLayoutType;->PEOPLE_PLAYING:Lcom/transsion/bean/GameLayoutType;

    invoke-virtual {p1, p0, p4, p2}, Ljk/a;->b(Lcom/transsion/bean/AhaGameAllGames;ILcom/transsion/bean/GameLayoutType;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/commercialization/aha/adapter/f;->A(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/bean/AhaGameAllGames;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/adapter/f;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/commercialization/aha/adapter/f;->f:I

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/commercialization/R$layout;->item_people_playing:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V
    .locals 5

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/bean/AhaGameAllGames;->getPeoplePlaying()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    sget v0, Lcom/transsion/commercialization/R$id;->people_playing_recycler_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-instance v0, Lig/b;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    invoke-direct {v0, v4, v3, v1, v1}, Lig/b;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_1
    new-instance v0, Lcom/transsion/commercialization/aha/adapter/d;

    invoke-direct {v0, p2}, Lcom/transsion/commercialization/aha/adapter/d;-><init>(Ljava/util/List;)V

    new-instance p2, Lcom/transsion/commercialization/aha/adapter/e;

    invoke-direct {p2, v0, p0}, Lcom/transsion/commercialization/aha/adapter/e;-><init>(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;)V

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method
