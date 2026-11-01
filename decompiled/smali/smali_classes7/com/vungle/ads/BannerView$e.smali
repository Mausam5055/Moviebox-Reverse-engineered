.class public final Lcom/vungle/ads/BannerView$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/ImpressionTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/BannerView;


# direct methods
.method constructor <init>(Lcom/vungle/ads/BannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpression(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "BannerView"

    const-string v1, "ImpressionTracker checked the banner view become visible."

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/ads/BannerView;->access$setOnImpressionCalled$p(Lcom/vungle/ads/BannerView;Z)V

    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$logViewVisibleOnPlay(Lcom/vungle/ads/BannerView;)V

    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$checkHardwareAcceleration(Lcom/vungle/ads/BannerView;)V

    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$getPresenter$p(Lcom/vungle/ads/BannerView;)Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->start()V

    :cond_0
    return-void
.end method

.method public onViewInvisible(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$isInvisibleLogged$p(Lcom/vungle/ads/BannerView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "BannerView"

    const-string v1, "ImpressionTracker checked the banner view invisible on play."

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v0, Lcom/vungle/ads/w;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iget-object v1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    invoke-virtual {v1}, Lcom/vungle/ads/BannerView;->getAdvertisement()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
