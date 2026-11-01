.class public final Lcom/vungle/ads/internal/load/BaseAdLoader$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/load/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/load/BaseAdLoader;->handleAdMetaData$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/load/BaseAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadResult(I)V
    .locals 11

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-static {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->access$getAdLoaderCallback$p(Lcom/vungle/ads/internal/load/BaseAdLoader;)Lcom/vungle/ads/internal/load/a;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/vungle/ads/MraidJsError;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    const-string v2, "Failed to download mraid.js."

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/vungle/ads/internal/load/a;->onFailure(Lcom/vungle/ads/VungleError;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object v3, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->MRAID_DOWNLOAD_JS_RETRY_SUCCESS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v7

    const/16 v9, 0xa

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-static {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->access$downloadAssets(Lcom/vungle/ads/internal/load/BaseAdLoader;)V

    :cond_2
    :goto_0
    return-void
.end method
