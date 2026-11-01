.class public final Lcom/vungle/ads/BaseFullscreenAd$play$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd;->play(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 6

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v1

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 6

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v1

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onAdImpression(Ljava/lang/String;)V
    .locals 6

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v1

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markStart()V

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 8

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    sget-object v2, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/w;

    move-result-object v3

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 8

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    sget-object v2, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getRewardedMetric$vungle_ads_release()Lcom/vungle/ads/w;

    move-result-object v3

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/SignalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/signals/SignalManager;->increaseSessionDepthCounter()V

    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/x;->markStart()V

    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;

    iget-object v2, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v1, v2, p1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;Lcom/vungle/ads/VungleError;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->this$0:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method
