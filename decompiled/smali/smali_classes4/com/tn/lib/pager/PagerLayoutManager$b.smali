.class public final Lcom/tn/lib/pager/PagerLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/pager/PagerLayoutManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/lib/pager/PagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/tn/lib/pager/PagerLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {p1}, Lcom/tn/lib/pager/PagerLayoutManager;->P(Lcom/tn/lib/pager/PagerLayoutManager;)Landroidx/recyclerview/widget/n;

    move-result-object p1

    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {v1}, Lcom/tn/lib/pager/PagerLayoutManager;->N(Lcom/tn/lib/pager/PagerLayoutManager;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p2, :cond_2

    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {v1}, Lcom/tn/lib/pager/PagerLayoutManager;->M(Lcom/tn/lib/pager/PagerLayoutManager;)I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {v1, p2}, Lcom/tn/lib/pager/PagerLayoutManager;->S(Lcom/tn/lib/pager/PagerLayoutManager;I)V

    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {v1, v0}, Lcom/tn/lib/pager/PagerLayoutManager;->Q(Lcom/tn/lib/pager/PagerLayoutManager;I)V

    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {v1}, Lcom/tn/lib/pager/PagerLayoutManager;->O(Lcom/tn/lib/pager/PagerLayoutManager;)Lch/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v0, v4, p1}, Lch/a;->a(IZLandroid/view/View;)V

    :cond_2
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {p2, v0}, Lcom/tn/lib/pager/PagerLayoutManager;->R(Lcom/tn/lib/pager/PagerLayoutManager;I)V

    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-static {p2}, Lcom/tn/lib/pager/PagerLayoutManager;->O(Lcom/tn/lib/pager/PagerLayoutManager;)Lch/a;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p2, v0, v2, p1}, Lch/a;->d(IZLandroid/view/View;)V

    :cond_4
    return-void
.end method
