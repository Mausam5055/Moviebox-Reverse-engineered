.class public abstract Lio/reactivex/rxjava3/core/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/m;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static G(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lio/reactivex/rxjava3/core/j;

    if-eqz v0, :cond_0

    check-cast p0, Lio/reactivex/rxjava3/core/j;

    invoke-static {p0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/h;-><init>(Lio/reactivex/rxjava3/core/m;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method public static H(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/m;Llz/g;)Lio/reactivex/rxjava3/core/j;
    .locals 3

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->c(Llz/g;)Llz/h;

    move-result-object p3

    invoke-static {}, Lio/reactivex/rxjava3/core/j;->e()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/rxjava3/core/m;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, Lio/reactivex/rxjava3/core/j;->I(Llz/h;ZI[Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I(Llz/h;ZI[Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/j;
    .locals 7

    const-string v0, "sources is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p3

    if-nez v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/j;->k()Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;-><init>([Lio/reactivex/rxjava3/core/m;Ljava/lang/Iterable;Llz/h;IZ)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method public static e()I
    .locals 1

    invoke-static {}, Lio/reactivex/rxjava3/core/e;->a()I

    move-result v0

    return v0
.end method

.method public static g(Lio/reactivex/rxjava3/core/l;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate;-><init>(Lio/reactivex/rxjava3/core/l;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method private i(Llz/f;Llz/f;Llz/a;Llz/a;)Lio/reactivex/rxjava3/core/j;
    .locals 7

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/d;-><init>(Lio/reactivex/rxjava3/core/m;Llz/f;Llz/f;Llz/a;Llz/a;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public static k()Lio/reactivex/rxjava3/core/j;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/e;->a:Lio/reactivex/rxjava3/core/j;

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "throwable is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/functions/Functions;->b(Ljava/lang/Object;)Llz/k;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/j;->m(Llz/k;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method public static m(Llz/k;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/f;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/f;-><init>(Llz/k;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "callable is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/g;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/k;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/k;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lio/reactivex/rxjava3/core/p;
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/o;-><init>(Lio/reactivex/rxjava3/core/m;Ljava/lang/Object;)V

    invoke-static {v0}, Lpz/a;->p(Lio/reactivex/rxjava3/core/p;)Lio/reactivex/rxjava3/core/p;

    move-result-object v0

    return-object v0
.end method

.method public final B(Llz/f;Llz/f;)Lio/reactivex/rxjava3/disposables/c;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->c:Llz/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/j;->C(Llz/f;Llz/f;Llz/a;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    return-object p1
.end method

.method public final C(Llz/f;Llz/f;Llz/a;)Lio/reactivex/rxjava3/disposables/c;
    .locals 2

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->a()Llz/f;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Llz/f;Llz/f;Llz/a;Llz/f;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-object v0
.end method

.method protected abstract D(Lio/reactivex/rxjava3/core/o;)V
.end method

.method public final E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/e;
    .locals 2

    const-string v0, "strategy is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/c;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c;-><init>(Lio/reactivex/rxjava3/core/m;)V

    sget-object v1, Lio/reactivex/rxjava3/core/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/e;->b()Lio/reactivex/rxjava3/core/e;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;-><init>(Lio/reactivex/rxjava3/core/e;)V

    invoke-static {p1}, Lpz/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/e;->e()Lio/reactivex/rxjava3/core/e;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/e;->d()Lio/reactivex/rxjava3/core/e;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/c;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b(I)Lio/reactivex/rxjava3/core/j;
    .locals 0

    invoke-virtual {p0, p1, p1}, Lio/reactivex/rxjava3/core/j;->c(II)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final c(II)Lio/reactivex/rxjava3/core/j;
    .locals 1

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Llz/k;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/j;->d(IILlz/k;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final d(IILlz/k;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "count"

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    const-string v0, "skip"

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;-><init>(Lio/reactivex/rxjava3/core/m;IILlz/k;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/n;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n;->a(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->G(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final h(Llz/f;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/c;-><init>(Lio/reactivex/rxjava3/core/m;Llz/f;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final j(Llz/f;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->a()Llz/f;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->c:Llz/a;

    invoke-direct {p0, v0, p1, v1, v1}, Lio/reactivex/rxjava3/core/j;->i(Llz/f;Llz/f;Llz/a;Llz/a;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final n(Llz/h;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/j;->o(Llz/h;Z)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final o(Llz/h;Z)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/j;->p(Llz/h;ZI)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final p(Llz/h;ZI)Lio/reactivex/rxjava3/core/j;
    .locals 1

    invoke-static {}, Lio/reactivex/rxjava3/core/j;->e()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/j;->q(Llz/h;ZII)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final q(Llz/h;ZII)Lio/reactivex/rxjava3/core/j;
    .locals 7

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    instance-of v0, p0, Lio/reactivex/rxjava3/operators/e;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/operators/e;

    invoke-interface {p2}, Lio/reactivex/rxjava3/operators/e;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/j;->k()Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;-><init>(Lio/reactivex/rxjava3/core/m;Llz/h;ZII)V

    invoke-static {v6}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final s()Lio/reactivex/rxjava3/core/a;
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/j;-><init>(Lio/reactivex/rxjava3/core/m;)V

    invoke-static {v0}, Lpz/a;->l(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lpz/a;->x(Lio/reactivex/rxjava3/core/j;Lio/reactivex/rxjava3/core/o;)Lio/reactivex/rxjava3/core/o;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/j;->D(Lio/reactivex/rxjava3/core/o;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    throw p1
.end method

.method public final u(Llz/h;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/l;-><init>(Lio/reactivex/rxjava3/core/m;Llz/h;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lio/reactivex/rxjava3/core/j;->e()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/j;->w(Lio/reactivex/rxjava3/core/Scheduler;ZI)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lio/reactivex/rxjava3/core/Scheduler;ZI)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/Scheduler;ZI)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final x(Llz/h;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "fallbackSupplier is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/m;-><init>(Lio/reactivex/rxjava3/core/m;Llz/h;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final y(Llz/d;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;-><init>(Lio/reactivex/rxjava3/core/j;Llz/d;)V

    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final z()Lio/reactivex/rxjava3/core/g;
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/n;-><init>(Lio/reactivex/rxjava3/core/m;)V

    invoke-static {v0}, Lpz/a;->n(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g;

    move-result-object v0

    return-object v0
.end method
