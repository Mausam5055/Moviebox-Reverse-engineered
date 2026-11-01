.class public abstract Landroidx/compose/foundation/lazy/LazyDslKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/t;ZLandroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/foundation/gestures/g;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;II)V
    .locals 29

    move/from16 v10, p10

    move/from16 v11, p11

    const v0, -0x2c266969

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v1

    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v10, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_5

    and-int/lit8 v5, v11, 0x2

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v5, p1

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :goto_5
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v10, 0xc00

    if-nez v9, :cond_9

    move/from16 v9, p3

    invoke-interface {v1, v9}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v4, v12

    :goto_7
    and-int/lit16 v12, v10, 0x6000

    if-nez v12, :cond_e

    and-int/lit8 v12, v11, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v12, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v4, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p4

    :goto_9
    and-int/lit8 v13, v11, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_10

    or-int/2addr v4, v14

    :cond_f
    move-object/from16 v14, p5

    goto :goto_b

    :cond_10
    and-int/2addr v14, v10

    if-nez v14, :cond_f

    move-object/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v4, v15

    :goto_b
    const/high16 v15, 0x180000

    and-int/2addr v15, v10

    if-nez v15, :cond_14

    and-int/lit8 v15, v11, 0x40

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-interface {v1, v15}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v15, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v4, v4, v16

    goto :goto_d

    :cond_14
    move-object/from16 v15, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v4, v4, v17

    move/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v17, v10, v17

    move/from16 v3, p7

    if-nez v17, :cond_17

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v4, v4, v17

    :cond_17
    :goto_f
    and-int/lit16 v3, v11, 0x100

    const/high16 v17, 0x6000000

    if-eqz v3, :cond_19

    or-int v4, v4, v17

    :cond_18
    move-object/from16 v3, p8

    goto :goto_11

    :cond_19
    and-int v3, v10, v17

    if-nez v3, :cond_18

    move-object/from16 v3, p8

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v17, 0x2000000

    :goto_10
    or-int v4, v4, v17

    :goto_11
    const v17, 0x2492493

    and-int v3, v4, v17

    const v5, 0x2492492

    if-ne v3, v5, :cond_1c

    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v6, v7

    move v4, v9

    move-object v5, v12

    move-object v8, v14

    move-object v7, v15

    move/from16 v9, p7

    goto/16 :goto_1d

    :cond_1c
    :goto_12
    invoke-interface {v1}, Landroidx/compose/runtime/i;->B()V

    and-int/lit8 v3, v10, 0x1

    const v5, -0x380001

    const v17, -0xe001

    if-eqz v3, :cond_21

    invoke-interface {v1}, Landroidx/compose/runtime/i;->I()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_1e

    and-int/lit8 v4, v4, -0x71

    :cond_1e
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1f

    and-int v4, v4, v17

    :cond_1f
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_20

    and-int/2addr v4, v5

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v0, p7

    move-object v6, v7

    move v5, v9

    move-object v7, v12

    move-object v8, v14

    move-object v9, v15

    goto/16 :goto_1c

    :cond_21
    :goto_13
    if-eqz v2, :cond_22

    sget-object v2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_14

    :cond_22
    move-object/from16 v2, p0

    :goto_14
    and-int/lit8 v3, v11, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_23

    const/4 v3, 0x3

    invoke-static {v5, v5, v1, v5, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->c(IILandroidx/compose/runtime/i;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v3

    and-int/lit8 v4, v4, -0x71

    goto :goto_15

    :cond_23
    move-object/from16 v3, p1

    :goto_15
    if-eqz v6, :cond_24

    int-to-float v6, v5

    invoke-static {v6}, Lo0/i;->g(F)F

    move-result v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/t;

    move-result-object v6

    goto :goto_16

    :cond_24
    move-object v6, v7

    :goto_16
    if-eqz v8, :cond_25

    goto :goto_17

    :cond_25
    move v5, v9

    :goto_17
    and-int/lit8 v7, v11, 0x10

    if-eqz v7, :cond_27

    sget-object v7, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    if-nez v5, :cond_26

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v7

    goto :goto_18

    :cond_26
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/b;->a()Landroidx/compose/foundation/layout/b$k;

    move-result-object v7

    :goto_18
    and-int v4, v4, v17

    goto :goto_19

    :cond_27
    move-object v7, v12

    :goto_19
    if-eqz v13, :cond_28

    sget-object v8, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v8}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v8

    goto :goto_1a

    :cond_28
    move-object v8, v14

    :goto_1a
    and-int/lit8 v9, v11, 0x40

    if-eqz v9, :cond_29

    sget-object v9, Landroidx/compose/foundation/gestures/m;->a:Landroidx/compose/foundation/gestures/m;

    const/4 v12, 0x6

    invoke-virtual {v9, v1, v12}, Landroidx/compose/foundation/gestures/m;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/gestures/g;

    move-result-object v9

    const v12, -0x380001

    and-int/2addr v4, v12

    goto :goto_1b

    :cond_29
    move-object v9, v15

    :goto_1b
    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_1c

    :cond_2a
    move/from16 v0, p7

    :goto_1c
    invoke-interface {v1}, Landroidx/compose/runtime/i;->s()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v12

    if-eqz v12, :cond_2b

    const/4 v12, -0x1

    const-string v13, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)"

    const v14, -0x2c266969

    invoke-static {v14, v4, v12, v13}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2b
    and-int/lit8 v12, v4, 0xe

    or-int/lit16 v12, v12, 0x6000

    and-int/lit8 v13, v4, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v4, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v13, v4, 0x1c00

    or-int/2addr v12, v13

    shr-int/lit8 v13, v4, 0x3

    const/high16 v14, 0x70000

    and-int/2addr v14, v13

    or-int/2addr v12, v14

    const/high16 v14, 0x380000

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x9

    const/high16 v14, 0xe000000

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0xf

    const/high16 v14, 0x70000000

    and-int/2addr v13, v14

    or-int v26, v12, v13

    shr-int/lit8 v4, v4, 0x12

    and-int/lit16 v4, v4, 0x380

    move/from16 v27, v4

    const/16 v28, 0xc80

    const/16 v16, 0x1

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v12, v2

    move-object v13, v3

    move-object v14, v6

    move v15, v5

    move-object/from16 v17, v9

    move/from16 v18, v0

    move-object/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v24, p8

    move-object/from16 v25, v1

    invoke-static/range {v12 .. v28}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/t;ZZLandroidx/compose/foundation/gestures/g;ZILandroidx/compose/ui/b$b;Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$c;Landroidx/compose/foundation/layout/b$d;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;III)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_2c
    move v4, v5

    move-object v5, v7

    move-object v7, v9

    move v9, v0

    :goto_1d
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v12

    if-eqz v12, :cond_2d

    new-instance v13, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$1;

    move-object v0, v13

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    move-object v6, v8

    move v8, v9

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$1;-><init>(Landroidx/compose/ui/f;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/t;ZLandroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/foundation/gestures/g;ZLkotlin/jvm/functions/Function1;II)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_2d
    return-void
.end method
