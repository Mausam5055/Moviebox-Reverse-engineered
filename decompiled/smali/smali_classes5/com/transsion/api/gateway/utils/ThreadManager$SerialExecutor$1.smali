.class public Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;

.field public final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;->this$0:Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;

    iput-object p2, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;->this$0:Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;

    invoke-virtual {v0}, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;->this$0:Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;

    invoke-virtual {v1}, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->scheduleNext()V

    throw v0
.end method
