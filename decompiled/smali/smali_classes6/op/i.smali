.class public final Lop/i;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lop/b;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lop/i;->a:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lop/i;->c:Ljava/util/Map;

    sget v1, Lcom/transsion/publish/R$drawable;->ic_film_photos:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$string;->photo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lop/i;->c:Ljava/util/Map;

    sget v1, Lcom/transsion/publish/R$drawable;->ic_film_videos:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$string;->video:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lop/i;->c:Ljava/util/Map;

    sget v1, Lcom/transsion/publish/R$drawable;->ic_film_audio:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$string;->audio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lop/i;->c:Ljava/util/Map;

    sget v1, Lcom/transsion/publish/R$drawable;->ic_film_work:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$string;->mention_a_specific_movie_audio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lop/i;->c:Ljava/util/Map;

    sget v1, Lcom/transsion/publish/R$drawable;->ic_film_link:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$string;->add_a_link:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic g(Lop/i;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lop/i;->j(Lop/i;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V

    return-void
.end method

.method private static final j(Lop/i;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lop/i;->b:Lop/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lop/b;->a(Lcom/transsion/publish/view/operation/OperationBean;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lop/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lop/i;->a:Ljava/util/List;

    return-object v0
.end method

.method public i(Lop/g;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lop/i;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/publish/view/operation/OperationBean;

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lop/g;->g()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getEnable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lop/g;->f()Lcom/tn/lib/widget/TnTextView;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$color;->color_ff333333:I

    invoke-static {v2}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lop/g;->g()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getDisable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lop/g;->f()Lcom/tn/lib/widget/TnTextView;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$color;->color_ff999999:I

    invoke-static {v2}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p1}, Lop/g;->f()Lcom/tn/lib/widget/TnTextView;

    move-result-object v1

    iget-object v2, p0, Lop/i;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBean;->getEnable()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    invoke-virtual {p1}, Lop/g;->h()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lop/h;

    invoke-direct {v1, p0, v0, p2}, Lop/h;-><init>(Lop/i;Lcom/transsion/publish/view/operation/OperationBean;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lop/g;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_operation_vertical_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lop/g;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lop/g;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final l(Lop/b;)V
    .locals 1

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lop/i;->b:Lop/b;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lop/g;

    invoke-virtual {p0, p1, p2}, Lop/i;->i(Lop/g;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lop/i;->k(Landroid/view/ViewGroup;I)Lop/g;

    move-result-object p1

    return-object p1
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lop/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lop/i;->a:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
