.class public final Lcom/vungle/ads/internal/VungleInternal;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/i;Lkotlin/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync$lambda-6(Lcom/vungle/ads/i;Lkotlin/Lazy;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/Lazy;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-3(Lkotlin/Lazy;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/util/c;",
            ">;)",
            "Lcom/vungle/ads/internal/util/c;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/util/c;

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/executor/d;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/d;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/d;

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;",
            ">;)",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-3(Lkotlin/Lazy;)Ljava/lang/String;
    .locals 1

    const-string v0, "$bidTokenEncoder$delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->encode()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getBidToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getAvailableBidTokensAsync$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;",
            ">;)",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    return-object p0
.end method

.method private static final getAvailableBidTokensAsync$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/executor/d;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/d;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/d;

    return-object p0
.end method

.method private static final getAvailableBidTokensAsync$lambda-6(Lcom/vungle/ads/i;Lkotlin/Lazy;)V
    .locals 7

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bidTokenEncoder$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/vungle/ads/x;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v0}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {v2}, Lcom/vungle/ads/x;->markStart()V

    invoke-static {p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->encode()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    move-result-object p1

    invoke-virtual {v2}, Lcom/vungle/ads/x;->markEnd()V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getBidToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/vungle/ads/i;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-virtual {v2, v0}, Lcom/vungle/ads/p;->setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/ads/p;->setMeta(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/vungle/ads/i;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getAvailableBidTokens(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/v;->INSTANCE:Lcom/vungle/ads/internal/util/v;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/v;->isOSVersionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vungle/ads/SdkVersionTooLow;

    const-string v0, "Deprecated RTB: SDK is supported only for API versions 25 and above."

    invoke-direct {p1, v0}, Lcom/vungle/ads/SdkVersionTooLow;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/vungle/ads/x;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v1, v0}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {v1}, Lcom/vungle/ads/x;->markStart()V

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->init(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$1;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$2;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$3;

    invoke-direct {v4, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/executor/b;

    invoke-static {v3}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/ads/internal/executor/d;->getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/vungle/ads/internal/j;

    invoke-direct {v4, p1}, Lcom/vungle/ads/internal/j;-><init>(Lkotlin/Lazy;)V

    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    invoke-static {v2}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/c;->getTimeout()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p1}, Lcom/vungle/ads/internal/executor/b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-virtual {v1, v0}, Lcom/vungle/ads/p;->setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-string v0, "Bid token is null or empty"

    invoke-virtual {v1, v0}, Lcom/vungle/ads/p;->setMeta(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    return-object p1
.end method

.method public final getAvailableBidTokensAsync(Landroid/content/Context;Lcom/vungle/ads/i;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/v;->INSTANCE:Lcom/vungle/ads/internal/util/v;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/v;->isOSVersionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vungle/ads/SdkVersionTooLow;

    const-string v0, "RTB: SDK is supported only for API versions 25 and above."

    invoke-direct {p1, v0}, Lcom/vungle/ads/SdkVersionTooLow;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    invoke-interface {p2, v0}, Lcom/vungle/ads/i;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->init(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$2;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/executor/d;->getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/k;

    invoke-direct {v0, p2, v1}, Lcom/vungle/ads/internal/k;-><init>(Lcom/vungle/ads/i;Lkotlin/Lazy;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "7.5.0"

    return-object v0
.end method
