.class final Lcom/apm/insight/runtime/p$b;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private volatile a:I

.field private volatile b:Z

.field private synthetic c:Lcom/apm/insight/runtime/p;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/runtime/p$b;->c:Lcom/apm/insight/runtime/p;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apm/insight/runtime/p$b;->a:I

    iput-boolean p1, p0, Lcom/apm/insight/runtime/p$b;->b:Z

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 4

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/apm/insight/runtime/p$b;->c:Lcom/apm/insight/runtime/p;

    invoke-static {v0}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/runtime/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/apm/insight/runtime/p$b;->c:Lcom/apm/insight/runtime/p;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/runtime/p;Landroid/os/Handler;)Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/apm/insight/runtime/p$b;->c:Lcom/apm/insight/runtime/p;

    invoke-static {v0}, Lcom/apm/insight/runtime/p;->b(Lcom/apm/insight/runtime/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/runtime/p$a;

    iget-object v2, p0, Lcom/apm/insight/runtime/p$b;->c:Lcom/apm/insight/runtime/p;

    invoke-direct {v1, v2}, Lcom/apm/insight/runtime/p$a;-><init>(Lcom/apm/insight/runtime/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catchall_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apm/insight/b/f;->a(Landroid/content/Context;)Lcom/apm/insight/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/b/f;->a()Lcom/apm/insight/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/b/b;->c()V

    iget v1, p0, Lcom/apm/insight/runtime/p$b;->a:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v1, "NPTH_CATCH"

    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/apm/insight/runtime/p$b;->b:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/apm/insight/runtime/p$b;->b:Z

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v0, "NPTH_ERR_MAX"

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v0}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/apm/insight/runtime/p$b;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/apm/insight/runtime/p$b;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
