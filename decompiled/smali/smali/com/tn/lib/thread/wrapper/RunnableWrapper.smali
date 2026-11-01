.class public final Lcom/tn/lib/thread/wrapper/RunnableWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000b\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tn/lib/thread/wrapper/RunnableWrapper;",
        "Ljava/lang/Runnable;",
        "Leh/d;",
        "localConfigs",
        "<init>",
        "(Leh/d;)V",
        "runnable",
        "setRunnable",
        "(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;",
        "Ljava/util/concurrent/Callable;",
        "callable",
        "setCallable",
        "(Ljava/util/concurrent/Callable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;",
        "",
        "run",
        "()V",
        "",
        "threadName",
        "Ljava/lang/String;",
        "Ljava/lang/Runnable;",
        "Lfh/i;",
        "dispatcher",
        "Lfh/i;",
        "Ljava/util/concurrent/Callable;",
        "thread_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation
.end field

.field private dispatcher:Lfh/i;

.field private runnable:Ljava/lang/Runnable;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leh/d;)V
    .locals 3

    const-string v0, "localConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Leh/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    new-instance v0, Lfh/i;

    invoke-virtual {p1}, Leh/d;->d()Ldh/b;

    move-result-object v1

    invoke-virtual {p1}, Leh/d;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1}, Leh/d;->a()Ldh/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lfh/i;-><init>(Ldh/b;Ljava/util/concurrent/Executor;Ldh/a;)V

    iput-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lfh/i;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Leh/f;->a:Leh/f$a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lfh/i;

    invoke-virtual {v1, v0, v2, v3}, Leh/f$a;->b(Ljava/lang/Thread;Ljava/lang/String;Ldh/b;)V

    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lfh/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfh/i;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->callable:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lfh/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lfh/i;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lfh/i;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfh/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lfh/i;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfh/i;->onCompleted(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final setCallable(Ljava/util/concurrent/Callable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lcom/tn/lib/thread/wrapper/RunnableWrapper;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->callable:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public final setRunnable(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method
