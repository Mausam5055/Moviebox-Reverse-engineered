.class public final Lio/reactivex/rxjava3/internal/operators/observable/f;
.super Lio/reactivex/rxjava3/core/j;


# instance fields
.field final a:Llz/k;


# direct methods
.method public constructor <init>(Llz/k;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->a:Llz/k;

    return-void
.end method


# virtual methods
.method public D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->a:Llz/k;

    invoke-interface {v0}, Llz/k;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Supplier returned a null Throwable."

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
