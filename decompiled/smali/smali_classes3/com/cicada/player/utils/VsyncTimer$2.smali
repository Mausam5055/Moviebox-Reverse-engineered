.class Lcom/cicada/player/utils/VsyncTimer$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/VsyncTimer;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cicada/player/utils/VsyncTimer;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/VsyncTimer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {p1}, Lcom/cicada/player/utils/VsyncTimer;->access$000(Lcom/cicada/player/utils/VsyncTimer;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/cicada/player/utils/VsyncTimer;->access$300(Lcom/cicada/player/utils/VsyncTimer;J)I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$400()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$700()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {p1}, Lcom/cicada/player/utils/VsyncTimer;->access$000(Lcom/cicada/player/utils/VsyncTimer;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/cicada/player/utils/VsyncTimer;->access$800(Lcom/cicada/player/utils/VsyncTimer;J)V

    iget-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {p1}, Lcom/cicada/player/utils/VsyncTimer;->access$900(Lcom/cicada/player/utils/VsyncTimer;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iget-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/cicada/player/utils/VsyncTimer;->access$002(Lcom/cicada/player/utils/VsyncTimer;J)J

    iget-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {p1}, Lcom/cicada/player/utils/VsyncTimer;->access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method
