.class final Landroidx/room/coroutines/i;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/b;
.implements Lkotlinx/coroutines/sync/a;


# instance fields
.field private final a:Lz3/b;

.field private final b:Lkotlinx/coroutines/sync/a;

.field private c:Lkotlin/coroutines/CoroutineContext;

.field private d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lz3/b;Lkotlinx/coroutines/sync/a;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/i;->a:Lz3/b;

    iput-object p2, p0, Landroidx/room/coroutines/i;->b:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method public synthetic constructor <init>(Lz3/b;Lkotlinx/coroutines/sync/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {p4, p2, p3}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/room/coroutines/i;-><init>(Lz3/b;Lkotlinx/coroutines/sync/a;)V

    return-void
.end method


# virtual methods
.method public D0(Ljava/lang/String;)Lz3/e;
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/i;->a:Lz3/b;

    invoke-interface {v0, p1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/i;->b:Lkotlinx/coroutines/sync/a;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/sync/a;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/i;->a:Lz3/b;

    invoke-interface {v0}, Lz3/b;->close()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/i;->b:Lkotlinx/coroutines/sync/a;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/a;->d()Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/i;->b:Lkotlinx/coroutines/sync/a;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/StringBuilder;)V
    .locals 5

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/i;->c:Lkotlin/coroutines/CoroutineContext;

    const/16 v1, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/coroutines/i;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\t\tStatus: Free connection"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "\t\tStatus: Acquired connection"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/room/coroutines/i;->c:Lkotlin/coroutines/CoroutineContext;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tCoroutine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Landroidx/room/coroutines/i;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    const-string v2, "\t\tAcquired:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->d0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final k(Lkotlin/coroutines/CoroutineContext;)Landroidx/room/coroutines/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/coroutines/i;->c:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/i;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final l()Landroidx/room/coroutines/i;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/coroutines/i;->c:Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Landroidx/room/coroutines/i;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/i;->a:Lz3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/i;->b:Lkotlinx/coroutines/sync/a;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    return-void
.end method
