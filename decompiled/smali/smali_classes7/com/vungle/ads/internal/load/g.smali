.class public final Lcom/vungle/ads/internal/load/g;
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

.method public static final synthetic access$retrofitToVungleError(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/g;->retrofitToVungleError(Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;

    move-result-object p0

    return-object p0
.end method

.method private final fetchAdMetadata(Lcom/vungle/ads/y;Lcom/vungle/ads/internal/model/g;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->checkIsRetryAfterActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vungle/ads/AdRetryActiveError;

    invoke-direct {p1}, Lcom/vungle/ads/AdRetryActiveError;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->requestAd(Ljava/lang/String;Lcom/vungle/ads/y;)Lcom/vungle/ads/internal/network/a;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/vungle/ads/NetworkUnreachable;

    const-string p2, "adsCall is null"

    invoke-direct {p1, p2}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_1
    new-instance v0, Lcom/vungle/ads/internal/load/g$a;

    invoke-direct {v0, p0, p2}, Lcom/vungle/ads/internal/load/g$a;-><init>(Lcom/vungle/ads/internal/load/g;Lcom/vungle/ads/internal/model/g;)V

    invoke-interface {p1, v0}, Lcom/vungle/ads/internal/network/a;->enqueue(Lcom/vungle/ads/internal/network/b;)V

    return-void
.end method

.method private final retrofitToVungleError(Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;
    .locals 3

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vungle/ads/NetworkTimeoutError;

    invoke-direct {p1}, Lcom/vungle/ads/NetworkTimeoutError;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ads request fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public onAdLoadReady()V
    .locals 0

    return-void
.end method

.method protected requestAd()V
    .locals 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdRequest()Lcom/vungle/ads/internal/load/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/AdRequest;->getRequestAdSize()Lcom/vungle/ads/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdRequest()Lcom/vungle/ads/internal/load/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/load/AdRequest;->getPlacement()Lcom/vungle/ads/internal/model/g;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vungle/ads/internal/load/g;->fetchAdMetadata(Lcom/vungle/ads/y;Lcom/vungle/ads/internal/model/g;)V

    return-void
.end method
