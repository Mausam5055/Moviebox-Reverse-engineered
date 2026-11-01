.class public Lcom/vungle/ads/x;
.super Lcom/vungle/ads/j;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/j;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method

.method private final calculateIntervalDuration()J
    .locals 5

    invoke-direct {p0}, Lcom/vungle/ads/x;->getCurrentTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueSecond()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueFirst()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    sub-long/2addr v2, v0

    const v0, 0xf4240

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private final getCurrentTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    invoke-direct {p0}, Lcom/vungle/ads/x;->calculateIntervalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public markEnd()V
    .locals 2

    invoke-direct {p0}, Lcom/vungle/ads/x;->getCurrentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/j;->setValueSecond(Ljava/lang/Long;)V

    return-void
.end method

.method public markStart()V
    .locals 2

    invoke-direct {p0}, Lcom/vungle/ads/x;->getCurrentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/j;->setValueFirst(Ljava/lang/Long;)V

    return-void
.end method
