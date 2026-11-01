.class public final Lcom/cloud/tmc/offline/download/task/DownloadTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0001%BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012 \u0008\u0002\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\t\u00a2\u0006\u0002\u0010\rJ\"\u0010\"\u001a\u00020\u000c2\u0018\u0010#\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010$H\u0016R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R2\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/DownloadTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "trigger",
        "",
        "isIdleRunTask",
        "",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V",
        "downloadFinishTime",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "downloadStartTime",
        "()Z",
        "getOffPkgConfig",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "priority",
        "",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "retryCount",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;

.field private static final RETRY_DELAY_COUNT:I = 0x3

.field private static final RETRY_DELAY_TIME:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: DownloadTask"


# instance fields
.field private final downloadFinishTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadStartTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final isIdleRunTask:Z

.field private final offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

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

.field private retryCount:I

.field private final trigger:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->Companion:Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Ljava/lang/String;",
            "Z",
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

    const-string v0, "offPkgConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTask-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->trigger:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask:Z

    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->onResult:Lkotlin/jvm/functions/Function2;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadStartTime:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadFinishTime:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPriority()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/task/DownloadTask;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getDownloadFinishTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadFinishTime:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadStartTime:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->priority:I

    return v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->trigger:Ljava/lang/String;

    return-object v0
.end method

.method public isIdleRunTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask:Z

    return v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 23
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

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getStartTaskTime()J

    move-result-wide v0

    sub-long v0, v9, v0

    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "\uff0c\u8017\u65f6\uff1a"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "ms"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    iget-object v2, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v5

    move-object/from16 v16, v15

    move-object v15, v5

    move-object v5, v0

    move-object v0, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v12, v6, v13, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTask::run() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "TmcOfflineDownload: DownloadTask"

    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->isConnected()Z

    move-result v0

    const/4 v13, 0x1

    if-nez v0, :cond_1

    const-string v0, "Network connection is not connected!"

    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    new-instance v1, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v2, 0x6b

    invoke-direct {v1, v2, v0, v13}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateDefaultZipFileInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;->getZipCacheAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    const-string v0, "Unable to create zip directory"

    invoke-static {v12, v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    if-eqz v8, :cond_3

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v18, 0x0

    const-string v19, "Offline cache file deletion failed"

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0, v1}, Lcom/cloud/h5update/TH5Update$a;->o(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz v8, :cond_5

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v18, 0x0

    const-string v19, "Offline cache extra config is null or empty"

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v2, v13

    :cond_8
    if-eqz v2, :cond_a

    if-eqz v8, :cond_9

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v18, 0x0

    const-string v19, "Offline resource is null or empty"

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void

    :cond_a
    sget-object v2, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOnUpdateCallback$com_cloud_tmc_offline_download()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;

    move-result-object v4

    if-eqz v4, :cond_c

    if-eqz v8, :cond_b

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v18, 0x0

    const-string v19, "Offline has downloadTask is running..."

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void

    :cond_c
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v13, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;

    invoke-direct {v13, v7, v4, v15, v5}, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;-><init>(Lcom/cloud/tmc/offline/download/task/DownloadTask;Ljava/util/concurrent/CountDownLatch;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v2, v13}, Lcom/cloud/tmc/offline/download/OfflineManager;->setOnUpdateCallback$com_cloud_tmc_offline_download(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    :try_start_1
    sget-object v5, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v5, v0}, Lcom/cloud/h5update/utils/l;->p(Lcom/cloud/h5update/bean/UpdateEntity;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v0

    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "await: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    :try_start_3
    iget-object v3, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportDownloadRecord(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/cloud/tmc/offline/download/OfflineManager;->setOnUpdateCallback$com_cloud_tmc_offline_download(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getTrigger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v2, v4

    move-object v3, v5

    move-object v4, v11

    move-object v5, v13

    move-object v11, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v11, v9, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    iget-object v1, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download completed. offPkgConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_d
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    const-string v1, "Download failed"

    const/16 v2, 0x71

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    :goto_1
    if-eqz v8, :cond_e

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    :goto_2
    const-string v1, "Error processing update entity"

    invoke-static {v12, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v8, :cond_e

    new-instance v1, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_3
    return-void

    :cond_f
    :goto_4
    if-eqz v8, :cond_11

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    iget-object v1, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v1, "The"

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offline package download group is empty"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
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

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->priority:I

    return-void
.end method
