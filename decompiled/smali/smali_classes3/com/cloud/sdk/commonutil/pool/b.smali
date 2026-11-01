.class public Lcom/cloud/sdk/commonutil/pool/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/cloud/sdk/commonutil/pool/b;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/cloud/sdk/commonutil/pool/b;
    .locals 3

    sget-object v0, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    if-nez v0, :cond_2

    const-class v0, Lcom/cloud/sdk/commonutil/pool/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    if-nez v1, :cond_1

    new-instance v1, Lcom/cloud/sdk/commonutil/pool/b;

    invoke-direct {v1}, Lcom/cloud/sdk/commonutil/pool/b;-><init>()V

    sput-object v1, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    sget-object v1, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    sget-object v2, Lcom/cloud/sdk/commonutil/pool/b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->b()Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_3
    sget-object v0, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    :cond_0
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
