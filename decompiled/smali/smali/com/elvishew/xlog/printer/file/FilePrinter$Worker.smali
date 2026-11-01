.class Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elvishew/xlog/printer/file/FilePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private logs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/elvishew/xlog/printer/file/FilePrinter$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile started:Z

.field final synthetic this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;


# direct methods
.method private constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter;)V
    .locals 0

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->logs:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter;Lcom/elvishew/xlog/printer/file/FilePrinter$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter;)V

    return-void
.end method


# virtual methods
.method enqueue(Lcom/elvishew/xlog/printer/file/FilePrinter$c;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->logs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method isStarted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->logs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;

    iget-wide v2, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->a:J

    iget v4, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->b:I

    iget-object v5, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->d:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/elvishew/xlog/printer/file/FilePrinter;->b(Lcom/elvishew/xlog/printer/file/FilePrinter;JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
