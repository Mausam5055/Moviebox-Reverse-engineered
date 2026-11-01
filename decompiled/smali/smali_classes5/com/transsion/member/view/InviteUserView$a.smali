.class public final Lcom/transsion/member/view/InviteUserView$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/InviteUserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p3}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreEnable$p(Lcom/transsion/member/view/InviteUserView;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p3}, Lcom/transsion/member/view/InviteUserView;->access$isLoadMoreLoading$p(Lcom/transsion/member/view/InviteUserView;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p3, p2}, Lcom/transsion/member/view/InviteUserView;->access$setLoadMoreLoading$p(Lcom/transsion/member/view/InviteUserView;Z)V

    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$getViewBinder$p(Lcom/transsion/member/view/InviteUserView;)Lcom/transsion/member/view/InviteUserView$c;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/member/view/InviteUserView$c;->a()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p2, p1, Lcom/transsion/member/view/InviteUserView$e;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/transsion/member/view/InviteUserView$e;

    invoke-virtual {p2}, Lcom/transsion/member/view/InviteUserView$e;->f()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    return-void
.end method
