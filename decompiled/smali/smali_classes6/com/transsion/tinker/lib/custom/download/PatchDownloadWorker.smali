.class public Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker;
.super Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public p()Landroidx/work/s$a;
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/work/s;->e()Landroidx/work/f;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroidx/work/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "patch_id"

    invoke-virtual {v1, v3}, Landroidx/work/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Tinker.DownloadWorker"

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v7

    invoke-static {v6}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v7, v8, :cond_1

    const-string v1, "patch %s already installed, skip worker"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-static {v5, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->c()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v8, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v7, v8, :cond_2

    const-string v1, "patch %s in READY state, retry after TinkerPatchService"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-static {v5, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->b()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v7, Lou/d$b;

    invoke-direct {v7, v2, v3}, Lou/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "md5"

    invoke-virtual {v1, v2}, Landroidx/work/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v2}, Lou/d$b;->u(Ljava/lang/String;)Lou/d$b;

    :cond_3
    const-string v2, "size"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v2, v8, v9}, Landroidx/work/f;->f(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-lez v2, :cond_4

    invoke-virtual {v7, v10, v11}, Lou/d$b;->x(J)Lou/d$b;

    :cond_4
    const-string v2, "mandatory"

    invoke-virtual {v1, v2, v4}, Landroidx/work/f;->c(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v7, v2}, Lou/d$b;->t(Z)Lou/d$b;

    const-string v2, "expires_at"

    invoke-virtual {v1, v2, v8, v9}, Landroidx/work/f;->f(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lou/d$b;->s(J)Lou/d$b;

    const-string v2, "download_policy"

    invoke-virtual {v1, v2}, Landroidx/work/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {v2}, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->valueOf(Ljava/lang/String;)Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    move-result-object v10

    invoke-virtual {v7, v10}, Lou/d$b;->r(Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;)Lou/d$b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v10, "unknown DownloadPolicy=\'%s\', fallback to default"

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v2, v11, v4

    invoke-static {v5, v10, v11}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    const-string v2, "retry_count"

    invoke-virtual {v1, v2, v4}, Landroidx/work/f;->d(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v7, v2}, Lou/d$b;->v(I)Lou/d$b;

    :cond_6
    const-string v2, "retry_delay_ms"

    invoke-virtual {v1, v2, v8, v9}, Landroidx/work/f;->f(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v8, v1, v8

    if-lez v8, :cond_7

    invoke-virtual {v7, v1, v2}, Lou/d$b;->w(J)Lou/d$b;

    :cond_7
    invoke-virtual {v7}, Lou/d$b;->q()Lou/d;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v9, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;

    invoke-direct {v9, p0, v7, v2, v8}, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;-><init>(Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v6, v1, v9}, Lnu/h;->q(Landroid/content/Context;Lou/d;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V

    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "background download succeeded, patchId=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-static {v5, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->c()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    instance-of v2, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager$NetworkPolicyException;

    if-eqz v2, :cond_9

    const-string v0, "network policy rejected, will retry when wifi available"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->b()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {v6}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v2

    sget-object v3, Lcom/transsion/tinker/lib/custom/api/PatchState;->DOWNLOADING:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v2, v3, :cond_a

    const-string v0, "another download in progress, retry later"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->b()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_b
    const-string v1, "unknown"

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    const-string v1, "background download failed: %s"

    invoke-static {v5, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Landroidx/work/s$a;->b()Landroidx/work/s$a;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_2
    const-string v0, "invalid input: url or patchId is empty"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object v0

    return-object v0
.end method
