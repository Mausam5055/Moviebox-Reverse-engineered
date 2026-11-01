.class public abstract Landroidx/compose/foundation/lazy/layout/i;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/layout/m;Landroidx/compose/foundation/lazy/layout/w;Landroidx/compose/foundation/lazy/layout/e;)Ljava/util/List;
    .locals 6

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/w;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/e;->c()I

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/e;->b()I

    move-result p2

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/m;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {v1, v2, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_0

    :cond_1
    sget-object p2, Lkotlin/ranges/IntRange;->e:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p2}, Lkotlin/ranges/IntRange$Companion;->a()Lkotlin/ranges/IntRange;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/layout/w$a;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/w$a;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/w$a;->getIndex()I

    move-result v3

    invoke-static {p0, v4, v3}, Landroidx/compose/foundation/lazy/layout/n;->a(Landroidx/compose/foundation/lazy/layout/m;Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    move-result v4

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->h()I

    move-result v5

    if-gt v3, v5, :cond_2

    if-gt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v3, :cond_3

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/m;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    move-result p0

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->h()I

    move-result p1

    if-gt p0, p1, :cond_5

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p1, :cond_5

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method
