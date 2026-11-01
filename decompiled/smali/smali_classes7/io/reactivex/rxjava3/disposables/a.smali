.class public final Lio/reactivex/rxjava3/disposables/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/disposables/c;
.implements Lio/reactivex/rxjava3/disposables/d;


# instance fields
.field a:Lio/reactivex/rxjava3/internal/util/f;

.field volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/disposables/c;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/a;->c(Lio/reactivex/rxjava3/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lio/reactivex/rxjava3/disposables/c;)Z
    .locals 1

    const-string v0, "disposable is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    if-nez v0, :cond_0

    new-instance v0, Lio/reactivex/rxjava3/internal/util/f;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/f;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/f;->a(Ljava/lang/Object;)Z

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lio/reactivex/rxjava3/disposables/c;)Z
    .locals 2

    const-string v0, "disposable is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/f;->e(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/a;->e(Lio/reactivex/rxjava3/internal/util/f;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/disposables/a;->a:Lio/reactivex/rxjava3/internal/util/f;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/a;->e(Lio/reactivex/rxjava3/internal/util/f;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method e(Lio/reactivex/rxjava3/internal/util/f;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/util/f;->b()[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    instance-of v5, v4, Lio/reactivex/rxjava3/disposables/c;

    if-eqz v5, :cond_2

    :try_start_0
    check-cast v4, Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v4}, Lio/reactivex/rxjava3/disposables/c;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    new-instance p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-direct {p1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_5
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    return v0
.end method
