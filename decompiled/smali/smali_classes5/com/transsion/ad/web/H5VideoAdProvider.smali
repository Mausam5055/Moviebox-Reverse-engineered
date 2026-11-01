.class public final Lcom/transsion/ad/web/H5VideoAdProvider;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/web/H5VideoAdProvider;

.field private static b:Lcom/transsion/ad/web/b;

.field private static c:Z

.field private static d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private static final e:Lcom/transsion/ad/web/H5VideoAdProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/web/H5VideoAdProvider;

    invoke-direct {v0}, Lcom/transsion/ad/web/H5VideoAdProvider;-><init>()V

    sput-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->a:Lcom/transsion/ad/web/H5VideoAdProvider;

    new-instance v0, Lcom/transsion/ad/web/H5VideoAdProvider$a;

    invoke-direct {v0}, Lcom/transsion/ad/web/H5VideoAdProvider$a;-><init>()V

    sput-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->e:Lcom/transsion/ad/web/H5VideoAdProvider$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/web/H5VideoAdProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/web/H5VideoAdProvider;->g()V

    return-void
.end method

.method public static final synthetic b()Lcom/transsion/ad/web/b;
    .locals 1

    sget-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->b:Lcom/transsion/ad/web/b;

    return-object v0
.end method

.method public static final synthetic c()Lcom/transsion/ad/web/H5VideoAdProvider$a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->e:Lcom/transsion/ad/web/H5VideoAdProvider$a;

    return-object v0
.end method

.method public static final synthetic d()Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 1

    sget-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-object v0
.end method

.method public static final synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/ad/web/H5VideoAdProvider;->c:Z

    return v0
.end method

.method public static final synthetic f(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/ad/web/H5VideoAdProvider;->c:Z

    return-void
.end method

.method private final g()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;Lcom/transsion/ad/web/b;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/video/BiddingVideoManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    :cond_0
    sput-object p2, Lcom/transsion/ad/web/H5VideoAdProvider;->b:Lcom/transsion/ad/web/b;

    const/4 p2, 0x0

    sput-boolean p2, Lcom/transsion/ad/web/H5VideoAdProvider;->c:Z

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/ad/web/H5VideoAdProvider$h5OpenAd$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Lcom/transsion/ad/web/H5VideoAdProvider$h5OpenAd$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
