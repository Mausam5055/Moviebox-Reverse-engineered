.class public abstract Lbp/q;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lbp/q;->e:Ljava/lang/String;

    iput-object p2, p0, Lbp/q;->f:Ljava/lang/String;

    iput-object p3, p0, Lbp/q;->g:Landroidx/recyclerview/widget/RecyclerView$s;

    return-void
.end method

.method private static final C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/q;)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p1, Lbp/q;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object p1, p1, Lbp/q;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final D(Lbp/q;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->C0(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final E(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->refreshLike(ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/q;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lbp/q;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/q;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lbp/q;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lbp/q;->D(Lbp/q;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbp/q;->e:Ljava/lang/String;

    iget-object v1, p0, Lbp/q;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPage(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lbp/o;

    invoke-direct {v0, p2, p0}, Lbp/o;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/q;)V

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setOnNegativeFeedbackClick(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    iget-object v0, p0, Lbp/q;->g:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    new-instance v0, Lbp/p;

    invoke-direct {v0, p0, p2}, Lbp/p;-><init>(Lbp/q;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setOnNegativeFeedbackSuccess(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/util/List;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_5

    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lbp/q;->E(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lbp/q;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2, p3}, Lbp/q;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/util/List;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
