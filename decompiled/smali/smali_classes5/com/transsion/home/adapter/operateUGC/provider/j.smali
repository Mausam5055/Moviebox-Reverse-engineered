.class public final Lcom/transsion/home/adapter/operateUGC/provider/j;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/provider/j$a;
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/Integer;

.field private final f:Z

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->e:Ljava/lang/Integer;

    iput-boolean p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->f:Z

    new-instance p1, Lcom/transsion/home/adapter/operateUGC/provider/h;

    invoke-direct {p1}, Lcom/transsion/home/adapter/operateUGC/provider/h;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->g:Lkotlin/Lazy;

    return-void
.end method

.method private static final A()Lcom/transsion/home/adapter/operateUGC/provider/j$b;
    .locals 1

    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    invoke-direct {v0}, Lcom/transsion/home/adapter/operateUGC/provider/j$b;-><init>()V

    return-object v0
.end method

.method private final B()Lcom/transsion/home/adapter/operateUGC/provider/j$b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    return-object v0
.end method

.method public static synthetic y()Lcom/transsion/home/adapter/operateUGC/provider/j$b;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/operateUGC/provider/j;->A()Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/j;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_FILTER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_filter:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 6

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFilters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "itemView"

    if-eqz v1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    sget v1, Lcom/transsion/home/R$id;->sub_operation_filter_title:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/home/R$id;->sub_operation_filter_recycler:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lig/b;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    invoke-direct {v1, v2, v3, v5, v4}, Lig/b;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/j;->B()Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/j;->B()Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_6
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/j$a;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->e:Ljava/lang/Integer;

    invoke-direct {v1, v2, p2}, Lcom/transsion/home/adapter/operateUGC/provider/j$a;-><init>(Ljava/lang/Integer;Lcom/transsion/home/bean/OperateItem;)V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
