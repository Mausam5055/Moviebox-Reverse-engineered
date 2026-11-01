.class public Lcom/transsion/transfer/androidasync/future/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/b;


# static fields
.field public static final CANCELLED:Lcom/transsion/transfer/androidasync/future/a;

.field public static final COMPLETED:Lcom/transsion/transfer/androidasync/future/a;


# instance fields
.field cancelled:Z

.field complete:Z

.field private parent:Lcom/transsion/transfer/androidasync/future/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/future/n$a;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/n$a;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/future/n;->COMPLETED:Lcom/transsion/transfer/androidasync/future/a;

    new-instance v0, Lcom/transsion/transfer/androidasync/future/n$b;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/n$b;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/future/n;->CANCELLED:Lcom/transsion/transfer/androidasync/future/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->complete:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/future/n;->cancelled:Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/n;->parent:Lcom/transsion/transfer/androidasync/future/a;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/transfer/androidasync/future/n;->parent:Lcom/transsion/transfer/androidasync/future/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->cancelCleanup()V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->cleanup()V

    return v1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected cancelCleanup()V
    .locals 0

    return-void
.end method

.method protected cleanup()V
    .locals 0

    return-void
.end method

.method protected completeCleanup()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/n;->parent:Lcom/transsion/transfer/androidasync/future/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->complete:Z

    return v0
.end method

.method public reset()Lcom/transsion/transfer/androidasync/future/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->cancel()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->complete:Z

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->cancelled:Z

    return-object p0
.end method

.method public setComplete()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->cancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->complete:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/n;->complete:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/future/n;->parent:Lcom/transsion/transfer/androidasync/future/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->completeCleanup()V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->cleanup()V

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setParent(Lcom/transsion/transfer/androidasync/future/a;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/n;->parent:Lcom/transsion/transfer/androidasync/future/a;

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
