.class public final Lcom/transsion/home/adapter/trending/provider/q0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/adapter/trending/provider/q0;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method private final A(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/home/bean/OperateItem;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    sget v0, Lcom/transsion/home/R$id;->tag_attach_listener_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/home/R$id;->tag_attach_listener_item:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p2, Lcom/transsion/home/adapter/trending/provider/q0$a;

    invoke-direct {p2, p3}, Lcom/transsion/home/adapter/trending/provider/q0$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static final C(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;
    .locals 0

    check-cast p0, Lcy/b0;

    invoke-virtual {p0, p1}, Lcy/b0;->J(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final D(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;
    .locals 0

    check-cast p0, Lcy/d0;

    invoke-virtual {p0, p1}, Lcy/d0;->I(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/trending/provider/q0;->C(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/trending/provider/q0;->D(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/q0;->e:Ljava/util/WeakHashMap;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcy/b;->a:Lcy/b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/q0;->e:Ljava/util/WeakHashMap;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Lcom/transsion/ad/bidding/base/r;

    sget v0, Lcom/transsion/home/R$id;->nativeView:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v1

    :cond_4
    invoke-virtual {p1, v0, v2, v1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    instance-of v0, v2, Lcy/y;

    if-nez v0, :cond_8

    instance-of v0, v2, Lcy/b0;

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Lcy/b0;

    invoke-virtual {v0, p1}, Lcy/b0;->H(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcy/b0;->I(Landroid/view/View;)Ldi/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_5
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/o0;

    invoke-direct {v0, v2, p1}, Lcom/transsion/home/adapter/trending/provider/o0;-><init>(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/adapter/trending/provider/q0;->A(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/home/bean/OperateItem;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_6
    instance-of v0, v2, Lcy/d0;

    if-eqz v0, :cond_8

    move-object v0, v2

    check-cast v0, Lcy/d0;

    invoke-virtual {v0, p1}, Lcy/d0;->G(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcy/d0;->H(Landroid/view/View;)Ldi/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_7
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/p0;

    invoke-direct {v0, v2, p1}, Lcom/transsion/home/adapter/trending/provider/p0;-><init>(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/adapter/trending/provider/q0;->A(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/home/bean/OperateItem;Lkotlin/jvm/functions/Function0;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/q0;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_NATIVE_AD:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->post_list_item_native_ad_layout:I

    return v0
.end method
