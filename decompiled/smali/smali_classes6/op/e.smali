.class public final Lop/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lop/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lop/e;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Lop/e;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lop/e;->j(Lop/e;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V

    return-void
.end method

.method private static final j(Lop/e;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lop/e;->b:Lop/a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lop/a;->a(Lcom/transsion/publish/view/operation/OperationBean;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lop/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lop/e;->a:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lop/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lop/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public i(Lop/f;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lop/e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/publish/view/operation/OperationBean;

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lop/f;->f()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getEnable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lop/f;->f()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getDisable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p1}, Lop/f;->g()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lop/d;

    invoke-direct {v1, p0, v0, p2}, Lop/d;-><init>(Lop/e;Lcom/transsion/publish/view/operation/OperationBean;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lop/f;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_operation_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lop/f;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lop/f;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final l(Lop/a;)V
    .locals 1

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lop/e;->b:Lop/a;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lop/f;

    invoke-virtual {p0, p1, p2}, Lop/e;->i(Lop/f;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lop/e;->k(Landroid/view/ViewGroup;I)Lop/f;

    move-result-object p1

    return-object p1
.end method
