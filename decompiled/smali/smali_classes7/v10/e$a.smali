.class Lv10/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv10/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/core/o;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/j0;)V
    .locals 1

    iget-object v0, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-static {p1}, Lv10/d;->b(Lretrofit2/j0;)Lv10/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-static {p1}, Lv10/d;->a(Ljava/lang/Throwable;)Lv10/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V
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

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lretrofit2/j0;

    invoke-virtual {p0, p1}, Lv10/e$a;->a(Lretrofit2/j0;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lv10/e$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
