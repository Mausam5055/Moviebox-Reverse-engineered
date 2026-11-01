.class public abstract Lcom/vungle/ads/j;
.super Lcom/vungle/ads/p;


# instance fields
.field private valueFirst:Ljava/lang/Long;

.field private valueSecond:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/p;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method


# virtual methods
.method public final getValueFirst()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/j;->valueFirst:Ljava/lang/Long;

    return-object v0
.end method

.method public final getValueSecond()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/j;->valueSecond:Ljava/lang/Long;

    return-object v0
.end method

.method public final setValueFirst(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/j;->valueFirst:Ljava/lang/Long;

    return-void
.end method

.method public final setValueSecond(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/j;->valueSecond:Ljava/lang/Long;

    return-void
.end method
