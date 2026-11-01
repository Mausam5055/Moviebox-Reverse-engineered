.class public final Lcom/transsion/subroom/activity/MainDialogAdManager;
.super Ldi/a;


# instance fields
.field private d:Lcom/transsion/subroom/activity/MainActivity;

.field private e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldi/a;-><init>()V

    const-string v0, "MainDialogInterstitialScene"

    iput-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/subroom/activity/MainDialogAdManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/subroom/activity/MainDialogAdManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method private final D(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 11

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lhi/c;->a:Lhi/c;

    invoke-virtual {v1}, Lhi/c;->a()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    invoke-static {v0, p1, v3, v2, v4}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    invoke-static {v0, p1, v3, v2, v4}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->d:Lcom/transsion/subroom/activity/MainActivity;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    new-instance v8, Lcom/transsion/subroom/activity/MainDialogAdManager$loadAd$1;

    invoke-direct {v8, p0, v4}, Lcom/transsion/subroom/activity/MainDialogAdManager$loadAd$1;-><init>(Lcom/transsion/subroom/activity/MainDialogAdManager;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final F(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->f:Z

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object p0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lii/b;->g(Lii/b;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final G(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->f:Z

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object p0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final H(Lcom/transsion/subroom/activity/MainDialogAdManager;Lcom/transsion/subroom/activity/MainActivity;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f1a\u5458\u4fc3\u9500\u5f39\u7a97\u5c55\u793a\u5931\u8d25 --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> \u7ee7\u7eed\u5c55\u793a\u9996\u9875\u5e7f\u544a"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_discount"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/subroom/activity/MainDialogAdManager;->D(Lcom/transsion/subroom/activity/MainActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final I()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    iput-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->d:Lcom/transsion/subroom/activity/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->f:Z

    return-void
.end method

.method public static synthetic x(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->F(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->G(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/subroom/activity/MainDialogAdManager;Lcom/transsion/subroom/activity/MainActivity;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/subroom/activity/MainDialogAdManager;->H(Lcom/transsion/subroom/activity/MainDialogAdManager;Lcom/transsion/subroom/activity/MainActivity;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final E(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->f:Z

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_discount"

    const-string v3, "\u9996\u9875\u5f39\u7a97 --> \u5df2\u6709\u5f39\u7a97\u6b63\u5728\u5c55\u793a"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_discount"

    const-string v3, "\u9996\u9875\u5f39\u7a97 --> \u4e0d\u6ee1\u8db3\u5c55\u793a\u6761\u4ef6"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    new-instance v5, Lcom/transsion/subroom/activity/y;

    invoke-direct {v5, p0}, Lcom/transsion/subroom/activity/y;-><init>(Lcom/transsion/subroom/activity/MainDialogAdManager;)V

    new-instance v6, Lcom/transsion/subroom/activity/z;

    invoke-direct {v6, p0}, Lcom/transsion/subroom/activity/z;-><init>(Lcom/transsion/subroom/activity/MainDialogAdManager;)V

    new-instance v7, Lcom/transsion/subroom/activity/a0;

    invoke-direct {v7, p0, p1}, Lcom/transsion/subroom/activity/a0;-><init>(Lcom/transsion/subroom/activity/MainDialogAdManager;Lcom/transsion/subroom/activity/MainActivity;)V

    const/4 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/transsion/memberapi/IPremiumApi;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method

.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->I()V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->d:Lcom/transsion/subroom/activity/MainActivity;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->f:Z

    iget-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lii/b;->g(Lii/b;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->I()V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->I()V

    return-void
.end method
