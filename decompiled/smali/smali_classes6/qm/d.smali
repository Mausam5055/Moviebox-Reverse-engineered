.class public abstract Lqm/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
