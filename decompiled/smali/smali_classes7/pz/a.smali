.class public abstract Lpz/a;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Llz/f;

.field static volatile b:Llz/h;

.field static volatile c:Llz/h;

.field static volatile d:Llz/h;

.field static volatile e:Llz/h;

.field static volatile f:Llz/h;

.field static volatile g:Llz/h;

.field static volatile h:Llz/h;

.field static volatile i:Llz/h;

.field static volatile j:Llz/h;

.field static volatile k:Llz/h;

.field static volatile l:Llz/h;

.field static volatile m:Llz/h;

.field static volatile n:Llz/c;

.field static volatile o:Llz/c;

.field static volatile p:Llz/c;

.field static volatile q:Llz/c;

.field static volatile r:Llz/c;

.field static volatile s:Z


# direct methods
.method static A(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static a(Llz/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2}, Llz/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Llz/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static c(Llz/h;Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    invoke-static {p0, p1}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Supplier result can\'t be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method static d(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Llz/k;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Supplier result can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static e(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public static f(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lpz/a;->c:Llz/h;

    if-nez v0, :cond_0

    invoke-static {p0}, Lpz/a;->d(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->c(Llz/h;Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static g(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lpz/a;->e:Llz/h;

    if-nez v0, :cond_0

    invoke-static {p0}, Lpz/a;->d(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->c(Llz/h;Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static h(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lpz/a;->f:Llz/h;

    if-nez v0, :cond_0

    invoke-static {p0}, Lpz/a;->d(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->c(Llz/h;Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static i(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lpz/a;->d:Llz/h;

    if-nez v0, :cond_0

    invoke-static {p0}, Lpz/a;->d(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->c(Llz/h;Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/OnErrorNotImplementedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_5

    return v1

    :cond_5
    instance-of p0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lpz/a;->s:Z

    return v0
.end method

.method public static l(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;
    .locals 1

    sget-object v0, Lpz/a;->m:Llz/h;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/a;

    :cond_0
    return-object p0
.end method

.method public static m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;
    .locals 1

    sget-object v0, Lpz/a;->i:Llz/h;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/e;

    :cond_0
    return-object p0
.end method

.method public static n(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g;
    .locals 1

    sget-object v0, Lpz/a;->k:Llz/h;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/g;

    :cond_0
    return-object p0
.end method

.method public static o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    sget-object v0, Lpz/a;->j:Llz/h;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/j;

    :cond_0
    return-object p0
.end method

.method public static p(Lio/reactivex/rxjava3/core/p;)Lio/reactivex/rxjava3/core/p;
    .locals 1

    sget-object v0, Lpz/a;->l:Llz/h;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/p;

    :cond_0
    return-object p0
.end method

.method public static q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static r(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lpz/a;->a:Llz/f;

    if-nez p0, :cond_0

    const-string p0, "onError called with a null Throwable."

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lpz/a;->j(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lio/reactivex/rxjava3/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p0}, Llz/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lpz/a;->A(Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lpz/a;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static s(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lpz/a;->h:Llz/h;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static t(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lpz/a;->b:Llz/h;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public static u(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lpz/a;->g:Llz/h;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lpz/a;->b(Llz/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static v(Lio/reactivex/rxjava3/core/a;Lio/reactivex/rxjava3/core/b;)Lio/reactivex/rxjava3/core/b;
    .locals 1

    sget-object v0, Lpz/a;->r:Llz/c;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lpz/a;->a(Llz/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/b;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static w(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/h;)Lio/reactivex/rxjava3/core/h;
    .locals 1

    sget-object v0, Lpz/a;->o:Llz/c;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lpz/a;->a(Llz/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/h;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static x(Lio/reactivex/rxjava3/core/j;Lio/reactivex/rxjava3/core/o;)Lio/reactivex/rxjava3/core/o;
    .locals 1

    sget-object v0, Lpz/a;->p:Llz/c;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lpz/a;->a(Llz/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/o;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static y(Lio/reactivex/rxjava3/core/p;Lio/reactivex/rxjava3/core/q;)Lio/reactivex/rxjava3/core/q;
    .locals 1

    sget-object v0, Lpz/a;->q:Llz/c;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lpz/a;->a(Llz/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/q;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static z(Lio/reactivex/rxjava3/core/e;Lu10/c;)Lu10/c;
    .locals 1

    sget-object v0, Lpz/a;->n:Llz/c;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lpz/a;->a(Llz/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu10/c;

    return-object p0

    :cond_0
    return-object p1
.end method
