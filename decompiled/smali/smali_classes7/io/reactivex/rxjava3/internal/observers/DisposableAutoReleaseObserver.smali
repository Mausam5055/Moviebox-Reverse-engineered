.class public final Lio/reactivex/rxjava3/internal/observers/DisposableAutoReleaseObserver;
.super Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;",
        "Lio/reactivex/rxjava3/core/o;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bda1fe6f9c496d6L


# instance fields
.field final onNext:Llz/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/disposables/d;Llz/f;Llz/f;Llz/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/disposables/d;",
            "Llz/f;",
            "Llz/f;",
            "Llz/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;-><init>(Lio/reactivex/rxjava3/disposables/d;Llz/f;Llz/a;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/observers/DisposableAutoReleaseObserver;->onNext:Llz/f;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/DisposableAutoReleaseObserver;->onNext:Llz/f;

    invoke-interface {v0, p1}, Llz/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
