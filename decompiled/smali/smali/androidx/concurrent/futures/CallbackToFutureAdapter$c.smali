.class final Landroidx/concurrent/futures/CallbackToFutureAdapter$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/CallbackToFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field private final b:Landroidx/concurrent/futures/AbstractResolvableFuture;


# direct methods
.method constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c$a;

    invoke-direct {v0, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$c$a;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$c;)V

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method b(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method c(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public cancel(Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$a;

    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$a;->b()V

    :cond_0
    return p1
.end method

.method d(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->v(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
