.class public abstract Landroidx/compose/ui/text/q;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/text/d0;JLo0/e;Landroidx/compose/ui/text/font/h$b;Ljava/util/List;Ljava/util/List;IZ)Landroidx/compose/ui/text/l;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/text/platform/e;->b(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;IZJLo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/ui/text/l;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Landroidx/compose/ui/text/d0;JLo0/e;Landroidx/compose/ui/text/font/h$b;Ljava/util/List;Ljava/util/List;IZILjava/lang/Object;)Landroidx/compose/ui/text/l;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v11, v0

    goto :goto_3

    :cond_3
    move/from16 v11, p9

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/text/q;->a(Ljava/lang/String;Landroidx/compose/ui/text/d0;JLo0/e;Landroidx/compose/ui/text/font/h$b;Ljava/util/List;Ljava/util/List;IZ)Landroidx/compose/ui/text/l;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/text/o;JIZ)Landroidx/compose/ui/text/l;
    .locals 0

    invoke-static {p0, p3, p4, p1, p2}, Landroidx/compose/ui/text/platform/e;->a(Landroidx/compose/ui/text/o;IZJ)Landroidx/compose/ui/text/l;

    move-result-object p0

    return-object p0
.end method

.method public static final d(F)I
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-int p0, p0

    return p0
.end method
