.class public final Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010$\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R(\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008\u00a8\u00063"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;",
        "",
        "()V",
        "aggregationType",
        "",
        "getAggregationType",
        "()Ljava/lang/String;",
        "setAggregationType",
        "(Ljava/lang/String;)V",
        "arg1",
        "getArg1",
        "setArg1",
        "arg2",
        "getArg2",
        "setArg2",
        "arg3",
        "getArg3",
        "setArg3",
        "args",
        "",
        "getArgs",
        "()Ljava/util/Map;",
        "setArgs",
        "(Ljava/util/Map;)V",
        "errorAggregationCode",
        "getErrorAggregationCode",
        "setErrorAggregationCode",
        "errorDetail",
        "getErrorDetail",
        "setErrorDetail",
        "errorId",
        "getErrorId",
        "setErrorId",
        "errorType",
        "getErrorType",
        "setErrorType",
        "thread",
        "Ljava/lang/Thread;",
        "getThread",
        "()Ljava/lang/Thread;",
        "setThread",
        "(Ljava/lang/Thread;)V",
        "throwable",
        "",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "setThrowable",
        "(Ljava/lang/Throwable;)V",
        "version",
        "getVersion",
        "setVersion",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private aggregationType:Ljava/lang/String;

.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;

.field private arg3:Ljava/lang/String;

.field private args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorAggregationCode:Ljava/lang/String;

.field private errorDetail:Ljava/lang/String;

.field private errorId:Ljava/lang/String;

.field private errorType:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private throwable:Ljava/lang/Throwable;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAggregationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->aggregationType:Ljava/lang/String;

    return-object v0
.end method

.method public final getArg1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->arg1:Ljava/lang/String;

    return-object v0
.end method

.method public final getArg2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->arg2:Ljava/lang/String;

    return-object v0
.end method

.method public final getArg3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->arg3:Ljava/lang/String;

    return-object v0
.end method

.method public final getArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->args:Ljava/util/Map;

    return-object v0
.end method

.method public final getErrorAggregationCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorAggregationCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorId:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public final getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setAggregationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->aggregationType:Ljava/lang/String;

    return-void
.end method

.method public final setArg1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->arg1:Ljava/lang/String;

    return-void
.end method

.method public final setArg2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->arg2:Ljava/lang/String;

    return-void
.end method

.method public final setArg3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->arg3:Ljava/lang/String;

    return-void
.end method

.method public final setArgs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->args:Ljava/util/Map;

    return-void
.end method

.method public final setErrorAggregationCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorAggregationCode:Ljava/lang/String;

    return-void
.end method

.method public final setErrorDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorDetail:Ljava/lang/String;

    return-void
.end method

.method public final setErrorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorId:Ljava/lang/String;

    return-void
.end method

.method public final setErrorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->errorType:Ljava/lang/String;

    return-void
.end method

.method public final setThread(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;->version:Ljava/lang/String;

    return-void
.end method
