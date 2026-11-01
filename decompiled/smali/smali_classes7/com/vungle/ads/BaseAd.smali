.class public abstract Lcom/vungle/ads/BaseAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/a;


# instance fields
.field private final adConfig:Lcom/vungle/ads/b;

.field private final adInternal$delegate:Lkotlin/Lazy;

.field private adListener:Lcom/vungle/ads/h;

.field private final context:Landroid/content/Context;

.field private creativeId:Ljava/lang/String;

.field private final displayToClickMetric:Lcom/vungle/ads/x;

.field private eventId:Ljava/lang/String;

.field private final leaveApplicationMetric:Lcom/vungle/ads/w;

.field private final logEntry:Lcom/vungle/ads/internal/util/n;

.field private final placementId:Ljava/lang/String;

.field private final presentToDisplayMetric:Lcom/vungle/ads/x;

.field private final requestToResponseMetric:Lcom/vungle/ads/x;

.field private final responseToShowMetric:Lcom/vungle/ads/x;

.field private final rewardedMetric:Lcom/vungle/ads/w;

.field private final showToCloseMetric:Lcom/vungle/ads/x;

.field private final showToFailMetric:Lcom/vungle/ads/x;

.field private final signalManager$delegate:Lkotlin/Lazy;

.field private signaledAd:Lcom/vungle/ads/internal/signals/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/BaseAd;->placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/BaseAd;->adConfig:Lcom/vungle/ads/b;

    new-instance p3, Lcom/vungle/ads/BaseAd$adInternal$2;

    invoke-direct {p3, p0}, Lcom/vungle/ads/BaseAd$adInternal$2;-><init>(Lcom/vungle/ads/BaseAd;)V

    invoke-static {p3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/ads/BaseAd;->adInternal$delegate:Lkotlin/Lazy;

    sget-object p3, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object p3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;

    invoke-direct {v0, p1}, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->signalManager$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/vungle/ads/internal/util/n;

    invoke-direct {p1}, Lcom/vungle/ads/internal/util/n;-><init>()V

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/util/n;->setPlacementRefId$vungle_ads_release(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->logEntry:Lcom/vungle/ads/internal/util/n;

    new-instance p1, Lcom/vungle/ads/x;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    new-instance p1, Lcom/vungle/ads/x;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_RESPONSE_TO_SHOW_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->responseToShowMetric:Lcom/vungle/ads/x;

    new-instance p1, Lcom/vungle/ads/x;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_PRESENT_TO_DISPLAY_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->presentToDisplayMetric:Lcom/vungle/ads/x;

    new-instance p1, Lcom/vungle/ads/x;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_SHOW_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->showToFailMetric:Lcom/vungle/ads/x;

    new-instance p1, Lcom/vungle/ads/x;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_DISPLAY_TO_CLICK_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->displayToClickMetric:Lcom/vungle/ads/x;

    new-instance p1, Lcom/vungle/ads/w;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_LEAVE_APPLICATION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->leaveApplicationMetric:Lcom/vungle/ads/w;

    new-instance p1, Lcom/vungle/ads/w;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REWARD_USER:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->rewardedMetric:Lcom/vungle/ads/w;

    new-instance p1, Lcom/vungle/ads/x;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_SHOW_TO_CLOSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->showToCloseMetric:Lcom/vungle/ads/x;

    return-void
.end method

.method public static synthetic getRequestToResponseMetric$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private final onLoadEnd()V
    .locals 7

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v2, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    iget-object v3, p0, Lcom/vungle/ads/BaseAd;->logEntry:Lcom/vungle/ads/internal/util/n;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->responseToShowMetric:Lcom/vungle/ads/x;

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    return-void
.end method


# virtual methods
.method public canPlayAd()Ljava/lang/Boolean;
    .locals 4

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/vungle/ads/internal/AdInternal;->canPlayAd$default(Lcom/vungle/ads/internal/AdInternal;ZILjava/lang/Object;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
.end method

.method public final getAdConfig()Lcom/vungle/ads/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adConfig:Lcom/vungle/ads/b;

    return-object v0
.end method

.method public final getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adInternal$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/AdInternal;

    return-object v0
.end method

.method public final getAdListener()Lcom/vungle/ads/h;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adListener:Lcom/vungle/ads/h;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->displayToClickMetric:Lcom/vungle/ads/x;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/w;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->leaveApplicationMetric:Lcom/vungle/ads/w;

    return-object v0
.end method

.method public final getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->logEntry:Lcom/vungle/ads/internal/util/n;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->presentToDisplayMetric:Lcom/vungle/ads/x;

    return-object v0
.end method

.method public final getRequestToResponseMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    return-object v0
.end method

.method public final getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->responseToShowMetric:Lcom/vungle/ads/x;

    return-object v0
.end method

.method public final getRewardedMetric$vungle_ads_release()Lcom/vungle/ads/w;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->rewardedMetric:Lcom/vungle/ads/w;

    return-object v0
.end method

.method public final getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->showToCloseMetric:Lcom/vungle/ads/x;

    return-object v0
.end method

.method public final getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->showToFailMetric:Lcom/vungle/ads/x;

    return-object v0
.end method

.method public final getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->signalManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/signals/SignalManager;

    return-object v0
.end method

.method public final getSignaledAd$vungle_ads_release()Lcom/vungle/ads/internal/signals/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->signaledAd:Lcom/vungle/ads/internal/signals/b;

    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseAd;->placementId:Ljava/lang/String;

    new-instance v2, Lcom/vungle/ads/BaseAd$a;

    invoke-direct {v2, p0, p1}, Lcom/vungle/ads/BaseAd$a;-><init>(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/vungle/ads/internal/AdInternal;->loadAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/load/a;)V

    return-void
.end method

.method public onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adConfig:Lcom/vungle/ads/b;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/model/AdPayload;->setAdConfig(Lcom/vungle/ads/b;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/BaseAd;->creativeId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->eventId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->eventId:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->signaledAd:Lcom/vungle/ads/internal/signals/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/signals/b;->setEventId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLoadFailure$vungle_ads_release(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vungleError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/ads/BaseAd$onLoadFailure$1;-><init>(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/vungle/ads/BaseAd;->onLoadEnd()V

    return-void
.end method

.method public onLoadSuccess$vungle_ads_release(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V
    .locals 0

    const-string p2, "baseAd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance p2, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;

    invoke-direct {p2, p0}, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;-><init>(Lcom/vungle/ads/BaseAd;)V

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/vungle/ads/BaseAd;->onLoadEnd()V

    return-void
.end method

.method public final setAdListener(Lcom/vungle/ads/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->adListener:Lcom/vungle/ads/h;

    return-void
.end method

.method public final setSignaledAd$vungle_ads_release(Lcom/vungle/ads/internal/signals/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->signaledAd:Lcom/vungle/ads/internal/signals/b;

    return-void
.end method
