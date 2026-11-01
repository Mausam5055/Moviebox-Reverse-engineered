.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:J

.field public OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;Ljava/lang/String;)V
    .locals 7

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO$OooO00o;->OooO00o:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    :goto_0
    sub-long/2addr v0, v5

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_1
    move-wide v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    goto :goto_0

    :goto_2
    if-eqz v4, :cond_6

    return-void

    :cond_6
    if-eqz p3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-\u4fe1\u606f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_7
    const-string p3, ""

    :goto_3
    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-\u8017\u65f6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, "webviewWorker"

    invoke-interface {v0, p1, v2, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->getDes()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->getDes()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const-string v0, "TmcPerferenceWorker"

    if-ne p2, p3, :cond_a

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/a;->a(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    return-void
.end method
