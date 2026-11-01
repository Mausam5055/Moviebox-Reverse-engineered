.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate;
.super Lio/reactivex/rxjava3/core/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$SerializedEmitter;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate;->a:Lio/reactivex/rxjava3/core/l;

    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Lio/reactivex/rxjava3/core/o;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    :try_start_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate;->a:Lio/reactivex/rxjava3/core/l;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l;->a(Lio/reactivex/rxjava3/core/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
