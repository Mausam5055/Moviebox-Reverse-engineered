.class public final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B%\u0012\u001e\u0010\u0002\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\"\u0010\u000f\u001a\u00020\u00062\u0018\u0010\u0010\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011H\u0016R2\u0010\u0002\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "trigger",
        "",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$Companion;

.field private static final TAG:Ljava/lang/String; = "PrePullAppInfoCheckTask"


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;->Companion:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 6
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

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "PrePullAppInfoCheckTask"

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;->onResult:Lkotlin/jvm/functions/Function2;

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

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    const-string v0, "idle"

    return-object v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 7
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

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "PrePullAppInfoCheckTask"

    if-eqz v0, :cond_1

    const-string v0, "\u5f00\u542f\u4e86\u5f3a\u5236\u5237\u65b0\u7cbe\u9009 AppInfo\uff0c\u8df3\u8fc7\u68c0\u67e5\u6b65\u9aa4"

    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    const-string v4, "step_download"

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$run$downloadStepBlock$1;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask$run$downloadStepBlock$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isNotLegalZip()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "\u5df2\u4e0b\u8f7d\uff0c\u68c0\u67e5\u4e0d\u662f\u5408\u6cd5 zip \u5305"

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->isParsed()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p1, "\u5df2\u4e0b\u8f7d\u4e14\u5df2\u89e3\u6790\u6210\u529f"

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_3
    if-eqz p1, :cond_4

    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    const-string v4, "step_unzip"

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method
