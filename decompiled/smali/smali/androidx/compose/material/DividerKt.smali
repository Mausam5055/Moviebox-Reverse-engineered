.class public abstract Landroidx/compose/material/DividerKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;JFFLandroidx/compose/runtime/i;II)V
    .locals 23

    move/from16 v6, p6

    const v0, -0x4a783646

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v1

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v6, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v6, 0x6

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
    or-int/2addr v4, v6

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v6

    :goto_1
    and-int/lit8 v5, v6, 0x30

    if-nez v5, :cond_4

    and-int/lit8 v5, p7, 0x2

    move-wide/from16 v7, p1

    if-nez v5, :cond_3

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    goto :goto_3

    :cond_4
    move-wide/from16 v7, p1

    :goto_3
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v4, v4, 0x180

    :cond_5
    move/from16 v9, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v6, 0x180

    if-nez v9, :cond_5

    move/from16 v9, p3

    invoke-interface {v1, v9}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    :goto_5
    and-int/lit8 v10, p7, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v4, v4, 0xc00

    :cond_8
    move/from16 v11, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v6, 0xc00

    if-nez v11, :cond_8

    move/from16 v11, p4

    invoke-interface {v1, v11}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v4, v12

    :goto_7
    and-int/lit16 v12, v4, 0x493

    const/16 v13, 0x492

    if-ne v12, v13, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    move-object v2, v3

    :cond_c
    :goto_8
    move v4, v9

    move v5, v11

    goto/16 :goto_f

    :cond_d
    :goto_9
    invoke-interface {v1}, Landroidx/compose/runtime/i;->B()V

    and-int/lit8 v12, v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_10

    invoke-interface {v1}, Landroidx/compose/runtime/i;->I()Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_a

    :cond_e
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_f

    and-int/lit8 v4, v4, -0x71

    :cond_f
    move-object v2, v3

    goto :goto_c

    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_b

    :cond_11
    move-object v2, v3

    :goto_b
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_12

    sget-object v3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    const/4 v7, 0x6

    invoke-virtual {v3, v1, v7}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/b;->g()J

    move-result-wide v15

    const/16 v21, 0xe

    const/16 v22, 0x0

    const v17, 0x3df5c28f    # 0.12f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    and-int/lit8 v4, v4, -0x71

    :cond_12
    if-eqz v5, :cond_13

    int-to-float v3, v14

    invoke-static {v3}, Lo0/i;->g(F)F

    move-result v3

    move v9, v3

    :cond_13
    if-eqz v10, :cond_14

    int-to-float v3, v13

    invoke-static {v3}, Lo0/i;->g(F)F

    move-result v3

    move v11, v3

    :cond_14
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/i;->s()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, -0x1

    const-string v5, "androidx.compose.material.Divider (Divider.kt:48)"

    invoke-static {v0, v4, v3, v5}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    cmpg-float v3, v11, v0

    if-nez v3, :cond_16

    sget-object v3, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_d

    :cond_16
    sget-object v15, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v11

    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    :goto_d
    sget-object v4, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {v4}, Lo0/i$a;->a()F

    move-result v4

    invoke-static {v9, v4}, Lo0/i;->i(FF)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, -0x7b61a87

    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/e;

    invoke-interface {v4}, Lo0/e;->getDensity()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    invoke-static {v5}, Lo0/i;->g(F)F

    move-result v4

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    goto :goto_e

    :cond_17
    const v4, -0x7b5358a

    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    move v4, v9

    :goto_e
    invoke-interface {v2, v3}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v0, v14, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 p0, v0

    move-wide/from16 p1, v7

    move-object/from16 p3, v5

    move/from16 p4, v3

    move-object/from16 p5, v4

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-static {v0, v1, v13}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    goto/16 :goto_8

    :goto_f
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v10, Landroidx/compose/material/DividerKt$Divider$1;

    move-object v0, v10

    move-object v1, v2

    move-wide v2, v7

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/f;JFFII)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void
.end method
