.class public final Lcom/vungle/ads/w;
.super Lcom/vungle/ads/p;


# instance fields
.field private value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/p;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method


# virtual methods
.method public final addValue(J)V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/w;->value:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/w;->value:Ljava/lang/Long;

    return-void
.end method

.method public getValue()J
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/w;->value:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/w;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public final markTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/w;->value:Ljava/lang/Long;

    return-void
.end method

.method public final setValue(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/w;->value:Ljava/lang/Long;

    return-void
.end method
