.class public final Lcom/transsion/postdetail/test/TestActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/test/TestActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/transsion/postdetail/test/TestActivity;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/test/TestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_6

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/test/TestActivity$b;->a:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/test/TestActivity$b;->b:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    invoke-static {v1}, Lcom/transsion/postdetail/test/TestActivity;->T(Lcom/transsion/postdetail/test/TestActivity;)Lqn/a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lqn/a;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-lt v1, p2, :cond_2

    if-le v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v3

    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    invoke-static {v0}, Lcom/transsion/postdetail/test/TestActivity;->R(Lcom/transsion/postdetail/test/TestActivity;)Lcom/transsion/postdetail/test/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    if-eqz p2, :cond_5

    if-ltz p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result p2

    add-int/lit8 v2, p2, -0x1

    :goto_3
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p1

    iget-object p3, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    invoke-static {p3}, Lcom/transsion/postdetail/test/TestActivity;->R(Lcom/transsion/postdetail/test/TestActivity;)Lcom/transsion/postdetail/test/a;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    :goto_4
    iget-object v0, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    invoke-static {v0}, Lcom/transsion/postdetail/test/TestActivity;->T(Lcom/transsion/postdetail/test/TestActivity;)Lqn/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p3, p2, p1}, Lqn/a;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;I)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported layoutManager."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
