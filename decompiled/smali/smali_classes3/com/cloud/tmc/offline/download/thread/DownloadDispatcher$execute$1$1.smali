.class final Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/tmc/offline/download/model/TaskResult<",
        "*>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $task:Lcom/cloud/tmc/offline/download/task/base/ITask;

.field final synthetic $this_apply:Lcom/cloud/tmc/offline/download/task/base/ITask;

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->$this_apply:Lcom/cloud/tmc/offline/download/task/base/ITask;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->this$0:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->$task:Lcom/cloud/tmc/offline/download/task/base/ITask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/tmc/offline/download/model/TaskResult;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->invoke(Lcom/cloud/tmc/offline/download/model/TaskResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/cloud/tmc/offline/download/model/TaskResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->$this_apply:Lcom/cloud/tmc/offline/download/task/base/ITask;

    invoke-interface {v0}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getOnResult()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->$this_apply:Lcom/cloud/tmc/offline/download/task/base/ITask;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/TaskResult;->getDelay()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->this$0:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;->$task:Lcom/cloud/tmc/offline/download/task/base/ITask;

    invoke-static {p1, v0}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->access$execute(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    :cond_1
    return-void
.end method
