.class Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;
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

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v2}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->c(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
