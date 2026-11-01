.class final Lv10/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/disposables/c;
.implements Lretrofit2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv10/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lretrofit2/d;

.field private final b:Lio/reactivex/rxjava3/core/o;

.field private volatile c:Z

.field d:Z


# direct methods
.method constructor <init>(Lretrofit2/d;Lio/reactivex/rxjava3/core/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv10/b$a;->d:Z

    iput-object p1, p0, Lv10/b$a;->a:Lretrofit2/d;

    iput-object p2, p0, Lv10/b$a;->b:Lio/reactivex/rxjava3/core/o;

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/d;Ljava/lang/Throwable;)V
    .locals 3

    invoke-interface {p1}, Lretrofit2/d;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lv10/b$a;->b:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lpz/a;->r(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lretrofit2/d;Lretrofit2/j0;)V
    .locals 4

    const/4 p1, 0x1

    iget-boolean v0, p0, Lv10/b$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lv10/b$a;->b:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lv10/b$a;->c:Z

    if-nez p2, :cond_2

    iput-boolean p1, p0, Lv10/b$a;->d:Z

    iget-object p2, p0, Lv10/b$a;->b:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p2}, Lio/reactivex/rxjava3/core/o;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p2}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lv10/b$a;->d:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Lpz/a;->r(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lv10/b$a;->c:Z

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lv10/b$a;->b:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p2}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv10/b$a;->c:Z

    iget-object v0, p0, Lv10/b$a;->a:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lv10/b$a;->c:Z

    return v0
.end method
