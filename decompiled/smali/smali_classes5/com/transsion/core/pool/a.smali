.class public Lcom/transsion/core/pool/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/core/pool/b;


# static fields
.field private static volatile b:Lcom/transsion/core/pool/a;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/transsion/core/pool/a;
    .locals 3

    sget-object v0, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/core/pool/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/core/pool/a;

    invoke-direct {v1}, Lcom/transsion/core/pool/a;-><init>()V

    sput-object v1, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    sget-object v1, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    invoke-static {}, Lcom/transsion/core/pool/TranssionPoolExecutor;->c()Lcom/transsion/core/pool/TranssionPoolExecutor;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    :cond_0
    iget-object v0, p0, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
