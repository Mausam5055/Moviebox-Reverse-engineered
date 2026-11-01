.class public final Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/offline/o;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lw1/h;

.field private final c:Landroidx/media3/datasource/cache/a;

.field private final d:Landroidx/media3/datasource/cache/i;

.field private final e:Landroidx/media3/common/PriorityTaskManager;

.field private f:Landroidx/media3/exoplayer/offline/o$a;

.field private volatile g:Landroidx/media3/common/util/RunnableFutureTask;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/t;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->a:Ljava/util/concurrent/Executor;

    iget-object p3, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lw1/h$b;

    invoke-direct {p3}, Lw1/h$b;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v0, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object p3

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object p1, p1, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->b:Lw1/h;

    invoke-virtual {p2}, Landroidx/media3/datasource/cache/a$c;->c()Landroidx/media3/datasource/cache/a;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->c:Landroidx/media3/datasource/cache/a;

    new-instance v0, Lcom/transsion/player/shorttv/preload/r;

    invoke-direct {v0, p0}, Lcom/transsion/player/shorttv/preload/r;-><init>(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;)V

    new-instance v1, Landroidx/media3/datasource/cache/i;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p1, v2, v0}, Landroidx/media3/datasource/cache/i;-><init>(Landroidx/media3/datasource/cache/a;Lw1/h;[BLandroidx/media3/datasource/cache/i$a;)V

    iput-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->d:Landroidx/media3/datasource/cache/i;

    invoke-virtual {p2}, Landroidx/media3/datasource/cache/a$c;->h()Landroidx/media3/common/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->d(JJJ)V

    return-void
.end method

.method static bridge synthetic c(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;)Landroidx/media3/datasource/cache/i;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->d:Landroidx/media3/datasource/cache/i;

    return-object p0
.end method

.method private d(JJJ)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->f:Landroidx/media3/exoplayer/offline/o$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 p5, -0x1

    cmp-long p5, p1, p5

    if-eqz p5, :cond_2

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    long-to-float p5, p3

    const/high16 p6, 0x42c80000    # 100.0f

    mul-float/2addr p5, p6

    long-to-float p6, p1

    div-float/2addr p5, p6

    :goto_0
    move v5, p5

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 p5, -0x40800000    # -1.0f

    goto :goto_0

    :goto_2
    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/o$a;->onProgress(JJF)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/o$a;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->f:Landroidx/media3/exoplayer/offline/o$a;

    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    const/16 v0, -0xfa0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/PriorityTaskManager;->a(I)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->h:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader$1;

    invoke-direct {v1, p0}, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader$1;-><init>(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;)V

    iput-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/media3/common/PriorityTaskManager;->b(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_3

    invoke-static {v1}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    :cond_4
    throw p1

    :cond_5
    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    :cond_6
    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->h:Z

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 0

    return-void
.end method
