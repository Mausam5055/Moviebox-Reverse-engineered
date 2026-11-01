.class Lv10/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv10/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/core/o;

.field private b:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv10/a$a;->a:Lio/reactivex/rxjava3/core/o;

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/j0;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lretrofit2/j0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lv10/a$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-virtual {p1}, Lretrofit2/j0;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lv10/a$a;->b:Z

    new-instance v1, Lretrofit2/adapter/rxjava3/HttpException;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava3/HttpException;-><init>(Lretrofit2/j0;)V

    :try_start_0
    iget-object p1, p0, Lv10/a$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lpz/a;->r(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lv10/a$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv10/a$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lv10/a$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv10/a$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {v0}, Lpz/a;->r(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lretrofit2/j0;

    invoke-virtual {p0, p1}, Lv10/a$a;->a(Lretrofit2/j0;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lv10/a$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
