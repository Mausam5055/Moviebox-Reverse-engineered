.class public final Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/base/pager/PagerLayoutManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {p1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->P(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)Landroidx/recyclerview/widget/n;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->N(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p2, :cond_2

    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->M(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {v1, p2}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->S(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;I)V

    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {v1, v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->Q(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;I)V

    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->O(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)Lcs/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v0, v4, p1}, Lcs/a;->c(IZLandroid/view/View;)V

    :cond_2
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {p2, v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->R(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;I)V

    iget-object p2, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-static {p2}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->O(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)Lcs/a;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$b;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p2, v0, v2, p1}, Lcs/a;->f(IZLandroid/view/View;)V

    :cond_4
    return-void
.end method
