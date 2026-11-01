.class public final synthetic Lcom/vungle/ads/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

.field public final synthetic b:J

.field public final synthetic c:Lcom/vungle/ads/internal/util/n;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/c;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    iput-wide p2, p0, Lcom/vungle/ads/c;->b:J

    iput-object p4, p0, Lcom/vungle/ads/c;->c:Lcom/vungle/ads/internal/util/n;

    iput-object p5, p0, Lcom/vungle/ads/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/vungle/ads/c;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    iget-wide v1, p0, Lcom/vungle/ads/c;->b:J

    iget-object v3, p0, Lcom/vungle/ads/c;->c:Lcom/vungle/ads/internal/util/n;

    iget-object v4, p0, Lcom/vungle/ads/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/AnalyticsClient;->d(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method
