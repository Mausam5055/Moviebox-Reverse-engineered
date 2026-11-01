.class public interface abstract Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract sendErr(Landroid/content/Context;Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;)V
.end method

.method public abstract sendPerf(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendPerfV2(Ljava/lang/String;)V
.end method
