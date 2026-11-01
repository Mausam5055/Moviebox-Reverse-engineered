.class Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/logging/EventLogDispatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
