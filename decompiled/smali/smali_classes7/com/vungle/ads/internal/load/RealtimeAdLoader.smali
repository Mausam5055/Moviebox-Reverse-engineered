.class public final Lcom/vungle/ads/internal/load/RealtimeAdLoader;
.super Lcom/vungle/ads/internal/load/BaseAdLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/omsdk/b;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/load/AdRequest;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vungleApiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkExecutors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omInjector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/vungle/ads/internal/load/BaseAdLoader;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/omsdk/b;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/load/AdRequest;)V

    return-void
.end method

.method private static final requestAd$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/network/VungleApiClient;",
            ">;)",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object p0
.end method

.method private final sendWinNotification(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/load/RealtimeAdLoader$sendWinNotification$$inlined$inject$1;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/load/RealtimeAdLoader$sendWinNotification$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/vungle/ads/internal/network/f$a;

    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    const-string v1, "win-notification"

    invoke-virtual {v2, v1}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    move-result-object v1

    invoke-static {v0}, Lcom/vungle/ads/internal/load/RealtimeAdLoader;->sendWinNotification$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/h;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v1, v5, v3, v4}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final sendWinNotification$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/network/h;",
            ">;)",
            "Lcom/vungle/ads/internal/network/h;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/h;

    return-object p0
.end method


# virtual methods
.method public onAdLoadReady()V
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getWinNotifications()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/load/RealtimeAdLoader;->sendWinNotification(Ljava/util/List;)V

    return-void
.end method

.method protected requestAd()V
    .locals 5

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdRequest()Lcom/vungle/ads/internal/load/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/AdRequest;->getAdMarkup()Lcom/vungle/ads/internal/model/BidPayload;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/ads/InvalidBidPayloadError;

    invoke-direct {v0}, Lcom/vungle/ads/InvalidBidPayloadError;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_0
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->rtaDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/BidPayload;->getDecodedAdsResponse()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v3, "RTA_DEBUGGER"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Lcom/vungle/ads/internal/load/RealtimeAdLoader$requestAd$$inlined$inject$1;

    invoke-direct {v4, v2}, Lcom/vungle/ads/internal/load/RealtimeAdLoader$requestAd$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    if-eqz v1, :cond_1

    new-instance v3, Lcom/vungle/ads/internal/load/l;

    invoke-static {v2}, Lcom/vungle/ads/internal/load/RealtimeAdLoader;->requestAd$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/load/l;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V

    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/load/l;->reportAdMarkup(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/BidPayload;->getAdPayload()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/BidPayload;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/vungle/ads/w;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CONFIG_LOADED_FROM_ADM_LOAD:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v2}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p0, v1, v0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->handleAdMetaData$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/w;)V

    return-void

    :cond_4
    :goto_0
    new-instance v0, Lcom/vungle/ads/AdMarkupInvalidError;

    const-string v1, "The ad response did not contain valid ad markup"

    invoke-direct {v0, v1}, Lcom/vungle/ads/AdMarkupInvalidError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void
.end method
