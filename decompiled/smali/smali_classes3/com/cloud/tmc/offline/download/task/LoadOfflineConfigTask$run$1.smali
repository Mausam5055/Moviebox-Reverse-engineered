.class public final Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->run(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1",
        "Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;",
        "noNetwork",
        "",
        "url",
        "",
        "errCode",
        "",
        "errMsg",
        "onFailure",
        "onSuccess",
        "",
        "responseStr",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startRunTime:J

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;


# direct methods
.method constructor <init>(JLcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$startRunTime:J

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noNetwork(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TmcOfflineDownload: LoadOfflineConfigTask"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TmcOfflineDownload: LoadOfflineConfigTask"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$startRunTime:J

    sub-long/2addr v0, v2

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    iget-object v3, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u8017\u65f6\uff1a"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    iget-object v5, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->getTrigger()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->isIdleRunTask()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-static/range {v4 .. v11}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " errMsg: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const/16 v1, 0x70

    invoke-direct {v0, v1, p2, p3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "responseStr"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcOfflineDownload: LoadOfflineConfigTask"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$startRunTime:J

    sub-long/2addr v4, v6

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    iget-object v7, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\uff0c\u8017\u65f6\uff1a"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    iget-object v8, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    invoke-virtual {v8}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->getTrigger()Ljava/lang/String;

    move-result-object v10

    iget-object v8, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    invoke-virtual {v8}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->isIdleRunTask()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    const/4 v14, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v8, v15

    move-object v5, v15

    move-object v15, v4

    invoke-static/range {v8 .. v15}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v2, v8, v6, v7, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v0, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v3, 0x6c

    const-string v5, "responseStr is empty!"

    invoke-direct {v2, v3, v5, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v4

    :cond_1
    :try_start_0
    new-instance v2, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1$onSuccess$response$1;

    invoke-direct {v2}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1$onSuccess$response$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v6, "object :\n               \u2026<UpdateEntity>>() {}.type"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/h5update/bean/BaseResponse;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getCode()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    new-instance v5, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getCode()I

    move-result v6

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request failed with code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and message: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x6d

    invoke-direct {v5, v6, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    return v4

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/h5update/bean/UpdateEntity;

    invoke-virtual {v5, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateOffPkgConfig(Lcom/cloud/h5update/bean/UpdateEntity;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const-string v5, "TH5Update configure conversion offPkgConfig failed!"

    const/16 v6, 0x6e

    invoke-direct {v2, v6, v5, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v4

    :cond_5
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isNeedDownload(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v5, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->diffUpdateOfflinePkgConfig(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_7

    new-instance v5, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "It"

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t require a download"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x6f

    invoke-direct {v5, v6, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v4

    :cond_8
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v2, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setOfflinePkgConfigCache(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    const-string v2, "Load offline configuration successfully"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_9

    new-instance v5, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    invoke-direct {v5, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "Exception json parse error"

    invoke-static {v3, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_9

    new-instance v3, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    return v4
.end method
