.class public final Lcom/vungle/ads/t;
.super Lcom/vungle/ads/x;


# instance fields
.field private alreadyLogged:Z


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method


# virtual methods
.method public final alreadyMetered$vungle_ads_release()Z
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueFirst()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueSecond()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLogged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/t;->alreadyLogged:Z

    return v0
.end method

.method public markEnd()V
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueSecond()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vungle/ads/x;->markEnd()V

    :cond_0
    return-void
.end method

.method public final markLogged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/t;->alreadyLogged:Z

    return-void
.end method

.method public markStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueFirst()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vungle/ads/x;->markStart()V

    :cond_0
    return-void
.end method
