.class final Landroidx/compose/ui/graphics/v3;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/v3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/v3;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/v3;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/v3;->a:Landroidx/compose/ui/graphics/v3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/ColorSpace;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/v3;->j(Landroid/graphics/ColorSpace;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/v3;->f(Lkotlin/jvm/functions/Function1;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/v3;->g(Lkotlin/jvm/functions/Function1;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic d(Landroid/graphics/ColorSpace;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/v3;->i(Landroid/graphics/ColorSpace;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final e(Landroidx/compose/ui/graphics/colorspace/c;)Landroid/graphics/ColorSpace;
    .locals 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/m3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->e()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/g2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->f()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/k2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->g()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/l2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->h()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/ui/graphics/m2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->i()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/ui/graphics/n3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->j()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/ui/graphics/p3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->k()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/ui/graphics/q3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->m()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/ui/graphics/z1;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->n()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/ui/graphics/a2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->o()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/ui/graphics/b2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->p()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroidx/compose/ui/graphics/c2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->q()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/compose/ui/graphics/d2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->r()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroidx/compose/ui/graphics/e2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->u()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Landroidx/compose/ui/graphics/f2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/g;->v()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroidx/compose/ui/graphics/h2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    instance-of v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object v5

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->L()Landroidx/compose/ui/graphics/colorspace/x;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {}, Landroidx/compose/ui/graphics/f3;->a()V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->a()D

    move-result-wide v6

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->b()D

    move-result-wide v8

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->c()D

    move-result-wide v10

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->d()D

    move-result-wide v12

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->e()D

    move-result-wide v14

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->f()D

    move-result-wide v16

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/x;->g()D

    move-result-wide v18

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/graphics/y1;->a(DDDDDDD)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v2

    goto :goto_0

    :cond_10
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_11

    invoke-static {}, Landroidx/compose/ui/graphics/l3;->a()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->K()[F

    move-result-object v1

    invoke-static {v0, v1, v5, v2}, Landroidx/compose/ui/graphics/j2;->a(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    goto :goto_1

    :cond_11
    invoke-static {}, Landroidx/compose/ui/graphics/l3;->a()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->K()[F

    move-result-object v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->H()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    new-instance v6, Landroidx/compose/ui/graphics/r3;

    invoke-direct {v6, v2}, Landroidx/compose/ui/graphics/r3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->D()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    new-instance v7, Landroidx/compose/ui/graphics/s3;

    invoke-direct {v7, v1}, Landroidx/compose/ui/graphics/s3;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/colorspace/c;->d(I)F

    move-result v8

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/colorspace/c;->c(I)F

    move-result v9

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/graphics/u2;->a(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/graphics/i2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_2

    :cond_12
    invoke-static {}, Landroidx/compose/ui/graphics/m3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/o3;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static final f(Lkotlin/jvm/functions/Function1;D)D
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static final g(Lkotlin/jvm/functions/Function1;D)D
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static final h(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/c;
    .locals 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/n2;->a(Landroid/graphics/ColorSpace;)I

    move-result v1

    invoke-static {}, Landroidx/compose/ui/graphics/m3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroidx/compose/ui/graphics/g2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->e()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/k2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_2

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->f()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Landroidx/compose/ui/graphics/l2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->g()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Landroidx/compose/ui/graphics/m2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->h()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Landroidx/compose/ui/graphics/n3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_5

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->i()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Landroidx/compose/ui/graphics/p3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_6

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->j()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    invoke-static {}, Landroidx/compose/ui/graphics/q3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_7

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->k()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    invoke-static {}, Landroidx/compose/ui/graphics/z1;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_8

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->m()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Landroidx/compose/ui/graphics/a2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_9

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->n()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Landroidx/compose/ui/graphics/b2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_a

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->o()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Landroidx/compose/ui/graphics/c2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_b

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->p()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    invoke-static {}, Landroidx/compose/ui/graphics/d2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_c

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->q()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    invoke-static {}, Landroidx/compose/ui/graphics/e2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_d

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->r()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Landroidx/compose/ui/graphics/f2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_e

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->u()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Landroidx/compose/ui/graphics/h2;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/o2;->a(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_f

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->v()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    :cond_f
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/p2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/r2;->a(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/s2;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_10

    new-instance v2, Landroidx/compose/ui/graphics/colorspace/y;

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/s2;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    aget v3, v3, v5

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/s2;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/s2;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-direct {v2, v3, v4, v6}, Landroidx/compose/ui/graphics/colorspace/y;-><init>(FFF)V

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_10
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/y;

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/s2;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    aget v3, v3, v5

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/s2;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/y;-><init>(FF)V

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_11

    new-instance v2, Landroidx/compose/ui/graphics/colorspace/x;

    invoke-static {v1}, Landroidx/compose/ui/graphics/t2;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v11

    invoke-static {v1}, Landroidx/compose/ui/graphics/v2;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v13

    invoke-static {v1}, Landroidx/compose/ui/graphics/w2;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v15

    invoke-static {v1}, Landroidx/compose/ui/graphics/x2;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v17

    invoke-static {v1}, Landroidx/compose/ui/graphics/y2;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v19

    invoke-static {v1}, Landroidx/compose/ui/graphics/z2;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v21

    invoke-static {v1}, Landroidx/compose/ui/graphics/a3;->a(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v23

    move-object v10, v2

    invoke-direct/range {v10 .. v24}, Landroidx/compose/ui/graphics/colorspace/x;-><init>(DDDDDDD)V

    move-object v15, v2

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    move-object v15, v1

    :goto_2
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/b3;->a(Landroid/graphics/ColorSpace$Rgb;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/c3;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v8

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/d3;->a(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v10

    new-instance v11, Landroidx/compose/ui/graphics/t3;

    invoke-direct {v11, v0}, Landroidx/compose/ui/graphics/t3;-><init>(Landroid/graphics/ColorSpace;)V

    new-instance v12, Landroidx/compose/ui/graphics/u3;

    invoke-direct {v12, v0}, Landroidx/compose/ui/graphics/u3;-><init>(Landroid/graphics/ColorSpace;)V

    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/e3;->a(Landroid/graphics/ColorSpace;I)F

    move-result v13

    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/g3;->a(Landroid/graphics/ColorSpace;I)F

    move-result v14

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/h3;->a(Landroid/graphics/ColorSpace$Rgb;)I

    move-result v16

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/y;[FLandroidx/compose/ui/graphics/colorspace/j;Landroidx/compose/ui/graphics/colorspace/j;FFLandroidx/compose/ui/graphics/colorspace/x;I)V

    move-object v0, v1

    goto :goto_3

    :cond_12
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private static final i(Landroid/graphics/ColorSpace;D)D
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/k3;->a(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/j3;->a(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final j(Landroid/graphics/ColorSpace;D)D
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/q2;->a(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/i3;->a(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/j3;->a(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method
