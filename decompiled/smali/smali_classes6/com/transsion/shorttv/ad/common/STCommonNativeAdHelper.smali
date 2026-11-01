.class public final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private e:Lkotlin/jvm/functions/Function1;

.field private f:Lkotlin/jvm/functions/Function1;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/shorttv/ad/AdLoadState;

.field private final j:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->j:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->j:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->f:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic n(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->m(I)V

    return-void
.end method


# virtual methods
.method public final m(I)V
    .locals 4

    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->DESTROYED:Lcom/transsion/shorttv/ad/AdLoadState;

    iput-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "trigger destroy"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    :try_start_1
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v3}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v2, "trigger destroy when ad closed"

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v2, "trigger destroy before load"

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v2, "trigger destroy when show error"

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v2, "trigger destroy when load error"

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v3}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_5
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    :cond_6
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e:Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->f:Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_7
    iput-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g:Ljava/lang/ref/WeakReference;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Lkotlin/jvm/functions/Function1;)V
    .locals 9

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v1, "trigger load ad error, sceneId is null"

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i:Lcom/transsion/shorttv/ad/AdLoadState;

    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    if-ne v0, v1, :cond_1

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v1, "trigger load ad error, current ad is loading"

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    if-ne v0, v1, :cond_2

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v1, "trigger load ad error, current ad is already loaded succeed"

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    return-void
.end method

.method public final s(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    const-string v0, "layoutProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b:Lkotlinx/coroutines/n0;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v2

    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lur/a;->a:Lur/a;

    iget-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h:Ljava/lang/String;

    const-string v0, "trigger show ad error, nativeManager or maxEcpmObject is null"

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
