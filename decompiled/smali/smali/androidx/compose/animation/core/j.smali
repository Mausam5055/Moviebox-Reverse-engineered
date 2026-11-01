.class public abstract Landroidx/compose/animation/core/j;
.super Ljava/lang/Object;


# direct methods
.method public static final a(FFJJZ)Landroidx/compose/animation/core/i;
    .locals 10

    new-instance v9, Landroidx/compose/animation/core/i;

    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Landroidx/compose/animation/core/p;->a(F)Landroidx/compose/animation/core/k;

    move-result-object v3

    move-object v0, v9

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZ)V

    return-object v9
.end method

.method public static final b(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;JJZ)Landroidx/compose/animation/core/i;
    .locals 10

    new-instance v9, Landroidx/compose/animation/core/i;

    invoke-interface {p0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    move-object v1, p2

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/compose/animation/core/o;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZ)V

    return-object v9
.end method

.method public static synthetic c(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/i;
    .locals 4

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    const-wide/high16 v0, -0x8000000000000000L

    if-eqz p8, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    const/4 p6, 0x0

    :cond_3
    move p8, p6

    move p2, p0

    move p3, p1

    move-wide p4, v2

    move-wide p6, v0

    invoke-static/range {p2 .. p8}, Landroidx/compose/animation/core/j;->a(FFJJZ)Landroidx/compose/animation/core/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;JJZILjava/lang/Object;)Landroidx/compose/animation/core/i;
    .locals 11

    and-int/lit8 v0, p8, 0x8

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, p3

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v10, v0

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/j;->b(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;JJZ)Landroidx/compose/animation/core/i;

    move-result-object v0

    return-object v0
.end method

.method public static final e(Landroidx/compose/animation/core/i;FFJJZ)Landroidx/compose/animation/core/i;
    .locals 10

    new-instance v9, Landroidx/compose/animation/core/i;

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->e()Landroidx/compose/animation/core/s0;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Landroidx/compose/animation/core/p;->a(F)Landroidx/compose/animation/core/k;

    move-result-object v3

    move-object v0, v9

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZ)V

    return-object v9
.end method

.method public static final f(Landroidx/compose/animation/core/i;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZ)Landroidx/compose/animation/core/i;
    .locals 10

    new-instance v9, Landroidx/compose/animation/core/i;

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->e()Landroidx/compose/animation/core/s0;

    move-result-object v1

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZ)V

    return-object v9
.end method

.method public static synthetic g(Landroidx/compose/animation/core/i;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/i;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/k;

    invoke-virtual {p2}, Landroidx/compose/animation/core/k;->f()F

    move-result p2

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->d()J

    move-result-wide p3

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->c()J

    move-result-wide p5

    :cond_3
    move-wide v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->h()Z

    move-result p7

    :cond_4
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move-wide p5, v0

    move-wide p7, v2

    move p9, v4

    invoke-static/range {p2 .. p9}, Landroidx/compose/animation/core/j;->e(Landroidx/compose/animation/core/i;FFJJZ)Landroidx/compose/animation/core/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/animation/core/i;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZILjava/lang/Object;)Landroidx/compose/animation/core/i;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/animation/core/p;->e(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->d()J

    move-result-wide p3

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->c()J

    move-result-wide p5

    :cond_3
    move-wide v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->h()Z

    move-result p7

    :cond_4
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-wide p5, v0

    move-wide p7, v2

    move p9, v4

    invoke-static/range {p2 .. p9}, Landroidx/compose/animation/core/j;->f(Landroidx/compose/animation/core/i;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZ)Landroidx/compose/animation/core/i;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/o;

    invoke-virtual {p0}, Landroidx/compose/animation/core/o;->d()V

    return-object p0
.end method
