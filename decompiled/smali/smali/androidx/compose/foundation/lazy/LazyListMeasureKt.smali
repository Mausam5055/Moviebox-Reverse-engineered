.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;


# direct methods
.method private static final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/b$k;Landroidx/compose/foundation/layout/b$d;ZLo0/e;)Ljava/util/List;
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move/from16 v8, p5

    if-ge v8, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    if-nez p7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-zero itemsScrollOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v9, v5, [I

    move v10, v7

    :goto_3
    if-ge v10, v5, :cond_4

    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->b(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/n;->getSize()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    new-array v10, v5, [I

    move v11, v7

    :goto_4
    if-ge v11, v5, :cond_5

    aput v7, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    if-eqz p8, :cond_7

    if-eqz v3, :cond_6

    move-object/from16 v7, p12

    invoke-interface {v3, v7, v6, v9, v10}, Landroidx/compose/foundation/layout/b$k;->c(Lo0/e;I[I[I)V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null verticalArrangement when isVertical == true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v7, p12

    if-eqz p10, :cond_c

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v9

    move-object/from16 p9, v3

    move-object/from16 p10, v10

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/b$d;->b(Lo0/e;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_5
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->Y([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->r(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->f()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->h()I

    move-result v9

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->l()I

    move-result v3

    if-lez v3, :cond_9

    if-le v7, v9, :cond_a

    :cond_9
    if-gez v3, :cond_11

    if-gt v9, v7, :cond_11

    :cond_a
    :goto_7
    aget v11, v10, v7

    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->b(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/n;

    if-eqz v4, :cond_b

    sub-int v11, v6, v11

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/n;->getSize()I

    move-result v13

    sub-int/2addr v11, v13

    :cond_b
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/n;->r(III)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v9, :cond_11

    add-int/2addr v7, v3

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null horizontalArrangement when isVertical == false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no extra items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p7

    move v4, v7

    :goto_8
    if-ge v4, v3, :cond_f

    move-object v6, p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v10

    sub-int/2addr v5, v10

    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/lazy/n;->r(III)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p7

    move v5, v7

    :goto_9
    if-ge v5, v3, :cond_10

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/n;->r(III)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v7, v0, :cond_11

    move-object/from16 v3, p2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/n;->r(III)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_11
    return-object v8
.end method

.method private static final b(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method private static final c(Ljava/util/List;Landroidx/compose/foundation/lazy/o;IILjava/util/List;FZLandroidx/compose/foundation/lazy/l;)Ljava/util/List;
    .locals 18

    move/from16 v0, p2

    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v1

    add-int v1, v1, p3

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-gt v3, v1, :cond_1

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v11, v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v5, p1

    move v6, v3

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object v5, v11

    goto :goto_0

    :cond_1
    move-object v11, v4

    :cond_2
    const/4 v3, 0x0

    if-eqz p6, :cond_14

    if-eqz p7, :cond_14

    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    const/4 v7, -0x1

    if-ge v7, v6, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/j;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v7

    if-le v7, v1, :cond_4

    if-eqz v6, :cond_3

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/j;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v7

    if-gt v7, v1, :cond_4

    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/j;

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    move-object v5, v4

    :goto_2
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/j;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v5

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v5, v2, :cond_b

    :goto_3
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_4
    if-ge v8, v7, :cond_7

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v10

    if-ne v10, v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move-object v9, v4

    :goto_5
    check-cast v9, Landroidx/compose/foundation/lazy/n;

    goto :goto_6

    :cond_8
    move-object v9, v4

    :goto_6
    if-nez v9, :cond_a

    if-nez v11, :cond_9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v12, p1

    move v13, v5

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eq v5, v2, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/l;->c()I

    move-result v2

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/j;->g()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/j;->getSize()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float v2, v2, p5

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_14

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :goto_7
    if-ge v5, v0, :cond_14

    int-to-float v7, v6

    cmpg-float v7, v7, v2

    if-gez v7, :cond_14

    if-gt v5, v1, :cond_e

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_8
    if-ge v8, v7, :cond_d

    move-object/from16 v9, p0

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v12

    if-ne v12, v5, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v9, p0

    move-object v10, v4

    :goto_9
    check-cast v10, Landroidx/compose/foundation/lazy/n;

    goto :goto_c

    :cond_e
    move-object/from16 v9, p0

    if-eqz v11, :cond_11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_a
    if-ge v8, v7, :cond_10

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v12

    if-ne v12, v5, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    move-object v10, v4

    :goto_b
    check-cast v10, Landroidx/compose/foundation/lazy/n;

    goto :goto_c

    :cond_11
    move-object v10, v4

    :goto_c
    if-eqz v10, :cond_12

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v7

    :goto_d
    add-int/2addr v6, v7

    goto :goto_7

    :cond_12
    if-nez v11, :cond_13

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v12, p1

    move v13, v5

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v7

    goto :goto_d

    :cond_14
    if-eqz v11, :cond_15

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v0

    if-le v0, v1, :cond_15

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v1

    :cond_15
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    :goto_e
    if-ge v3, v0, :cond_18

    move-object/from16 v2, p4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v6, v1, :cond_17

    if-nez v11, :cond_16

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    if-nez v11, :cond_19

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v11

    :cond_19
    return-object v11
.end method

.method private static final d(ILandroidx/compose/foundation/lazy/o;ILjava/util/List;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    sub-int p2, p0, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    if-gt p2, p0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v2, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_5

    :goto_1
    add-int/lit8 v1, p0, -0x1

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v3, p2, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static final e(ILandroidx/compose/foundation/lazy/o;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/b$k;Landroidx/compose/foundation/layout/b$d;ZLo0/e;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/l;Lkotlinx/coroutines/n0;Landroidx/compose/runtime/i1;Landroidx/compose/ui/graphics/a4;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/m;
    .locals 41

    move/from16 v15, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-wide/from16 v11, p9

    move-object/from16 v10, p26

    if-ltz v14, :cond_2b

    if-ltz p4, :cond_2a

    if-gtz v15, :cond_2

    invoke-static/range {p9 .. p10}, Lo0/b;->n(J)I

    move-result v0

    invoke-static/range {p9 .. p10}, Lo0/b;->m(J)I

    move-result v1

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/o;->g()Landroidx/compose/foundation/lazy/layout/p;

    move-result-object v20

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v16, 0x0

    const/16 v24, 0x1

    move-object/from16 v15, p17

    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v21, p1

    move/from16 v22, p11

    move/from16 v23, p21

    move/from16 v25, p20

    move-object/from16 v28, p23

    move-object/from16 v29, p25

    invoke-virtual/range {v15 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->l(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/p;Landroidx/compose/foundation/lazy/layout/t;ZZIZIILkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;)V

    if-nez p21, :cond_0

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h()J

    move-result-wide v2

    sget-object v4, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v4}, Lo0/t$a;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lo0/t;->e(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Lo0/t;->g(J)I

    move-result v0

    invoke-static {v11, v12, v0}, Lo0/c;->i(JI)I

    move-result v0

    invoke-static {v2, v3}, Lo0/t;->f(J)I

    move-result v1

    invoke-static {v11, v12, v1}, Lo0/c;->h(JI)I

    move-result v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-interface {v10, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/v;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    neg-int v14, v14

    add-int v15, v13, p4

    if-eqz p11, :cond_1

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object/from16 v18, v1

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/o;->f()J

    move-result-wide v11

    new-instance v22, Landroidx/compose/foundation/lazy/m;

    move-object/from16 v1, v22

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p23

    move-object/from16 v10, p16

    move-object v13, v0

    move/from16 v17, p15

    move/from16 v19, p4

    move/from16 v20, p5

    invoke-direct/range {v1 .. v21}, Landroidx/compose/foundation/lazy/m;-><init>(Landroidx/compose/foundation/lazy/n;IZFLandroidx/compose/ui/layout/v;FZLkotlinx/coroutines/n0;Lo0/e;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v22

    :cond_2
    const/4 v9, 0x0

    move/from16 v0, p6

    if-lt v0, v15, :cond_3

    add-int/lit8 v0, v15, -0x1

    move v1, v9

    goto :goto_2

    :cond_3
    move/from16 v1, p7

    :goto_2
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_4

    if-gez v1, :cond_4

    add-int/2addr v2, v1

    move v1, v9

    :cond_4
    new-instance v8, Lkotlin/collections/ArrayDeque;

    invoke-direct {v8}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v7, v14

    if-gez p5, :cond_5

    move/from16 v3, p5

    goto :goto_3

    :cond_5
    move v3, v9

    :goto_3
    add-int/2addr v3, v7

    add-int/2addr v1, v3

    move v4, v9

    :goto_4
    if-gez v1, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    const/16 v20, 0x2

    const/16 v21, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v16, p1

    move/from16 v17, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/n;->m()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_4

    :cond_6
    if-ge v1, v3, :cond_7

    add-int/2addr v2, v1

    move v1, v3

    :cond_7
    sub-int/2addr v1, v3

    add-int v6, v13, p4

    invoke-static {v6, v9}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v5

    neg-int v9, v1

    move/from16 p6, v0

    move/from16 v17, p6

    move/from16 p7, v1

    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_5
    invoke-virtual {v8}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    const/16 v31, 0x1

    if-ge v0, v1, :cond_9

    if-lt v9, v5, :cond_8

    invoke-virtual {v8, v0}, Lkotlin/collections/AbstractMutableList;->remove(I)Ljava/lang/Object;

    move/from16 v18, v31

    goto :goto_5

    :cond_8
    add-int/lit8 v17, v17, 0x1

    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v10, v17

    move/from16 v32, v18

    :goto_6
    if-ge v10, v15, :cond_a

    if-lt v9, v5, :cond_b

    if-lez v9, :cond_b

    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    goto :goto_7

    :cond_a
    move/from16 p6, v0

    goto :goto_9

    :cond_b
    :goto_7
    const/16 v21, 0x2

    const/16 v22, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v17, p1

    move/from16 v18, v10

    move/from16 p6, v0

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v17

    add-int v9, v9, v17

    if-gt v9, v3, :cond_c

    move/from16 p7, v3

    add-int/lit8 v3, v15, -0x1

    if-eq v10, v3, :cond_d

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v0

    sub-int/2addr v1, v0

    move v0, v3

    move/from16 v32, v31

    goto :goto_8

    :cond_c
    move/from16 p7, v3

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->m()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v0, p6

    move v4, v3

    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, p7

    goto :goto_6

    :goto_9
    if-ge v9, v13, :cond_10

    sub-int v0, v13, v9

    sub-int/2addr v1, v0

    add-int/2addr v9, v0

    move v3, v1

    move/from16 v1, p6

    :goto_a
    if-ge v3, v14, :cond_e

    if-lez v1, :cond_e

    add-int/lit8 v1, v1, -0x1

    const/16 v21, 0x2

    const/16 v22, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v17, p1

    move/from16 v18, v1

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/lazy/o;->e(Landroidx/compose/foundation/lazy/o;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/n;

    move-result-object v5

    move/from16 v17, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v5}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/n;->m()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v10, v17

    goto :goto_a

    :cond_e
    move/from16 v17, v10

    add-int/2addr v0, v2

    if-gez v3, :cond_f

    add-int/2addr v0, v3

    add-int/2addr v9, v3

    move v10, v9

    const/4 v3, 0x0

    goto :goto_b

    :cond_f
    move v10, v9

    goto :goto_b

    :cond_10
    move/from16 v17, v10

    move v3, v1

    move v0, v2

    move v10, v9

    move/from16 v1, p6

    :goto_b
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->a(I)I

    move-result v5

    invoke-static {v0}, Lkotlin/math/MathKt;->a(I)I

    move-result v9

    if-ne v5, v9, :cond_11

    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v5, v9, :cond_11

    int-to-float v5, v0

    move v9, v5

    goto :goto_c

    :cond_11
    move/from16 v9, p8

    :goto_c
    sub-float v5, p8, v9

    const/16 v18, 0x0

    if-eqz p21, :cond_12

    if-le v0, v2, :cond_12

    cmpg-float v19, v5, v18

    if-gtz v19, :cond_12

    sub-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v5

    move/from16 v33, v0

    goto :goto_d

    :cond_12
    move/from16 v33, v18

    :goto_d
    if-ltz v3, :cond_29

    neg-int v5, v3

    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/n;

    if-gtz v14, :cond_14

    if-gez p5, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v2, p18

    move/from16 v34, v3

    move/from16 v18, v4

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v0, p19

    goto :goto_10

    :cond_14
    :goto_e
    invoke-virtual {v8}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    move-object/from16 p6, v0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_15

    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/compose/foundation/lazy/n;

    move/from16 p7, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v2

    if-eqz v3, :cond_15

    if-gt v2, v3, :cond_15

    move/from16 v18, v4

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v4

    if-eq v0, v4, :cond_16

    sub-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/n;

    move-object/from16 p6, v2

    move/from16 v4, v18

    move/from16 v2, p7

    goto :goto_f

    :cond_15
    move/from16 v18, v4

    :cond_16
    move-object/from16 v4, p6

    move/from16 v2, p18

    move-object/from16 v0, p19

    move/from16 v34, v3

    move-object/from16 v3, p1

    :goto_10
    invoke-static {v1, v3, v2, v0}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->d(ILandroidx/compose/foundation/lazy/o;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v14, v18

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_17

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/compose/foundation/lazy/n;

    move/from16 p6, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/n;->m()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    goto :goto_11

    :cond_17
    move-object v0, v8

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v2, p0

    move/from16 v3, p18

    move/from16 v19, v14

    move-object v14, v4

    move-object/from16 v4, p19

    move/from16 v20, v5

    move v5, v9

    move/from16 v35, v6

    move/from16 v6, p21

    move/from16 v36, v7

    move-object/from16 v7, p22

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->c(Ljava/util/List;Landroidx/compose/foundation/lazy/o;IILjava/util/List;FZLandroidx/compose/foundation/lazy/l;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v19

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_18

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/n;->m()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_18
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v37, v31

    goto :goto_13

    :cond_19
    const/16 v37, 0x0

    :goto_13
    if-eqz p11, :cond_1a

    move v0, v1

    goto :goto_14

    :cond_1a
    move v0, v10

    :goto_14
    invoke-static {v11, v12, v0}, Lo0/c;->i(JI)I

    move-result v7

    if-eqz p11, :cond_1b

    move v1, v10

    :cond_1b
    invoke-static {v11, v12, v1}, Lo0/c;->h(JI)I

    move-result v6

    move-object v0, v8

    move-object/from16 v1, v18

    move v3, v7

    move v4, v6

    move v5, v10

    move/from16 p6, v6

    move/from16 v6, p2

    move/from16 p7, v7

    move/from16 v7, v20

    move-object/from16 v38, v8

    move/from16 v8, p11

    move-object/from16 p8, v14

    const/16 v39, 0x0

    move v14, v9

    move-object/from16 v9, p13

    move/from16 v13, p21

    move/from16 p13, v10

    move/from16 v40, v17

    move-object/from16 v10, p14

    move/from16 v11, p15

    move-object/from16 v12, p16

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/b$k;Landroidx/compose/foundation/layout/b$d;ZLo0/e;)Ljava/util/List;

    move-result-object v6

    float-to-int v0, v14

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/o;->g()Landroidx/compose/foundation/lazy/layout/p;

    move-result-object v21

    const/16 v25, 0x1

    move-object/from16 v16, p17

    move/from16 v17, v0

    move/from16 v18, p7

    move/from16 v19, p6

    move-object/from16 v20, v6

    move-object/from16 v22, p1

    move/from16 v23, p11

    move/from16 v24, p21

    move/from16 v26, p20

    move/from16 v27, v34

    move/from16 v28, p13

    move-object/from16 v29, p23

    move-object/from16 v30, p25

    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->l(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/p;Landroidx/compose/foundation/lazy/layout/t;ZZIZIILkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;)V

    if-nez v13, :cond_1f

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h()J

    move-result-wide v0

    sget-object v2, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v2}, Lo0/t$a;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo0/t;->e(JJ)Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz p11, :cond_1c

    move/from16 v7, p6

    goto :goto_15

    :cond_1c
    move/from16 v7, p7

    :goto_15
    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v2

    move/from16 v3, p7

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-wide/from16 v3, p9

    invoke-static {v3, v4, v2}, Lo0/c;->i(JI)I

    move-result v2

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    move/from16 v1, p6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v4, v0}, Lo0/c;->h(JI)I

    move-result v0

    if-eqz p11, :cond_1d

    move v1, v0

    goto :goto_16

    :cond_1d
    move v1, v2

    :goto_16
    if-eq v1, v7, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v9, v39

    :goto_17
    if-ge v9, v3, :cond_1e

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v4, v1}, Landroidx/compose/foundation/lazy/n;->s(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_1e
    move v7, v0

    move v8, v2

    goto :goto_18

    :cond_1f
    move/from16 v1, p6

    move/from16 v3, p7

    move v7, v1

    move v8, v3

    :goto_18
    move-object/from16 v0, p12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    move/from16 v3, p3

    move v4, v8

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/h;->a(Ljava/util/List;Landroidx/compose/foundation/lazy/o;Ljava/util/List;III)Landroidx/compose/foundation/lazy/n;

    move-result-object v0

    :goto_19
    move/from16 v10, v40

    goto :goto_1a

    :cond_20
    const/4 v0, 0x0

    goto :goto_19

    :goto_1a
    if-lt v10, v15, :cond_22

    move/from16 v1, p2

    move/from16 v9, p13

    move v2, v13

    if-le v9, v1, :cond_21

    goto :goto_1b

    :cond_21
    move/from16 v3, v39

    goto :goto_1c

    :cond_22
    move v2, v13

    :goto_1b
    move/from16 v3, v31

    :goto_1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;

    move-object/from16 v7, p24

    invoke-direct {v5, v6, v0, v2, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/n;ZLandroidx/compose/runtime/i1;)V

    move-object/from16 v2, p26

    invoke-interface {v2, v1, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/v;

    if-eqz v37, :cond_23

    move-object v12, v6

    goto :goto_1e

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v9, v39

    :goto_1d
    if-ge v9, v2, :cond_27

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v8

    invoke-virtual/range {v38 .. v38}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v10

    if-lt v8, v10, :cond_24

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v8

    invoke-virtual/range {v38 .. v38}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v10

    if-le v8, v10, :cond_25

    :cond_24
    if-ne v7, v0, :cond_26

    :cond_25
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_27
    move-object v12, v1

    :goto_1e
    if-eqz p11, :cond_28

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1f
    move-object/from16 v17, v0

    goto :goto_20

    :cond_28
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1f

    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/o;->f()J

    move-result-wide v10

    new-instance v21, Landroidx/compose/foundation/lazy/m;

    move-object/from16 v0, v21

    const/16 v20, 0x0

    move-object/from16 v1, p8

    move/from16 v2, v34

    move v4, v14

    move/from16 v6, v33

    move/from16 v7, v32

    move-object/from16 v8, p23

    move-object/from16 v9, p16

    move/from16 v13, v36

    move/from16 v14, v35

    move/from16 v15, p0

    move/from16 v16, p15

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/m;-><init>(Landroidx/compose/foundation/lazy/n;IZFLandroidx/compose/ui/layout/v;FZLkotlinx/coroutines/n0;Lo0/e;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative currentFirstItemScrollOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid afterContentPadding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid beforeContentPadding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
