.class public final synthetic Lcom/cloud/tmc/offline/download/thread/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic b:Lcom/cloud/tmc/offline/download/task/base/ITask;

.field public final synthetic c:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/a;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/thread/a;->c:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/thread/a;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/a;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/a;->c:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/thread/a;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->b(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method
