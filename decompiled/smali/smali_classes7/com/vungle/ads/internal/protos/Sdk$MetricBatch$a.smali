.class public final Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;

# interfaces
.implements Lcom/vungle/ads/internal/protos/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$6900()Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/ads/internal/protos/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;",
            ">;)",
            "Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7300(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMetrics(ILcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7200(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;ILcom/vungle/ads/internal/protos/Sdk$SDKMetric;)V

    return-object p0
.end method

.method public addMetrics(ILcom/vungle/ads/internal/protos/Sdk$SDKMetric;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7200(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;ILcom/vungle/ads/internal/protos/Sdk$SDKMetric;)V

    return-object p0
.end method

.method public addMetrics(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7100(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;)V

    return-object p0
.end method

.method public addMetrics(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7100(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;)V

    return-object p0
.end method

.method public clearMetrics()Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-static {v0}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7400(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;)V

    return-object p0
.end method

.method public getMetrics(I)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->getMetrics(I)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->getMetricsCount()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->getMetricsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeMetrics(I)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7500(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;I)V

    return-object p0
.end method

.method public setMetrics(ILcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7000(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;ILcom/vungle/ads/internal/protos/Sdk$SDKMetric;)V

    return-object p0
.end method

.method public setMetrics(ILcom/vungle/ads/internal/protos/Sdk$SDKMetric;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->access$7000(Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;ILcom/vungle/ads/internal/protos/Sdk$SDKMetric;)V

    return-object p0
.end method
