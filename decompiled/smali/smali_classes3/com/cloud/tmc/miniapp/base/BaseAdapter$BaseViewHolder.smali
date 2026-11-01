.class public abstract Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseViewHolder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/base/BaseAdapter<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "from(getContext()).infla\u2026(id, recyclerView, false)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewHolderPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getPositionOffset$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public abstract onBindView(I)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getViewHolderPosition()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;->onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getViewHolderPosition()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getItemView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-interface {v2, v1, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;->onChildLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
