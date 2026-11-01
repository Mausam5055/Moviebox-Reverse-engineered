.class public final Lcom/vungle/ads/internal/ui/AdActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/ui/AdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $signalManager$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/signals/SignalManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/ui/AdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/ui/AdActivity;Lkotlin/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/ui/AdActivity;",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/signals/SignalManager;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity$c;->this$0:Lcom/vungle/ads/internal/ui/AdActivity;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/AdActivity$c;->$signalManager$delegate:Lkotlin/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 10

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity$c;->this$0:Lcom/vungle/ads/internal/ui/AdActivity;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/AdActivity;->getMraidPresenter$vungle_ads_release()Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->getViewStatus()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sget-object v2, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_CLOSED_BEFORE_IMPRESSION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->Companion:Lcom/vungle/ads/internal/ui/AdActivity$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/AdActivity$a;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity$c;->this$0:Lcom/vungle/ads/internal/ui/AdActivity;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/AdActivity;->access$getUnclosedAd$p(Lcom/vungle/ads/internal/ui/AdActivity;)Lcom/vungle/ads/internal/model/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/AdActivity$c;->$signalManager$delegate:Lkotlin/Lazy;

    invoke-static {v1}, Lcom/vungle/ads/internal/ui/AdActivity;->access$onCreate$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/SignalManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/signals/SignalManager;->removeUnclosedAd(Lcom/vungle/ads/internal/model/j;)V

    :cond_3
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity$c;->this$0:Lcom/vungle/ads/internal/ui/AdActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
