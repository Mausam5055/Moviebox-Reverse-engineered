.class public final Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000cJ\"\u0010\u001b\u001a\u00020\u000b2\u0018\u0010\u001c\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR2\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "_packageName",
        "",
        "_priority",
        "",
        "trigger",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "isIdleRunTask",
        "",
        "()Z",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "priority",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "getTrigger",
        "()Ljava/lang/String;",
        "run",
        "block",
        "Lkotlin/Function1;",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: LoadOfflineConfigTask"


# instance fields
.field private final _packageName:Ljava/lang/String;

.field private onResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private final trigger:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->Companion:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadOfflineConfigTask-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->_packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->trigger:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->onResult:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->priority:I

    return-void
.end method


# virtual methods
.method public getOnResult()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->priority:I

    return v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->trigger:Ljava/lang/String;

    return-object v0
.end method

.method public isIdleRunTask()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getStartTaskTime()J

    move-result-wide v0

    sub-long v0, v10, v0

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u8017\u65f6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->getTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->isIdleRunTask()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v12, v1, v13, v14, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->isConnected()Z

    move-result v0

    const-string v1, "TmcOfflineDownload: LoadOfflineConfigTask"

    if-nez v0, :cond_1

    const-string v0, "Network connection is not connected!"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_0

    new-instance v1, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v2, 0x6b

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v0, v8, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->_packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request config _packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    iget-object v3, v8, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->_packageName:Ljava/lang/String;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/cloud/h5update/TH5Update$a;->m(Lcom/cloud/h5update/TH5Update$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "context is null!"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "context is null!"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, v2}, Lcom/cloud/h5update/TH5Update$a;->k(Landroid/content/Context;)Lcom/cloud/h5update/b$a;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    new-instance v2, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;

    invoke-direct {v2, v10, v11, p0, v9}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;-><init>(JLcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v1, v2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;-><init>(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;)V

    invoke-virtual {v0, v1}, Lcom/cloud/h5update/b$a;->c(Lt6/a;)Lcom/cloud/h5update/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/h5update/b$a;->b()V

    return-void
.end method

.method public setOnResult(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->priority:I

    return-void
.end method
