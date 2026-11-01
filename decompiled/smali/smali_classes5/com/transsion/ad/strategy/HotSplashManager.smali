.class public final Lcom/transsion/ad/strategy/HotSplashManager;
.super Ldi/a;


# static fields
.field public static final d:Lcom/transsion/ad/strategy/HotSplashManager;

.field private static e:J

.field private static f:Z

.field private static g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private static final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/strategy/HotSplashManager;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/HotSplashManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->d:Lcom/transsion/ad/strategy/HotSplashManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->h:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method private final B()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "topAct is null"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "topAct?.isDestroyed == true"

    return-object v0

    :cond_1
    sget-object v1, Lti/o;->a:Lti/o;

    invoke-virtual {v1, v0}, Lti/o;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Lti/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lhi/c;->a:Lhi/c;

    invoke-virtual {v0}, Lhi/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhi/c;->b(Z)V

    const-string v0, "\u5168\u641c\u7684\u65f6\u5019\u70ed\u542f\u52a8\u4e0d\u5c55\u793a\u70ed\u542f\u52a8\u5e7f\u544a"

    return-object v0

    :cond_3
    sget-wide v0, Lcom/transsion/ad/strategy/HotSplashManager;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    const-string v0, "inBackgroundTime <= 0"

    return-object v0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/ad/strategy/HotSplashManager;->e:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    sget-object v3, Lhi/d;->a:Lhi/d;

    invoke-virtual {v3}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "hotSplashInterval"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    :goto_0
    const v3, 0xea60

    mul-int/2addr v2, v3

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u6ee1\u8db3\u6700\u5c0f\u95f4\u9694\u65f6\u95f4 -- background_time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " --- TIME_IN_THE_BACKGROUND = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, ""

    return-object v0

    :cond_7
    :goto_1
    const-string v0, "\u5904\u7406App\u5728\u9501\u5c4f\u72b6\u6001\u4e0b\u88ab\u62c9\u6d3b"

    return-object v0
.end method

.method private final C()V
    .locals 12

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lii/b;->a:Lii/b;

    invoke-virtual {v1, v0}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_1

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --> loadHotSplashAd() --> msg = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    const-string v8, "ad_int"

    invoke-virtual {v3, v8, v2, v7, v6}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {v1, v0, v6, v4, v5}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    sget-object v2, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v2, :cond_2

    invoke-static {v1, v0, v6, v4, v5}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v9, Lcom/transsion/ad/strategy/HotSplashManager$loadHotSplashAd$1;

    invoke-direct {v9, v5}, Lcom/transsion/ad/strategy/HotSplashManager$loadHotSplashAd$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final E()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->d:Lcom/transsion/ad/strategy/HotSplashManager;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/HotSplashManager;->C()V

    return-void
.end method

.method private final G()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/strategy/HotSplashManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic x()V
    .locals 0

    invoke-static {}, Lcom/transsion/ad/strategy/HotSplashManager;->E()V

    return-void
.end method

.method public static final synthetic y(Lcom/transsion/ad/strategy/HotSplashManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic z()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object v0
.end method


# virtual methods
.method public final D()V
    .locals 8

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onStop() --> App\u8fdb\u5165\u524d\u53f0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "ad_int"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/ad/strategy/HotSplashManager;->f:Z

    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/ad/strategy/j;

    invoke-direct {v1}, Lcom/transsion/ad/strategy/j;-><init>()V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final F()V
    .locals 9

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onStop() --> App\u8fdb\u5165\u540e\u53f0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v3, "ad_int"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/transsion/ad/strategy/HotSplashManager;->e:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/transsion/ad/strategy/HotSplashManager;->f:Z

    sget-object v1, Lcom/transsion/ad/strategy/HotSplashManager;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lii/b;->a:Lii/b;

    invoke-virtual {v1, v0}, Lii/b;->h(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->w:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->b(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object p1, Lii/b;->a:Lii/b;

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lii/b;->a:Lii/b;

    invoke-virtual {v1, v0}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1;

    invoke-direct {v6, v0, p1, v2}, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1;-><init>(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lii/b;->a:Lii/b;

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lii/b;->a:Lii/b;

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v0}, Lhi/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    return-void
.end method
