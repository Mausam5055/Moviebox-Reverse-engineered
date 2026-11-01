.class public abstract Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;Landroidx/compose/runtime/i;II)V
    .locals 19

    move-object/from16 v2, p1

    move/from16 v8, p8

    const v0, 0x441d0e20

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v1

    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v8, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v8

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v8, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    :goto_5
    and-int/lit8 v9, p9, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v4, v11

    :goto_7
    and-int/lit8 v11, p9, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v12, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v8, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v4, v13

    :goto_9
    and-int/lit8 v13, p9, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_10

    or-int/2addr v4, v14

    :cond_f
    move/from16 v14, p5

    goto :goto_b

    :cond_10
    and-int/2addr v14, v8

    if-nez v14, :cond_f

    move/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v4, v15

    :goto_b
    and-int/lit8 v15, p9, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_12

    or-int v4, v4, v16

    move-object/from16 v6, p6

    goto :goto_d

    :cond_12
    and-int v16, v8, v16

    move-object/from16 v6, p6

    if-nez v16, :cond_14

    invoke-interface {v1, v6}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v4, v4, v16

    :cond_14
    :goto_d
    const v16, 0x92493

    and-int v0, v4, v16

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    move-object v3, v7

    move-object v4, v10

    move-object v5, v12

    move-object v7, v6

    move v6, v14

    goto/16 :goto_15

    :cond_16
    :goto_e
    if-eqz v5, :cond_17

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    move-object v7, v0

    :cond_17
    if-eqz v9, :cond_18

    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    move-result-object v0

    goto :goto_f

    :cond_18
    move-object v0, v10

    :goto_f
    if-eqz v11, :cond_19

    sget-object v3, Landroidx/compose/ui/layout/e;->a:Landroidx/compose/ui/layout/e$a;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/e$a;->a()Landroidx/compose/ui/layout/e;

    move-result-object v3

    goto :goto_10

    :cond_19
    move-object v3, v12

    :goto_10
    if-eqz v13, :cond_1a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1a
    move v5, v14

    :goto_11
    const/4 v9, 0x0

    if-eqz v15, :cond_1b

    move-object v6, v9

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, -0x1

    const-string v11, "androidx.compose.foundation.Image (Image.kt:243)"

    const v12, 0x441d0e20

    invoke-static {v12, v4, v10, v11}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_1c
    const/4 v15, 0x0

    if-eqz v2, :cond_20

    const v10, 0x3e0116d7

    invoke-interface {v1, v10}, Landroidx/compose/runtime/i;->P(I)V

    sget-object v10, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    and-int/lit8 v4, v4, 0x70

    const/4 v11, 0x1

    const/16 v12, 0x20

    if-ne v4, v12, :cond_1d

    move v4, v11

    goto :goto_12

    :cond_1d
    move v4, v15

    :goto_12
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    if-nez v4, :cond_1e

    sget-object v4, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v4}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v12, v4, :cond_1f

    :cond_1e
    new-instance v12, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;

    invoke-direct {v12, v2}, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v15, v12, v11, v9}, Landroidx/compose/ui/semantics/k;->c(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    goto :goto_13

    :cond_20
    const v4, 0x3e033709

    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    sget-object v4, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :goto_13
    invoke-interface {v7, v4}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/draw/d;->b(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v9

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v12, v0

    move-object v13, v3

    move v14, v5

    move v4, v15

    move-object v15, v6

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/draw/j;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v9

    sget-object v10, Landroidx/compose/foundation/ImageKt$Image$1;->a:Landroidx/compose/foundation/ImageKt$Image$1;

    invoke-static {v1, v4}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v4

    invoke-static {v1, v9}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v9

    invoke-interface {v1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    invoke-interface {v1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/f;

    if-nez v14, :cond_21

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_21
    invoke-interface {v1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v1}, Landroidx/compose/runtime/i;->e()Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_22
    invoke-interface {v1}, Landroidx/compose/runtime/i;->o()V

    :goto_14
    invoke-static {v1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v13

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v13, v11, v10}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-interface {v13}, Landroidx/compose/runtime/i;->e()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    :cond_23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4, v9}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_25
    move-object v4, v0

    move/from16 v18, v5

    move-object v5, v3

    move-object v3, v7

    move-object v7, v6

    move/from16 v6, v18

    :goto_15
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v10

    if-eqz v10, :cond_26

    new-instance v11, Landroidx/compose/foundation/ImageKt$Image$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt$Image$2;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;II)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_26
    return-void
.end method
