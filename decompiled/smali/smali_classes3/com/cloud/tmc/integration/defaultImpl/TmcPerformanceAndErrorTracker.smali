.class public Lcom/cloud/tmc/integration/defaultImpl/TmcPerformanceAndErrorTracker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;


# static fields
.field private static final TAG:Ljava/lang/String; = "peTracker"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendErr(Landroid/content/Context;Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public sendPerf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;->sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPerfV2(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;->sendPerfV2(Ljava/lang/String;)V

    return-void
.end method
