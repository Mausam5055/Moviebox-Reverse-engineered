.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooOOO0;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO00o:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooOO0;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0O0:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0OO:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooOO0O;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0Oo:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0o0:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0o:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO0OO;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0oO:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack$OooO0o;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0oo:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAdTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooO00o;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO00o;

    return-object v0
.end method

.method public final getPointTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;

    return-object v0
.end method

.method public final getRenderTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;

    return-object v0
.end method

.method public final getV8Track()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;

    return-object v0
.end method

.method public final getWorkerTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;

    return-object v0
.end method

.method public record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->getWorkerTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;

    move-result-object p4

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {p4, p1, p2, p3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->getRenderTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;

    move-result-object p4

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-virtual {p4, p1, p2, p3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->getPointTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;

    move-result-object v0

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->getV8Track()Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;

    move-result-object p4

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    invoke-virtual {p4, p1, p2, p3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;

    if-eqz v1, :cond_4

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0o:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0OO;

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniAppAnalyseType;)V

    goto :goto_0

    :cond_4
    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    if-eqz v1, :cond_5

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0o;

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    invoke-virtual {p3, p1, p2, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0o;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    instance-of v1, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO;

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    instance-of p3, p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->getAdTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooO00o;

    move-result-object p3

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p3, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2, p4}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->reportAd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public recordForAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;->getAdTrack()Lcom/cloud/tmc/miniapp/performanceanalyse/OooO00o;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "target"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p3, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-interface {p3, p1, p2, p4}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->reportAd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
