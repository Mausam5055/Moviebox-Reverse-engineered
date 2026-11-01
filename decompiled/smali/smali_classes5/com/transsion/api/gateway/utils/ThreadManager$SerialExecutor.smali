.class public Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/utils/ThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerialExecutor"
.end annotation


# instance fields
.field public mActive:Ljava/lang/Runnable;

.field public final mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->mTasks:Ljava/util/Queue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/api/gateway/utils/ThreadManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->mTasks:Ljava/util/Queue;

    new-instance v1, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor$1;-><init>(Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->mTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
