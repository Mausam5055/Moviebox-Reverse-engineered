.class Lcom/bytedance/sdk/component/Dq/Sj;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    }
.end annotation


# instance fields
.field private Sj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    return-void
.end method

.method private Sj(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V

    return-void
.end method

.method private Sj(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Sj(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private Sj(Ljava/util/concurrent/BlockingQueue;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-gtz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private Sj(Ljava/util/concurrent/BlockingQueue;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lt p1, p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Jcg()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "aidl"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "log"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "io"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;I)V

    return-void

    :pswitch_1
    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;I)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xd26 -> :sswitch_2
        0x1a344 -> :sswitch_1
        0x2daeb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x2

    instance-of v1, p1, Lcom/bytedance/sdk/component/Dq/Dq;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/sP;

    check-cast p1, Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/sdk/component/Dq/sP;-><init>(Lcom/bytedance/sdk/component/Dq/Dq;Lcom/bytedance/sdk/component/Dq/Sj;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$1;

    const-string v2, "unknown"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/component/Dq/Sj$1;-><init>(Lcom/bytedance/sdk/component/Dq/Sj;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance p1, Lcom/bytedance/sdk/component/Dq/sP;

    invoke-direct {p1, v1, p0}, Lcom/bytedance/sdk/component/Dq/sP;-><init>(Lcom/bytedance/sdk/component/Dq/Dq;Lcom/bytedance/sdk/component/Dq/Sj;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;)V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Jcg()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "aidl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string v3, "log"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "io"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;II)V

    return-void

    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;II)V

    goto :goto_2

    :pswitch_2
    sget v1, Lcom/bytedance/sdk/component/Dq/vS;->Sj:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-direct {p0, p1, v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;II)V

    :cond_4
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xd26 -> :sswitch_2
        0x1a344 -> :sswitch_1
        0x2daeb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "io"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "aidl"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const-string v0, "io"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "aidl"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
