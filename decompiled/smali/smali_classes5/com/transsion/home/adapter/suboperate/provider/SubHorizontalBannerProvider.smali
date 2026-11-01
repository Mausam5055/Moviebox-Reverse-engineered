.class public final Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field private final g:Ljava/util/Set;

.field private h:Landroid/os/Handler;

.field private i:Landroidx/viewpager2/widget/ViewPager2;

.field private j:I

.field private k:J

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Lkotlinx/coroutines/t1;

.field private o:Lcom/transsion/home/bean/OperateItem;

.field private p:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->g:Ljava/util/Set;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->j:I

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/x;

    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/suboperate/provider/x;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->l:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Lcom/transsion/home/bean/OperateItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->o:Lcom/transsion/home/bean/OperateItem;

    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lcom/transsion/home/bean/OperateItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->L(Lcom/transsion/home/bean/OperateItem;I)V

    return-void
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->j:I

    return-void
.end method

.method private final H()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final J(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final K()V
    .locals 7

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->n:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final L(Lcom/transsion/home/bean/OperateItem;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/BannerData;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "event_type"

    const-string v3, "browse_banner"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "tabId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-static {v0, v1}, Lil/b;->c(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    :cond_3
    invoke-static {p1, v1}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    invoke-virtual {p2, v0}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final M(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p0, v2

    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rem-int/2addr v3, p0

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->H()V

    :cond_5
    :goto_0
    return-void
.end method

.method private final N()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->n:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->n:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->M(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V

    return-void
.end method

.method public static final synthetic z(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    return-wide v0
.end method


# virtual methods
.method public I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 10

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_horizontal_view_pager:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/transsion/home/R$id;->sub_operation_banner_bg:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->l:Landroid/view/View;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x42e00000    # 112.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    sub-int v6, v0, v1

    int-to-float v0, v6

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    const/16 v1, 0x10

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v0, Lcom/transsion/home/R$id;->sub_operation_view_scroll_helper:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/widget/OperateScrollableHost;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->h0()I

    move-result v0

    sget v2, Lcom/transsion/home/R$id;->sub_operation_banner_space:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->l:Landroid/view/View;

    if-nez p1, :cond_1

    const-string p1, "bgColorView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v8

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v8

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v8

    :cond_5
    new-instance v2, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v2}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v8

    :cond_6
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v8

    :cond_7
    new-instance v9, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iget v4, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    move-object v2, v9

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;-><init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;II)V

    invoke-virtual {v0, v9}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v8

    :cond_a
    new-instance v2, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;

    invoke-direct {v2, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_b
    move v0, v2

    :goto_0
    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_c

    goto :goto_1

    :cond_c
    iget-wide v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    :goto_1
    iput-wide v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->j:I

    if-ltz v0, :cond_d

    goto :goto_2

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const v0, 0x3fffffff    # 1.9999999f

    rem-int p1, v0, p1

    sub-int/2addr v0, p1

    :goto_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v8

    :cond_e
    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    move-object v8, p1

    :goto_3
    invoke-virtual {v8}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->o:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->HORIZONTAL_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_horizontal_banner:I

    return v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->K()V

    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->N()V

    return-void
.end method
