.class public abstract Landroidx/compose/foundation/lazy/h;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/util/List;Landroidx/compose/foundation/lazy/o;Ljava/util/List;III)Landroidx/compose/foundation/lazy/n;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v5

    move v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-gt v10, v3, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_1
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_0

    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v3, -0x80000000

    move v7, v3

    move v14, v7

    move v15, v5

    move v4, v6

    :goto_2
    if-ge v4, v1, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v11

    if-ne v11, v9, :cond_2

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->g()I

    move-result v7

    move v15, v4

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v11

    if-ne v11, v8, :cond_3

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->g()I

    move-result v14

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ne v9, v5, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v12, 0x2

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/compose/foundation/lazy/n;->c(Z)V

    if-eq v7, v3, :cond_6

    neg-int v2, v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_6
    neg-int v2, v2

    :goto_4
    if-eq v14, v3, :cond_7

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/n;->getSize()I

    move-result v3

    sub-int/2addr v14, v3

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_7
    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/n;->r(III)V

    if-eq v15, v5, :cond_8

    invoke-interface {v0, v15, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_5
    return-object v1
.end method
