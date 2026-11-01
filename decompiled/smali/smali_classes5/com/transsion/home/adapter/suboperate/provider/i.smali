.class public final Lcom/transsion/home/adapter/suboperate/provider/i;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field private final g:Ljava/util/Set;

.field private h:Landroid/os/Handler;

.field private i:Landroidx/viewpager2/widget/ViewPager2;

.field private j:Landroidx/viewpager2/widget/ViewPager2;

.field private k:Lcom/transsion/baseui/recycler/InterceptView;

.field private l:I

.field private m:J

.field private n:Z

.field private o:Lcom/transsion/home/adapter/suboperate/adapter/u;

.field private p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

.field private q:Lcom/transsion/home/adapter/suboperate/adapter/u;

.field private final r:Ljava/lang/Runnable;


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

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->e:I

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->g:Ljava/util/Set;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->U()V

    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/e;

    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/suboperate/provider/e;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->Z(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->V(Lcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->Y(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/suboperate/provider/i;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    return-wide v0
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/i;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->Q()I

    move-result p0

    return p0
.end method

.method public static final synthetic F(Lcom/transsion/home/adapter/suboperate/provider/i;)I
    .locals 0

    iget p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    return p0
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/suboperate/provider/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic H(Lcom/transsion/home/adapter/suboperate/provider/i;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic I(Lcom/transsion/home/adapter/suboperate/provider/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->W(I)V

    return-void
.end method

.method public static final synthetic J(Lcom/transsion/home/adapter/suboperate/provider/i;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/i;->a0(IZ)V

    return-void
.end method

.method public static final synthetic K(Lcom/transsion/home/adapter/suboperate/provider/i;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    return-void
.end method

.method private final L(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    invoke-virtual {v1}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->m()Z

    move-result v1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/transsion/home/bean/BannerData;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-nez v1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/home/bean/BannerData;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    if-nez v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_7
    sget-object p1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/h;

    invoke-direct {v1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->k(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private static final M(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;I)Lkotlin/Unit;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    if-nez p2, :cond_0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_0
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    new-instance v15, Lcom/transsion/home/bean/BannerData;

    const/16 v16, 0x7ff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v15

    move-object/from16 v18, v15

    move-object/from16 v15, p2

    invoke-direct/range {v3 .. v17}, Lcom/transsion/home/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Image;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v18

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v15, Lcom/transsion/home/bean/BannerData;

    const/16 v16, 0x7ff

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v15

    move-object/from16 v14, p2

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/transsion/home/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Image;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v19

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final N()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final P(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->b0(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Q()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "cardPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method private final R(I)I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    rem-int p1, v0, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private final S(Ljava/util/List;Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const-string v2, "cardPager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v3}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    iget v3, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->e:I

    invoke-direct {v0, p1, v3, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;-><init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;)V

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/i$b;

    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/suboperate/provider/i$b;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private final U()V
    .locals 7

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    new-instance v6, Lcom/transsion/home/adapter/suboperate/provider/g;

    invoke-direct {v6, p0}, Lcom/transsion/home/adapter/suboperate/provider/g;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v2, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    invoke-virtual {v4}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final V(Lcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;)Lkotlin/Unit;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;->getShow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final W(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const-string v2, "viewPager2"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method private final X()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/adapter/suboperate/adapter/u;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/f;

    invoke-direct {v1, p0}, Lcom/transsion/home/adapter/suboperate/provider/f;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    invoke-direct {p0, v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/i;->L(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    :cond_3
    return-void
.end method

.method private static final Y(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->b0(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Z(Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->N()V

    :cond_5
    :goto_0
    return-void
.end method

.method private final a0(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->Q()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "cardPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private final b0(Ljava/util/List;)V
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/u;->i(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->h(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->P(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/i;->M(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public O(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/home/R$id;->sub_operation_view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/transsion/home/R$id;->cardPager:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/transsion/home/R$id;->interestLayout:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/recycler/InterceptView;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->k:Lcom/transsion/baseui/recycler/InterceptView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "interestLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    const-string v3, "cardPager"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/recycler/InterceptView;->setPostView(Landroid/view/View;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_view_scroll_helper:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/widget/OperateScrollableHost;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_card_helper:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/widget/OperateScrollableHost;

    invoke-virtual {p1, v2}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/d;

    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/suboperate/provider/d;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->L(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/transsion/home/bean/BannerBean;->setBanners(Ljava/util/List;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/u;

    if-nez v0, :cond_6

    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/u;

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->e:I

    invoke-direct {v0, p1, v2, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/u;-><init>(Ljava/util/List;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/u;

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/u;->i(Ljava/util/List;)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/u;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->o:Lcom/transsion/home/adapter/suboperate/adapter/u;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    const-string v2, "viewPager2"

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->o:Lcom/transsion/home/adapter/suboperate/adapter/u;

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/i;->S(Ljava/util/List;Lcom/transsion/home/bean/OperateItem;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/i$a;

    invoke-direct {v4, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/i$a;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/i;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerBean;->getInterval()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-static {p2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_b
    move p2, v0

    :goto_1
    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-lez p2, :cond_c

    goto :goto_2

    :cond_c
    iget-wide v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    :goto_2
    iput-wide v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    if-ltz p2, :cond_d

    goto :goto_3

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->R(I)I

    move-result p2

    :goto_3
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_e
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object v1, p1

    :goto_4
    invoke-virtual {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public final T(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/i;->O(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_banner:I

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

    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->X()V

    :cond_1
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
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/i$c;

    invoke-direct {v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/i$c;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
