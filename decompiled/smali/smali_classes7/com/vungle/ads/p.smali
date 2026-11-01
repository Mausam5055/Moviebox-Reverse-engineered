.class public abstract Lcom/vungle/ads/p;
.super Ljava/lang/Object;


# instance fields
.field private meta:Ljava/lang/String;

.field private metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/p;->metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    return-void
.end method


# virtual methods
.method public final getMeta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/p;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetricType()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/p;->metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    return-object v0
.end method

.method public abstract getValue()J
.end method

.method public final setMeta(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/p;->meta:Ljava/lang/String;

    return-void
.end method

.method public final setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/p;->metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    return-void
.end method
