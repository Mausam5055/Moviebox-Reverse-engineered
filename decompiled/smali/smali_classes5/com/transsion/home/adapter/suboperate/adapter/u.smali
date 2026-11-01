.class public final Lcom/transsion/home/adapter/suboperate/adapter/u;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/adapter/suboperate/provider/i;

.field private final d:Lcom/transsion/home/bean/OperateItem;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    const-string v0, "banners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operateItem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->b:I

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->c:Lcom/transsion/home/adapter/suboperate/provider/i;

    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->d:Lcom/transsion/home/bean/OperateItem;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->f:I

    return-void
.end method

.method private final h(I)Lcom/transsion/home/bean/BannerData;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/BannerData;

    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/u;->h(I)Lcom/transsion/home/bean/BannerData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->f:I

    return p1

    :cond_1
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->e:I

    return p1
.end method

.method public final i(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p2, v0

    invoke-virtual {p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/u;->getItemViewType(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->f:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    if-eqz v0, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    :cond_1
    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/u;->h(I)Lcom/transsion/home/bean/BannerData;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->i(Lcom/transsion/home/bean/BannerData;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;

    if-eqz v1, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/u;->h(I)Lcom/transsion/home/bean/BannerData;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->g(Lcom/transsion/home/bean/BannerData;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->f:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/home/R$layout;->item_sub_banner_ad:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/home/R$layout;->item_sub_view_pager:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->b:I

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->c:Lcom/transsion/home/adapter/suboperate/provider/i;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/u;->d:Lcom/transsion/home/bean/OperateItem;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;-><init>(Landroid/view/View;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->k()V

    :cond_2
    return-void
.end method
