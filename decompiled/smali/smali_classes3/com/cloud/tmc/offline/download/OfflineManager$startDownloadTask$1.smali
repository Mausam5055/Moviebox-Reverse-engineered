.class final Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/OfflineManager;->startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult<",
        "*>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "task",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "result",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field final synthetic $trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$trigger:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/tmc/offline/download/task/base/ITask;

    check-cast p2, Lcom/cloud/tmc/offline/download/model/TaskResult;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->invoke(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/model/TaskResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/model/TaskResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcOfflineDownload: OfflineManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$trigger:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->startTaskTrack(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/model/TaskResult;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
