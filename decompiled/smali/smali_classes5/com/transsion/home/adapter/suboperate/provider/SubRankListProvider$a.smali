.class public final Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->H(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/n;

.field final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/n;Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->a:Landroidx/recyclerview/widget/n;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->a:Landroidx/recyclerview/widget/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    invoke-static {p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->C(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/adapter/suboperate/adapter/r;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/r;->C1(I)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    invoke-static {p2, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;I)V

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    invoke-static {p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->C(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/adapter/suboperate/adapter/r;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->D(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_3
    return-void
.end method
