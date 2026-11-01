.class public final Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/coroutines/n0;

.field private final c:Lkotlin/jvm/functions/Function0;

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Z

.field private f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private g:Lkotlinx/coroutines/t1;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinish"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->b:Lkotlinx/coroutines/n0;

    iput-object p3, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->c:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->d:Lkotlin/jvm/functions/Function0;

    iput-boolean p5, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->m()V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ldi/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->n()Ldi/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->p()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->c:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->e:Z

    return p0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->d:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->b:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h:Z

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->i:Z

    return-void
.end method

.method private final m()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->g:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->g:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final n()Ldi/a;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;-><init>(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V

    return-object v0
.end method

.method private final p()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->i:Z

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    sget-object v1, Lii/b;->a:Lii/b;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lii/b;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final s()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->b:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$startTimeout$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$startTimeout$1;-><init>(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->g:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->i:Z

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->m()V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->w:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a:Ljava/lang/String;

    sget-object v2, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual {v2, p1}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lii/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h:Z

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->i:Z

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->b:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$show$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$show$1;-><init>(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->s()V

    return-void
.end method
