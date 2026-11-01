.class Lcom/cloud/tmc/fps/ReportManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/fps/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/fps/ReportManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/fps/ReportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->a(Lcom/cloud/tmc/fps/ReportManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/cloud/tmc/fps/ReportManager;->d(Lcom/cloud/tmc/fps/ReportManager;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-static {v0}, Lcom/cloud/tmc/fps/ReportManager;->b(Lcom/cloud/tmc/fps/ReportManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/fps/FpsConfig;->getTraceInterval()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
