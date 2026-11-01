.class public abstract Landroidx/compose/material/SliderKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F

.field private static final d:F

.field private static final e:F

.field private static final f:F

.field private static final g:F

.field private static final h:Landroidx/compose/ui/f;

.field private static final i:Landroidx/compose/animation/core/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Landroidx/compose/material/SliderKt;->a:F

    const/16 v0, 0x18

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Landroidx/compose/material/SliderKt;->b:F

    const/4 v0, 0x1

    int-to-float v1, v0

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    sput v1, Landroidx/compose/material/SliderKt;->c:F

    const/4 v1, 0x6

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    sput v1, Landroidx/compose/material/SliderKt;->d:F

    const/4 v1, 0x4

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    sput v1, Landroidx/compose/material/SliderKt;->e:F

    const/16 v1, 0x30

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    sput v1, Landroidx/compose/material/SliderKt;->f:F

    const/16 v2, 0x90

    int-to-float v2, v2

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v2

    sput v2, Landroidx/compose/material/SliderKt;->g:F

    sget-object v3, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    invoke-static {v2, v4, v1, v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/SliderKt;->h:Landroidx/compose/ui/f;

    new-instance v0, Landroidx/compose/animation/core/r0;

    const/4 v5, 0x6

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/SliderKt;->i:Landroidx/compose/animation/core/r0;

    return-void
.end method

.method private static final a(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V
    .locals 9

    const v0, -0x2c580438

    invoke-interface {p5, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p5

    and-int/lit8 v1, p6, 0x6

    const/4 v2, 0x4

    if-nez v1, :cond_1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p6

    goto :goto_1

    :cond_1
    move v1, p6

    :goto_1
    and-int/lit8 v3, p6, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-interface {p5, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, p6, 0x180

    const/16 v5, 0x100

    if-nez v3, :cond_5

    invoke-interface {p5, p2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v1, v3

    :cond_5
    and-int/lit16 v3, p6, 0xc00

    const/16 v6, 0x800

    if-nez v3, :cond_7

    invoke-interface {p5, p3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_4

    :cond_6
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v1, v3

    :cond_7
    and-int/lit16 v3, p6, 0x6000

    const/16 v7, 0x4000

    if-nez v3, :cond_9

    invoke-interface {p5, p4}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v7

    goto :goto_5

    :cond_8
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v1, v3

    :cond_9
    and-int/lit16 v3, v1, 0x2493

    const/16 v8, 0x2492

    if-ne v3, v8, :cond_b

    invoke-interface {p5}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {p5}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_c

    :cond_b
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, -0x1

    const-string v8, "androidx.compose.material.CorrectValueSideEffect (Slider.kt:847)"

    invoke-static {v0, v1, v3, v8}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_c
    and-int/lit8 v0, v1, 0x70

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-ne v0, v4, :cond_d

    move v0, v3

    goto :goto_7

    :cond_d
    move v0, v8

    :goto_7
    and-int/lit8 v4, v1, 0xe

    if-ne v4, v2, :cond_e

    move v2, v3

    goto :goto_8

    :cond_e
    move v2, v8

    :goto_8
    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    if-ne v2, v7, :cond_f

    move v2, v3

    goto :goto_9

    :cond_f
    move v2, v8

    :goto_9
    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    if-ne v2, v6, :cond_10

    move v2, v3

    goto :goto_a

    :cond_10
    move v2, v8

    :goto_a
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x380

    if-ne v1, v5, :cond_11

    goto :goto_b

    :cond_11
    move v3, v8

    :goto_b
    or-int/2addr v0, v3

    invoke-interface {p5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_12

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_13

    :cond_12
    new-instance v1, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    move v5, p4

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;FLandroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    invoke-interface {p5, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_13
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p5, v8}, Landroidx/compose/runtime/g0;->e(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_14
    :goto_c
    invoke-interface {p5}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p5

    if-eqz p5, :cond_15

    new-instance v7, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FI)V

    invoke-interface {p5, v7}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method public static final b(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;Landroidx/compose/runtime/i;II)V
    .locals 40

    move-object/from16 v2, p1

    move/from16 v9, p9

    move/from16 v10, p10

    const v0, -0x5cc177f3

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v1

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v9, 0x6

    move v6, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v9

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v6, v9

    :goto_1
    and-int/lit8 v7, v10, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v9, 0x30

    if-nez v7, :cond_5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v10, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v9, 0x180

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v1, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v6, v11

    :goto_5
    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p3

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v6, v13

    :goto_7
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v10, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p4

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v6, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, v10, 0x20

    const/high16 v16, 0x30000

    if-eqz v14, :cond_f

    or-int v6, v6, v16

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int v16, v9, v16

    move/from16 v15, p5

    if-nez v16, :cond_11

    invoke-interface {v1, v15}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v6, v6, v16

    :cond_11
    :goto_b
    and-int/lit8 v16, v10, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v6, v6, v17

    move-object/from16 v4, p6

    goto :goto_d

    :cond_12
    and-int v17, v9, v17

    move-object/from16 v4, p6

    if-nez v17, :cond_14

    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v6, v6, v17

    :cond_14
    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v9, v17

    if-nez v17, :cond_17

    and-int/lit16 v5, v10, 0x80

    if-nez v5, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v1, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v6, v6, v17

    goto :goto_f

    :cond_17
    move-object/from16 v5, p7

    :goto_f
    const v17, 0x492493

    and-int v0, v6, v17

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    :cond_18
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    move-object v7, v4

    move-object v3, v8

    move v4, v12

    move v6, v15

    move-object v8, v5

    move-object v5, v13

    goto/16 :goto_17

    :cond_19
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/i;->B()V

    and-int/lit8 v0, v9, 0x1

    const v36, -0x1c00001

    const v17, -0xe001

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Landroidx/compose/runtime/i;->I()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_1b

    and-int v6, v6, v17

    :cond_1b
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_1c

    and-int v6, v6, v36

    :cond_1c
    move v0, v12

    move-object v7, v13

    move/from16 v38, v15

    :cond_1d
    const/high16 v11, 0x20000

    goto :goto_15

    :cond_1e
    :goto_11
    if-eqz v7, :cond_1f

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    move-object v8, v0

    :cond_1f
    if-eqz v11, :cond_20

    move v0, v3

    goto :goto_12

    :cond_20
    move v0, v12

    :goto_12
    and-int/lit8 v7, v10, 0x10

    if-eqz v7, :cond_21

    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v11}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    and-int v6, v6, v17

    goto :goto_13

    :cond_21
    move-object v7, v13

    :goto_13
    if-eqz v14, :cond_22

    const/16 v38, 0x0

    goto :goto_14

    :cond_22
    move/from16 v38, v15

    :goto_14
    if-eqz v16, :cond_23

    const/4 v4, 0x0

    :cond_23
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_1d

    sget-object v11, Landroidx/compose/material/k;->a:Landroidx/compose/material/k;

    const/16 v34, 0x6

    const/16 v35, 0x3ff

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/high16 v5, 0x20000

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v32, v1

    invoke-virtual/range {v11 .. v35}, Landroidx/compose/material/k;->a(JJJJJJJJJJLandroidx/compose/runtime/i;III)Landroidx/compose/material/j;

    move-result-object v11

    and-int v6, v6, v36

    move-object/from16 v39, v11

    move v11, v5

    move-object/from16 v5, v39

    :goto_15
    invoke-interface {v1}, Landroidx/compose/runtime/i;->s()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v12

    if-eqz v12, :cond_24

    const/4 v12, -0x1

    const-string v13, "androidx.compose.material.RangeSlider (Slider.kt:305)"

    const v14, -0x5cc177f3

    invoke-static {v14, v6, v12, v13}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_25

    invoke-static {}, Lp/h;->a()Lp/i;

    move-result-object v12

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v17, v12

    check-cast v17, Lp/i;

    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_26

    invoke-static {}, Lp/h;->a()Lp/i;

    move-result-object v12

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v18, v12

    check-cast v18, Lp/i;

    if-ltz v38, :cond_2c

    shr-int/lit8 v12, v6, 0x3

    and-int/lit8 v12, v12, 0xe

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v16

    const/high16 v12, 0x70000

    and-int/2addr v6, v12

    if-ne v6, v11, :cond_27

    move/from16 v37, v3

    goto :goto_16

    :cond_27
    const/16 v37, 0x0

    :goto_16
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    if-nez v37, :cond_28

    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v11

    if-ne v6, v11, :cond_29

    :cond_28
    invoke-static/range {v38 .. v38}, Landroidx/compose/material/SliderKt;->z(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_29
    move-object v14, v6

    check-cast v14, Ljava/util/List;

    invoke-static {v8}, Landroidx/compose/material/InteractiveComponentSizeKt;->c(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v6

    sget v11, Landroidx/compose/material/SliderKt;->a:F

    const/4 v12, 0x4

    int-to-float v12, v12

    mul-float/2addr v12, v11

    invoke-static {v12}, Lo0/i;->g(F)F

    move-result v12

    const/4 v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v11, v13

    invoke-static {v11}, Lo0/i;->g(F)F

    move-result v11

    const/16 v13, 0xc

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 p2, v6

    move/from16 p3, v12

    move/from16 p4, v11

    move/from16 p5, v19

    move/from16 p6, v20

    move/from16 p7, v13

    move-object/from16 p8, v15

    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/SizeKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v6

    new-instance v15, Landroidx/compose/material/SliderKt$RangeSlider$2;

    move-object v11, v15

    move-object v12, v7

    move-object/from16 v13, p0

    move-object v2, v15

    move-object v15, v4

    move/from16 v19, v0

    move/from16 v20, v38

    move-object/from16 v21, v5

    invoke-direct/range {v11 .. v21}, Landroidx/compose/material/SliderKt$RangeSlider$2;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/a3;Lp/i;Lp/i;ZILandroidx/compose/material/j;)V

    const/16 v11, 0x36

    const v12, 0x26e5bb63

    invoke-static {v12, v3, v2, v1, v11}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    move-result-object v2

    const/16 v3, 0xc00

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p2, v6

    move-object/from16 p3, v12

    move/from16 p4, v13

    move-object/from16 p5, v2

    move-object/from16 p6, v1

    move/from16 p7, v3

    move/from16 p8, v11

    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/b;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/i;II)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_2a
    move-object v3, v8

    move/from16 v6, v38

    move-object v8, v5

    move-object v5, v7

    move-object v7, v4

    move v4, v0

    :goto_17
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v11

    if-eqz v11, :cond_2b

    new-instance v12, Landroidx/compose/material/SliderKt$RangeSlider$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/SliderKt$RangeSlider$3;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_2b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "steps should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final c(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V
    .locals 27

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v9, p9

    move-object/from16 v8, p10

    move/from16 v7, p12

    const v0, -0x109f9c61

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v6

    and-int/lit8 v1, v7, 0x6

    move/from16 v5, p0

    if-nez v1, :cond_1

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/lit8 v4, v7, 0x30

    if-nez v4, :cond_3

    invoke-interface {v6, v10}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v7, 0x180

    if-nez v4, :cond_5

    invoke-interface {v6, v11}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_5
    and-int/lit16 v4, v7, 0xc00

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-interface {v6, v4}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_4

    :cond_6
    const/16 v16, 0x400

    :goto_4
    or-int v1, v1, v16

    goto :goto_5

    :cond_7
    move-object/from16 v4, p3

    :goto_5
    and-int/lit16 v2, v7, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-interface {v6, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x4000

    goto :goto_6

    :cond_8
    const/16 v16, 0x2000

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_9
    move-object/from16 v2, p4

    :goto_7
    const/high16 v16, 0x30000

    and-int v16, v7, v16

    if-nez v16, :cond_b

    invoke-interface {v6, v12}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v16, 0x10000

    :goto_8
    or-int v1, v1, v16

    :cond_b
    const/high16 v16, 0x180000

    and-int v16, v7, v16

    if-nez v16, :cond_d

    invoke-interface {v6, v13}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v16, 0x80000

    :goto_9
    or-int v1, v1, v16

    :cond_d
    const/high16 v16, 0xc00000

    and-int v16, v7, v16

    if-nez v16, :cond_f

    invoke-interface {v6, v14}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v16, 0x400000

    :goto_a
    or-int v1, v1, v16

    :cond_f
    const/high16 v16, 0x6000000

    and-int v16, v7, v16

    if-nez v16, :cond_11

    invoke-interface {v6, v15}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v1, v1, v16

    :cond_11
    const/high16 v16, 0x30000000

    and-int v16, v7, v16

    if-nez v16, :cond_13

    invoke-interface {v6, v9}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v16, 0x10000000

    :goto_c
    or-int v1, v1, v16

    :cond_13
    and-int/lit8 v16, p13, 0x6

    if-nez v16, :cond_15

    invoke-interface {v6, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v16, 0x4

    goto :goto_d

    :cond_14
    const/16 v16, 0x2

    :goto_d
    or-int v16, p13, v16

    move/from16 v0, v16

    goto :goto_e

    :cond_15
    move/from16 v0, p13

    :goto_e
    const v17, 0x12492493

    and-int v3, v1, v17

    const v2, 0x12492492

    if-ne v3, v2, :cond_17

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    invoke-interface {v6}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v6}, Landroidx/compose/runtime/i;->G()V

    move-object v12, v9

    move-object v10, v14

    move-object v9, v6

    move-object v14, v8

    goto/16 :goto_11

    :cond_17
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "androidx.compose.material.RangeSliderImpl (Slider.kt:633)"

    const v3, -0x109f9c61

    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_18
    sget-object v0, Landroidx/compose/material/l;->a:Landroidx/compose/material/l$a;

    invoke-virtual {v0}, Landroidx/compose/material/l$a;->g()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v2, v6, v3}, Landroidx/compose/material/m;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/material/l$a;->f()I

    move-result v0

    invoke-static {v0, v6, v3}, Landroidx/compose/material/m;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Landroidx/compose/material/SliderKt;->h:Landroidx/compose/ui/f;

    invoke-interface {v15, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v16, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v2

    invoke-static {v6, v3}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v4

    invoke-static {v6, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v6}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/f;

    if-nez v7, :cond_19

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_19
    invoke-interface {v6}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v6}, Landroidx/compose/runtime/i;->e()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1a
    invoke-interface {v6}, Landroidx/compose/runtime/i;->o()V

    :goto_10
    invoke-static {v6}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v5, v2, v7}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-interface {v5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_1c
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/e;

    sget v2, Landroidx/compose/material/SliderKt;->e:F

    invoke-interface {v0, v2}, Lo0/e;->E0(F)F

    move-result v19

    sget v2, Landroidx/compose/material/SliderKt;->a:F

    invoke-interface {v0, v2}, Lo0/e;->E0(F)F

    move-result v20

    invoke-interface {v0, v12}, Lo0/e;->y0(F)F

    move-result v0

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v21

    mul-float v2, v0, v10

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v22

    mul-float/2addr v0, v11

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v23

    sget-object v5, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/b$a;->g()Landroidx/compose/ui/b;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Landroidx/compose/foundation/layout/f;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b;)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v2, v3, 0x70

    shl-int/lit8 v4, v1, 0x6

    move/from16 v16, v1

    and-int/lit16 v1, v4, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0x1c00

    or-int/2addr v1, v2

    const v24, 0xe000

    and-int v2, v4, v24

    or-int/2addr v1, v2

    const/high16 v25, 0x70000

    and-int v2, v4, v25

    or-int v26, v1, v2

    move-object/from16 v1, p4

    move-object/from16 v4, v17

    move/from16 v2, p0

    move v11, v3

    move-object/from16 v10, v18

    move/from16 v3, p1

    move-object v12, v4

    const/4 v15, 0x1

    move/from16 v4, p2

    move-object v14, v5

    move-object/from16 v5, p3

    move-object/from16 p11, v6

    move/from16 v6, v20

    move-object/from16 v17, v7

    move/from16 v7, v19

    move-object/from16 v8, p11

    move/from16 v9, v26

    invoke-static/range {v0 .. v9}, Landroidx/compose/material/SliderKt;->e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V

    move-object/from16 v9, p11

    invoke-interface {v9, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1d

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_1e

    :cond_1d
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;

    invoke-direct {v1, v12}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v15, v1}, Landroidx/compose/ui/semantics/k;->b(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-static {v0, v15, v13}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/f;ZLp/i;)Landroidx/compose/ui/f;

    move-result-object v0

    move-object/from16 v12, p9

    invoke-interface {v0, v12}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v1

    and-int/lit16 v0, v11, 0x1c00

    const v11, 0x180006

    or-int/2addr v0, v11

    and-int v18, v16, v24

    or-int v0, v0, v18

    shl-int/lit8 v2, v16, 0xf

    and-int v19, v2, v25

    or-int v8, v0, v19

    move-object/from16 v0, v17

    move/from16 v2, v22

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v5, p0

    move/from16 v6, v21

    move-object v7, v9

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1f

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_20

    :cond_1f
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;

    invoke-direct {v1, v10}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_20
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v15, v1}, Landroidx/compose/ui/semantics/k;->b(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object v0

    move-object/from16 v10, p7

    invoke-static {v0, v15, v10}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/f;ZLp/i;)Landroidx/compose/ui/f;

    move-result-object v0

    move-object/from16 v14, p10

    invoke-interface {v0, v14}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v1

    shr-int/lit8 v0, v16, 0xc

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v11

    or-int v0, v0, v18

    or-int v8, v0, v19

    move-object/from16 v0, v17

    move/from16 v2, v23

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p0

    move/from16 v6, v21

    move-object v7, v9

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_21
    :goto_11
    invoke-interface {v9}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v15

    if-eqz v15, :cond_22

    new-instance v11, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;

    move-object v0, v11

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v13, v11

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object v14, v13

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;-><init>(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;II)V

    invoke-interface {v15, v14}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void
.end method

.method private static final d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    const v0, 0x19909aaa

    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v3

    and-int/lit8 v9, v8, 0x6

    if-nez v9, :cond_1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v8

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    and-int/lit8 v10, v8, 0x30

    if-nez v10, :cond_3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v9, v10

    :cond_3
    and-int/lit16 v10, v8, 0x180

    move/from16 v14, p2

    if-nez v10, :cond_5

    invoke-interface {v3, v14}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v9, v10

    :cond_5
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_7

    invoke-interface {v3, v4}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_4

    :cond_6
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v9, v10

    :cond_7
    and-int/lit16 v10, v8, 0x6000

    if-nez v10, :cond_9

    invoke-interface {v3, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_5

    :cond_8
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v9, v10

    :cond_9
    const/high16 v10, 0x30000

    and-int/2addr v10, v8

    if-nez v10, :cond_b

    invoke-interface {v3, v6}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v9, v10

    :cond_b
    const/high16 v10, 0x180000

    and-int/2addr v10, v8

    if-nez v10, :cond_d

    invoke-interface {v3, v7}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v10

    if-eqz v10, :cond_c

    const/high16 v10, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v10, 0x80000

    :goto_7
    or-int/2addr v9, v10

    :cond_d
    move v13, v9

    const v9, 0x92493

    and-int/2addr v9, v13

    const v10, 0x92492

    if-ne v9, v10, :cond_f

    invoke-interface {v3}, Landroidx/compose/runtime/i;->h()Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_8

    :cond_e
    invoke-interface {v3}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_d

    :cond_f
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, -0x1

    const-string v10, "androidx.compose.material.SliderThumb (Slider.kt:696)"

    invoke-static {v0, v13, v9, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_10
    sget-object v16, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, p2

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v9}, Landroidx/compose/ui/b$a;->g()Landroidx/compose/ui/b;

    move-result-object v10

    invoke-interface {v1, v0, v10}, Landroidx/compose/foundation/layout/f;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-virtual {v9}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v9

    invoke-static {v3, v12}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v10

    invoke-interface {v3}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v12

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    invoke-interface {v3}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/f;

    if-nez v11, :cond_11

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_11
    invoke-interface {v3}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v3}, Landroidx/compose/runtime/i;->e()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v3, v15}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_12
    invoke-interface {v3}, Landroidx/compose/runtime/i;->o()V

    :goto_9
    invoke-static {v3}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v11, v9, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v11, v12, v9}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-interface {v11}, Landroidx/compose/runtime/i;->e()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    :cond_13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10, v9}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v11, v0, v9}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v9}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v10

    if-ne v0, v10, :cond_15

    invoke-static {}, Landroidx/compose/runtime/r2;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_15
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    and-int/lit16 v10, v13, 0x1c00

    const/16 v11, 0x800

    if-ne v10, v11, :cond_16

    const/4 v10, 0x1

    goto :goto_a

    :cond_16
    const/4 v10, 0x0

    :goto_a
    invoke-interface {v3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v11

    const/4 v15, 0x0

    if-nez v10, :cond_17

    invoke-virtual {v9}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v9

    if-ne v11, v9, :cond_18

    :cond_17
    new-instance v11, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;

    invoke-direct {v11, v4, v0, v15}, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;-><init>(Lp/i;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v3, v11}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_18
    check-cast v11, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v16, v13, 0x9

    and-int/lit8 v9, v16, 0xe

    invoke-static {v4, v11, v3, v9}, Landroidx/compose/runtime/g0;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    sget v0, Landroidx/compose/material/SliderKt;->d:F

    goto :goto_b

    :cond_19
    sget v0, Landroidx/compose/material/SliderKt;->c:F

    :goto_b
    invoke-static {v2, v7, v7}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    move-result-object v11

    sget v10, Landroidx/compose/material/SliderKt;->b:F

    const/16 v18, 0x36

    const/16 v19, 0x4

    const/4 v9, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v24, v11

    move-wide/from16 v11, v20

    move/from16 v20, v13

    move-object v13, v3

    move/from16 v14, v18

    move/from16 p7, v0

    move-object v1, v15

    const/4 v0, 0x2

    move/from16 v15, v19

    invoke-static/range {v9 .. v15}, Landroidx/compose/material/RippleKt;->f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;

    move-result-object v9

    move-object/from16 v10, v24

    invoke-static {v10, v4, v9}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/f;Lp/g;Landroidx/compose/foundation/x;)Landroidx/compose/ui/f;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v4, v10, v0, v1}, Landroidx/compose/foundation/v;->b(Landroidx/compose/ui/f;Lp/i;ZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v21

    if-eqz v6, :cond_1a

    move/from16 v22, p7

    goto :goto_c

    :cond_1a
    int-to-float v0, v10

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    move/from16 v22, v0

    :goto_c
    invoke-static {}, Lq/g;->e()Lq/f;

    move-result-object v23

    const/16 v29, 0x18

    const/16 v30, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    invoke-static/range {v21 .. v30}, Landroidx/compose/ui/draw/l;->b(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/a5;ZJJILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    shr-int/lit8 v1, v20, 0xf

    and-int/lit8 v1, v1, 0xe

    and-int/lit8 v9, v16, 0x70

    or-int/2addr v1, v9

    invoke-interface {v5, v6, v3, v1}, Landroidx/compose/material/j;->c(ZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v11

    invoke-static {}, Lq/g;->e()Lq/f;

    move-result-object v1

    invoke-static {v0, v11, v12, v1}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-static {v0, v3, v10}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-interface {v3}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1b
    :goto_d
    invoke-interface {v3}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v10, Landroidx/compose/material/SliderKt$SliderThumb$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$SliderThumb$2;-><init>(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFI)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_1c
    return-void
.end method

.method private static final e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v14, p5

    move/from16 v15, p9

    const v0, 0x6d4348a2

    move-object/from16 v4, p8

    invoke-interface {v4, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v13

    and-int/lit8 v4, v15, 0x6

    if-nez v4, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_1
    move v4, v15

    :goto_1
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    invoke-interface {v13, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_5

    invoke-interface {v13, v3}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v4, v5

    :cond_5
    and-int/lit16 v5, v15, 0xc00

    move/from16 v12, p3

    if-nez v5, :cond_7

    invoke-interface {v13, v12}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v4, v5

    :cond_7
    and-int/lit16 v5, v15, 0x6000

    move/from16 v11, p4

    if-nez v5, :cond_9

    invoke-interface {v13, v11}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_5

    :cond_8
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v4, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v15

    if-nez v5, :cond_b

    invoke-interface {v13, v14}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v5, 0x10000

    :goto_6
    or-int/2addr v4, v5

    :cond_b
    const/high16 v5, 0x180000

    and-int/2addr v5, v15

    move/from16 v10, p6

    if-nez v5, :cond_d

    invoke-interface {v13, v10}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v5

    if-eqz v5, :cond_c

    const/high16 v5, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v5, 0x80000

    :goto_7
    or-int/2addr v4, v5

    :cond_d
    const/high16 v5, 0xc00000

    and-int/2addr v5, v15

    if-nez v5, :cond_f

    move/from16 v5, p7

    invoke-interface {v13, v5}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v16, 0x400000

    :goto_8
    or-int v4, v4, v16

    goto :goto_9

    :cond_f
    move/from16 v5, p7

    :goto_9
    const v16, 0x492493

    and-int v6, v4, v16

    const v7, 0x492492

    if-ne v6, v7, :cond_11

    invoke-interface {v13}, Landroidx/compose/runtime/i;->h()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_a

    :cond_10
    invoke-interface {v13}, Landroidx/compose/runtime/i;->G()V

    move-object v3, v13

    goto/16 :goto_11

    :cond_11
    :goto_a
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, -0x1

    const-string v7, "androidx.compose.material.Track (Slider.kt:747)"

    invoke-static {v0, v4, v6, v7}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_12
    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v6, v4, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v0, v6

    const/4 v6, 0x0

    invoke-interface {v2, v3, v6, v13, v0}, Landroidx/compose/material/j;->b(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v2, v3, v9, v13, v0}, Landroidx/compose/material/j;->b(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v8

    invoke-interface {v2, v3, v6, v13, v0}, Landroidx/compose/material/j;->a(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v12

    invoke-interface {v2, v3, v9, v13, v0}, Landroidx/compose/material/j;->a(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v0

    const/high16 v18, 0x380000

    and-int v6, v4, v18

    const/high16 v9, 0x100000

    if-ne v6, v9, :cond_13

    const/4 v6, 0x1

    goto :goto_b

    :cond_13
    const/4 v6, 0x0

    :goto_b
    invoke-interface {v13, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    const/high16 v9, 0x1c00000

    and-int/2addr v9, v4

    const/high16 v2, 0x800000

    if-ne v9, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    :goto_c
    or-int/2addr v2, v6

    const v6, 0xe000

    and-int/2addr v6, v4

    const/16 v9, 0x4000

    if-ne v6, v9, :cond_15

    const/4 v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    :goto_d
    or-int/2addr v2, v6

    and-int/lit16 v6, v4, 0x1c00

    const/16 v9, 0x800

    if-ne v6, v9, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    or-int/2addr v2, v6

    invoke-interface {v13, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v13, v14}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v13, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v13, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_18

    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v6, v2, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v16, v4

    move-object v3, v13

    goto :goto_10

    :cond_18
    :goto_f
    new-instance v2, Landroidx/compose/material/SliderKt$Track$1$1;

    move/from16 v16, v4

    move-object v4, v2

    move/from16 v5, p6

    move-object v6, v7

    move/from16 v7, p7

    move-object/from16 v17, v8

    move/from16 v8, p4

    move/from16 v9, p3

    move-object/from16 v10, v17

    move-object/from16 v11, p5

    move-object v3, v13

    move-object v13, v0

    invoke-direct/range {v4 .. v13}, Landroidx/compose/material/SliderKt$Track$1$1;-><init>(FLandroidx/compose/runtime/a3;FFFLandroidx/compose/runtime/a3;Ljava/util/List;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    move-object v6, v2

    :goto_10
    check-cast v6, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v16, 0xe

    invoke-static {v1, v6, v3, v0}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_19
    :goto_11
    invoke-interface {v3}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v10

    if-eqz v10, :cond_1a

    new-instance v11, Landroidx/compose/material/SliderKt$Track$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$Track$2;-><init>(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFI)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final synthetic f(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->a(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V

    return-void
.end method

.method public static final synthetic g(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material/SliderKt;->c(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V

    return-void
.end method

.method public static final synthetic h(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    return-void
.end method

.method public static final synthetic i(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material/SliderKt;->e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V

    return-void
.end method

.method public static final synthetic j(Landroidx/compose/ui/input/pointer/c;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->r(Landroidx/compose/ui/input/pointer/c;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(FFF)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->s(FFF)F

    move-result p0

    return p0
.end method

.method public static final synthetic l()Landroidx/compose/animation/core/r0;
    .locals 1

    sget-object v0, Landroidx/compose/material/SliderKt;->i:Landroidx/compose/animation/core/r0;

    return-object v0
.end method

.method public static final synthetic m(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material/SliderKt;->u(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(FFFFF)F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->v(FFFFF)F

    move-result p0

    return p0
.end method

.method public static final synthetic o(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->w(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->x(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(FLjava/util/List;FF)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt;->y(FLjava/util/List;FF)F

    move-result p0

    return p0
.end method

.method private static final r(Landroidx/compose/ui/input/pointer/c;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    iget v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    invoke-direct {v0, p4}, Landroidx/compose/material/SliderKt$awaitSlop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v5, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;

    invoke-direct {v5, p4}, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    iput-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    iput v2, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DragGestureDetectorCopyKt;->a(Landroidx/compose/ui/input/pointer/c;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object v7, p4

    move-object p4, p0

    move-object p0, v7

    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/w;

    if-eqz p4, :cond_4

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p4, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method private static final s(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p0

    div-float/2addr p2, p1

    :goto_0
    cmpg-float p0, p2, v0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p0

    if-lez p1, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method public static final t()F
    .locals 1

    sget v0, Landroidx/compose/material/SliderKt;->a:F

    return v0
.end method

.method private static final u(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;
    .locals 13

    if-eqz p5, :cond_0

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x4

    aput-object p8, v2, v0

    new-instance v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;

    const/4 v12, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p10

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p9

    invoke-direct/range {v3 .. v12}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;-><init>(Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZFLandroidx/compose/runtime/a3;Lkotlin/coroutines/Continuation;)V

    move-object v1, p0

    invoke-static {p0, v2, v0}, Landroidx/compose/ui/input/pointer/l0;->d(Landroidx/compose/ui/f;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static final v(FFFFF)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->s(FFF)F

    move-result p0

    invoke-static {p3, p4, p0}, Lq0/b;->b(FFF)F

    move-result p0

    return p0
.end method

.method private static final w(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1

    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0, p3, p4}, Landroidx/compose/material/SliderKt;->v(FFFFF)F

    move-result v0

    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->v(FFFFF)F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p0

    return-object p0
.end method

.method private static final x(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;
    .locals 9

    invoke-interface {p5}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p5}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result v6

    new-instance v0, Landroidx/compose/material/SliderKt$sliderSemantics$1;

    move-object v2, v0

    move v3, p2

    move-object v4, p5

    move v5, p6

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/SliderKt$sliderSemantics$1;-><init>(ZLkotlin/ranges/ClosedFloatingPointRange;IFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {p0, p4, v0, p2, p3}, Landroidx/compose/ui/semantics/k;->c(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object p0

    invoke-static {p0, p1, p5, p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->a(Landroidx/compose/ui/f;FLkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method private static final y(FLjava/util/List;FF)F
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p2, p3, v1}, Lq0/b;->b(FFF)F

    move-result v1

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_2

    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {p2, p3, v5}, Lq0/b;->b(FFF)F

    move-result v5

    sub-float/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_1

    move-object v0, v4

    move v1, v5

    :cond_1
    if-eq v3, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_1
    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p2, p3, p0}, Lq0/b;->b(FFF)F

    move-result p0

    :cond_3
    return p0
.end method

.method private static final z(I)Ljava/util/List;
    .locals 5

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p0, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    add-int/lit8 v4, p0, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    return-object p0
.end method
