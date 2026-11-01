.class Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

.field private final b:Lcom/mbridge/msdk/dycreator/bus/EventBus;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    new-instance p1, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    invoke-direct {p1}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)Lcom/mbridge/msdk/dycreator/bus/PendingPost;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;->a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V

    sget-object p1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->n:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;->a()Lcom/mbridge/msdk/dycreator/bus/PendingPost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
