.class public abstract Lio/reactivex/rxjava3/core/e;
.super Ljava/lang/Object;

# interfaces
.implements Lu10/b;


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx3.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/reactivex/rxjava3/core/e;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lio/reactivex/rxjava3/core/e;->a:I

    return v0
.end method


# virtual methods
.method public final b()Lio/reactivex/rxjava3/core/e;
    .locals 3

    invoke-static {}, Lio/reactivex/rxjava3/core/e;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/e;->c(IZZ)Lio/reactivex/rxjava3/core/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(IZZ)Lio/reactivex/rxjava3/core/e;
    .locals 8

    const-string v0, "capacity"

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/Functions;->c:Llz/a;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->a()Llz/f;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;-><init>(Lio/reactivex/rxjava3/core/e;IZZLlz/a;Llz/f;)V

    invoke-static {v0}, Lpz/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lio/reactivex/rxjava3/core/e;
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;-><init>(Lio/reactivex/rxjava3/core/e;)V

    invoke-static {v0}, Lpz/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lio/reactivex/rxjava3/core/e;
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;-><init>(Lio/reactivex/rxjava3/core/e;Llz/f;)V

    invoke-static {v0}, Lpz/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lio/reactivex/rxjava3/core/f;)V
    .locals 2

    const-string v0, "subscriber is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lpz/a;->z(Lio/reactivex/rxjava3/core/e;Lu10/c;)Lu10/c;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/e;->g(Lu10/c;)V
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

.method protected abstract g(Lu10/c;)V
.end method

.method public final subscribe(Lu10/c;)V
    .locals 1

    instance-of v0, p1, Lio/reactivex/rxjava3/core/f;

    if-eqz v0, :cond_0

    check-cast p1, Lio/reactivex/rxjava3/core/f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/e;->f(Lio/reactivex/rxjava3/core/f;)V

    goto :goto_0

    :cond_0
    const-string v0, "subscriber is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;-><init>(Lu10/c;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/e;->f(Lio/reactivex/rxjava3/core/f;)V

    :goto_0
    return-void
.end method
