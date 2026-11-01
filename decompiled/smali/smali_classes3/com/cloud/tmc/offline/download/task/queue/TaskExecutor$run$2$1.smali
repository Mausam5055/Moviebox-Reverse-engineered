.class final Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
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

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;->this$0:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;->$task:Lcom/cloud/tmc/offline/download/task/base/ITask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/tmc/offline/download/task/base/ITask;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;->invoke(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;->this$0:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;->$task:Lcom/cloud/tmc/offline/download/task/base/ITask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run task finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;->this$0:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    invoke-static {p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->access$getInFlightTasks$p(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
