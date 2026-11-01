.class public abstract Landroidx/room/p0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Lz3/e;)Z
    .locals 0

    invoke-static {p0}, Landroidx/room/p0;->c(Lz3/e;)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroidx/room/p;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/room/o0;

    invoke-direct {v0}, Landroidx/room/o0;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Landroidx/room/p;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final c(Lz3/e;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p0

    return p0
.end method
