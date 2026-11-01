.class public abstract Landroidx/room/coroutines/h;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lz3/c;Ljava/lang/String;II)Landroidx/room/coroutines/ConnectionPool;
    .locals 1

    const-string v0, "driver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Lz3/c;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static final b(Lz3/c;Ljava/lang/String;)Landroidx/room/coroutines/ConnectionPool;
    .locals 1

    const-string v0, "driver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v0, p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Lz3/c;Ljava/lang/String;)V

    return-object v0
.end method
