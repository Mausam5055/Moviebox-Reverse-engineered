.class public abstract Lio/reactivex/rxjava3/internal/util/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(ZZLio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)Z
    .locals 2

    invoke-interface {p6}, Lio/reactivex/rxjava3/internal/util/e;->cancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p4}, Lio/reactivex/rxjava3/operators/g;->clear()V

    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return v1

    :cond_0
    if-eqz p0, :cond_7

    if-eqz p3, :cond_3

    if-eqz p1, :cond_7

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_1
    invoke-interface {p6}, Lio/reactivex/rxjava3/internal/util/e;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    :goto_0
    return v1

    :cond_3
    invoke-interface {p6}, Lio/reactivex/rxjava3/internal/util/e;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p4}, Lio/reactivex/rxjava3/operators/g;->clear()V

    if-eqz p5, :cond_4

    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_4
    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_5
    if-eqz p1, :cond_7

    if-eqz p5, :cond_6

    invoke-interface {p5}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_6
    invoke-interface {p2}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static b(ZZLu10/c;ZLio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/internal/util/h;)Z
    .locals 2

    invoke-interface {p5}, Lio/reactivex/rxjava3/internal/util/h;->cancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p4}, Lio/reactivex/rxjava3/operators/g;->clear()V

    return v1

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p5}, Lio/reactivex/rxjava3/internal/util/h;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2, p0}, Lu10/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lu10/c;->onComplete()V

    :goto_0
    return v1

    :cond_2
    invoke-interface {p5}, Lio/reactivex/rxjava3/internal/util/h;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p4}, Lio/reactivex/rxjava3/operators/g;->clear()V

    invoke-interface {p2, p0}, Lu10/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p2}, Lu10/c;->onComplete()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)Lio/reactivex/rxjava3/operators/g;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Lio/reactivex/rxjava3/operators/h;

    neg-int p0, p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/operators/h;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

.method public static d(Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)V
    .locals 11

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/e;->done()Z

    move-result v2

    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    move-result v3

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lio/reactivex/rxjava3/internal/util/i;->a(ZZLio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/e;->done()Z

    move-result v3

    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move v10, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v10, v4

    :goto_1
    move v4, v10

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Lio/reactivex/rxjava3/internal/util/i;->a(ZZLio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_4

    neg-int v1, v1

    invoke-interface {p4, v1}, Lio/reactivex/rxjava3/internal/util/e;->leave(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_4
    invoke-interface {p4, p1, v2}, Lio/reactivex/rxjava3/internal/util/e;->accept(Lio/reactivex/rxjava3/core/o;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Lio/reactivex/rxjava3/operators/f;Lu10/c;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/h;)V
    .locals 10

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/h;->done()Z

    move-result v2

    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v9, v3

    :goto_1
    move v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxjava3/internal/util/i;->b(ZZLu10/c;ZLio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/internal/util/h;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_2
    return-void

    :cond_3
    if-eqz v9, :cond_4

    neg-int v1, v1

    invoke-interface {p4, v1}, Lio/reactivex/rxjava3/internal/util/h;->leave(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_4
    invoke-interface {p4}, Lio/reactivex/rxjava3/internal/util/h;->requested()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    invoke-interface {p4, p1, v8}, Lio/reactivex/rxjava3/internal/util/h;->accept(Lu10/c;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    invoke-interface {p4, v2, v3}, Lio/reactivex/rxjava3/internal/util/h;->produced(J)J

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    if-eqz p3, :cond_6

    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_6
    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    move-result-object p0

    invoke-interface {p1, p0}, Lu10/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f(Lu10/d;I)V
    .locals 2

    if-gez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    :goto_0
    invoke-interface {p0, v0, v1}, Lu10/d;->request(J)V

    return-void
.end method
