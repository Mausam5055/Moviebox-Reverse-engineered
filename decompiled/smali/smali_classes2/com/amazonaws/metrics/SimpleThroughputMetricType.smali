.class public Lcom/amazonaws/metrics/SimpleThroughputMetricType;
.super Lcom/amazonaws/metrics/SimpleServiceMetricType;

# interfaces
.implements Lcom/amazonaws/metrics/ThroughputMetricType;


# instance fields
.field private final c:Lcom/amazonaws/metrics/ServiceMetricType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/amazonaws/metrics/SimpleServiceMetricType;

    invoke-direct {p1, p3, p2}, Lcom/amazonaws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazonaws/metrics/SimpleThroughputMetricType;->c:Lcom/amazonaws/metrics/ServiceMetricType;

    return-void
.end method
