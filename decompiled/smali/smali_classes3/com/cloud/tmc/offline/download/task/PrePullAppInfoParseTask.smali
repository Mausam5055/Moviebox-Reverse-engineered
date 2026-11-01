.class public final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ2\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00032\u0018\u0010\u0015\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0016H\u0002J\"\u0010\u0017\u001a\u00020\u00082\u0018\u0010\u0015\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0016H\u0002J\"\u0010\u0018\u001a\u00020\u00082\u0018\u0010\u0015\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0016H\u0016R2\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "previousStep",
        "",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "trigger",
        "getTrigger",
        "()Ljava/lang/String;",
        "parseAppInfo",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "zipUnCompressPath",
        "block",
        "Lkotlin/Function1;",
        "parseFailure",
        "run",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;

.field private static final TAG:Ljava/lang/String; = "PrePullAppInfoParseTask"


# instance fields
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

.field private final previousStep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->Companion:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "previousStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "PrePullAppInfoParseTask"

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getPreviousStep$p(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$parseAppInfo(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseAppInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$parseFailure(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final parseAppInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$parseAppInfo$loadCdnAppInfo$1;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$parseAppInfo$loadCdnAppInfo$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, p2, v2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->loadCdnAppInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    if-nez p2, :cond_1

    const-string v4, "107"

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_1
    const-string v4, "200"

    goto :goto_1

    :goto_2
    if-nez p2, :cond_2

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v10, v1

    goto :goto_4

    :cond_2
    const-string v1, "success"

    goto :goto_3

    :goto_4
    const-string v1, "if (loadCdnAppInfo == nu\u2026arseError) else \"success\""

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object v6, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v8

    const-string v5, "step_parse"

    invoke-virtual/range {v4 .. v10}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackPrePullCdnRecord(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PrePullAppInfoParseTask"

    if-nez p2, :cond_3

    new-instance p2, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    const-string p1, "loadCdnAppInfo is not valid"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ne p3, v0, :cond_4

    sget-object p3, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v0, "eofflineafq"

    invoke-virtual {p3, v0, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_5

    :cond_4
    move p3, v3

    :goto_5
    if-eqz p3, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, "loadCdnAppInfo.iterator()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "iterator.next()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;->getAppInfo()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_7

    :cond_6
    move v5, v2

    goto :goto_8

    :cond_7
    :goto_7
    move v5, v3

    :goto_8
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790\u5b58\u50a8 appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_5

    const-class v6, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_cdn"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v0, v4}, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;->updateAppModelByOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u6790\u5b8c\u6210\uff0c\u89e3\u6790\u6570\u91cf\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    new-instance p3, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    return-void
.end method

.method private final parseFailure(Lkotlin/jvm/functions/Function1;)V
    .locals 5
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

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    const-string v1, "step_check"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isAllowRequest()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u67e5\u95f4\u9694\u65f6\u95f4\u662f\u5426\u5141\u8bb8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrePullAppInfoParseTask"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "step_download"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    const-string v0, "idle"

    return-object v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 13
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

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->previousStep:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previousStep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrePullAppInfoParseTask"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u4e0d\u6267\u884c\u89e3\u6790"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generateDownloadFile(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Generating download file failed"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v0, "parentFile is null"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->parseFailure(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "unzip path is not exists"

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "parentFile.absolutePath"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->checkCdnAppInfoFileAndDelete(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$run$1;

    invoke-direct {v4, p0, v2, p1, v3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask$run$1;-><init>(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->unzipFile(Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

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

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method
