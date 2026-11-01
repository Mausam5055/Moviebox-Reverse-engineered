.class Lcom/blankj/utilcode/util/ThreadUtils$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic val$pool:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$pool:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$pool:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
