.class public final Lcom/chad/library/adapter/base/BaseQuickAdapter$c;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView$m;

.field final synthetic g:Landroidx/recyclerview/widget/GridLayoutManager$c;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView$m;Landroidx/recyclerview/widget/GridLayoutManager$c;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->f:Landroidx/recyclerview/widget/RecyclerView$m;

    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x10000111

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->b0()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const v1, 0x10000333

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->j(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lp6/a;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->e:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->u0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->f:Landroidx/recyclerview/widget/RecyclerView$m;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$c;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result p1

    :goto_0
    return p1
.end method
