.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;,
        Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/bean/OperateItem;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;)V
    .locals 1

    const-string v0, "banners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operateItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->b:I

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->e:I

    return-void
.end method

.method private final g(I)Lcom/transsion/home/bean/BannerData;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/BannerData;

    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->g(I)Lcom/transsion/home/bean/BannerData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->e:I

    return p1

    :cond_1
    iget p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->d:I

    return p1
.end method

.method public final h(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/BannerData;

    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v1, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->h(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void

    :cond_2
    instance-of v1, p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    invoke-virtual {p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->g(Lcom/transsion/home/bean/BannerData;I)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/home/R$layout;->item_sub_top_banner_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->e:I

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->b:I

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;-><init>(Landroid/view/View;ILcom/transsion/home/bean/OperateItem;)V

    :goto_0
    return-object p2
.end method
