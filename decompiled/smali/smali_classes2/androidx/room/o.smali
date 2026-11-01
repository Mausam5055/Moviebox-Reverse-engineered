.class public final Landroidx/room/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/room/InvalidationTracker$b;

.field private final b:[I

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker$b;[I[Ljava/lang/String;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableNames"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/o;->a:Landroidx/room/InvalidationTracker$b;

    iput-object p2, p0, Landroidx/room/o;->b:[I

    iput-object p3, p0, Landroidx/room/o;->c:[Ljava/lang/String;

    array-length p1, p2

    array-length p2, p3

    if-ne p1, p2, :cond_2

    array-length p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    aget-object p1, p3, p2

    invoke-static {p1}, Lkotlin/collections/SetsKt;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroidx/room/o;->d:Ljava/util/Set;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Landroidx/room/InvalidationTracker$b;
    .locals 1

    iget-object v0, p0, Landroidx/room/o;->a:Landroidx/room/InvalidationTracker$b;

    return-object v0
.end method

.method public final b()[I
    .locals 1

    iget-object v0, p0, Landroidx/room/o;->b:[I

    return-object v0
.end method

.method public final c(Ljava/util/Set;)V
    .locals 7

    const-string v0, "invalidatedTablesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/o;->b:[I

    array-length v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    invoke-static {}, Lkotlin/collections/SetsKt;->b()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/o;->b:[I

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_1

    aget v5, v1, v2

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/room/o;->c:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/SetsKt;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_2
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/room/o;->d:Ljava/util/Set;

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/room/o;->a:Landroidx/room/InvalidationTracker$b;

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$b;->c(Ljava/util/Set;)V

    :cond_5
    return-void
.end method

.method public final d(Ljava/util/Set;)V
    .locals 9

    const-string v0, "invalidatedTablesNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/o;->c:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    invoke-static {}, Lkotlin/collections/SetsKt;->b()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/o;->c:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-static {v7, v3, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/SetsKt;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_3

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/o;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Landroidx/room/o;->d:Ljava/util/Set;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    :goto_3
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/room/o;->a:Landroidx/room/InvalidationTracker$b;

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$b;->c(Ljava/util/Set;)V

    :cond_8
    return-void
.end method
