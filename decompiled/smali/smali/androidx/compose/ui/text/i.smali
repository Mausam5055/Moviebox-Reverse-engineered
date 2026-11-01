.class public abstract Landroidx/compose/ui/text/i;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/util/List;I)I
    .locals 7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/m;

    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->f()I

    move-result v6

    if-le v6, p1, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->b()I

    move-result v5

    if-gt v5, p1, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-gez v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int v4, v3

    :cond_4
    return v4
.end method

.method public static final b(Ljava/util/List;I)I
    .locals 7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/m;

    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->g()I

    move-result v6

    if-le v6, p1, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->c()I

    move-result v5

    if-gt v5, p1, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-gez v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int v4, v3

    :cond_4
    return v4
.end method

.method public static final c(Ljava/util/List;F)I
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-gt v3, v0, :cond_5

    add-int v4, v3, v0

    ushr-int/2addr v4, v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/m;

    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->h()F

    move-result v6

    cmpl-float v6, v6, p1

    if-lez v6, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->a()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-gez v5, :cond_4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_4
    if-lez v5, :cond_6

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_5
    add-int/2addr v3, v2

    neg-int v4, v3

    :cond_6
    return v4
.end method

.method public static final d(Ljava/util/List;JLkotlin/jvm/functions/Function1;)V
    .locals 5

    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/m;

    invoke-virtual {v2}, Landroidx/compose/ui/text/m;->f()I

    move-result v3

    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->i(J)I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/text/m;->f()I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/text/m;->b()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
