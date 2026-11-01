.class public Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# instance fields
.field public final data:Ljava/lang/Object;

.field public final eventName:Ljava/lang/String;

.field public final pagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;->pagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;->data:Ljava/lang/Object;

    return-void
.end method
