.class public final Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingListManager;->F(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->i(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->E(I)V

    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->E(I)V

    :cond_4
    if-nez p2, :cond_6

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->m(Lcom/transsion/ad/bidding/nativead/BiddingListManager;Z)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->t()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->f(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)I

    move-result p2

    if-lt p1, p2, :cond_5

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->s()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->k(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->t()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->f(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)I

    move-result p2

    if-lt p1, p2, :cond_7

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->t()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->s()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->g(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)I

    move-result p2

    if-lt p1, p2, :cond_7

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->k(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$a;->a:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->m(Lcom/transsion/ad/bidding/nativead/BiddingListManager;Z)V

    :cond_7
    :goto_1
    return-void
.end method
