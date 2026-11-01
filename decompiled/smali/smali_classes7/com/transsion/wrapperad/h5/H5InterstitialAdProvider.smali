.class public final Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

.field private static b:Ljy/a;

.field private static c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private static final d:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    invoke-direct {v0}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    new-instance v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;

    invoke-direct {v0}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->d:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->e()V

    return-void
.end method

.method public static final synthetic b()Ljy/a;
    .locals 1

    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->b:Ljy/a;

    return-object v0
.end method

.method public static final synthetic c()Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;
    .locals 1

    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->d:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;

    return-object v0
.end method

.method public static final synthetic d()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 1

    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object v0
.end method

.method private final e()V
    .locals 1

    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;Ljy/a;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    :cond_0
    sput-object p2, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->b:Ljy/a;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$h5OpenAd$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$h5OpenAd$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
