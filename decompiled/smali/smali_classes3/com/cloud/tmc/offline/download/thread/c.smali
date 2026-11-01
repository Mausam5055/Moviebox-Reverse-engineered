.class public final synthetic Lcom/cloud/tmc/offline/download/thread/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field public final synthetic b:Lcom/cloud/tmc/offline/download/task/base/ITask;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/c;->a:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/thread/c;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/thread/c;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/c;->a:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/c;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/thread/c;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->a(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
