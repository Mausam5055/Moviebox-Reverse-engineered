.class public abstract Landroidx/compose/material3/IconKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    sget-object v1, Lr/c;->a:Lr/c;

    invoke-virtual {v1}, Lr/c;->a()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/IconKt;->a:Landroidx/compose/ui/f;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;JLandroidx/compose/runtime/i;II)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p6

    const v0, -0x7faffaf9

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v12

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0x6

    if-nez v1, :cond_2

    invoke-interface {v12, v9}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, p7, 0x2

    const/16 v3, 0x20

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_5

    invoke-interface {v12, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    const/16 v6, 0x800

    if-nez v5, :cond_a

    and-int/lit8 v5, p7, 0x8

    move-wide/from16 v7, p3

    if-nez v5, :cond_9

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    goto :goto_6

    :cond_9
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_a
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v5, v1, 0x493

    const/16 v13, 0x492

    if-ne v5, v13, :cond_c

    invoke-interface {v12}, Landroidx/compose/runtime/i;->h()Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v12}, Landroidx/compose/runtime/i;->G()V

    move-object v3, v4

    move-wide v4, v7

    goto/16 :goto_11

    :cond_c
    :goto_8
    invoke-interface {v12}, Landroidx/compose/runtime/i;->B()V

    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_f

    invoke-interface {v12}, Landroidx/compose/runtime/i;->I()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v12}, Landroidx/compose/runtime/i;->G()V

    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_e

    and-int/lit16 v1, v1, -0x1c01

    :cond_e
    move-object v13, v4

    goto :goto_b

    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    sget-object v2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_a

    :cond_10
    move-object v2, v4

    :goto_a
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_11

    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v4

    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v4

    and-int/lit16 v1, v1, -0x1c01

    move-object v13, v2

    move-wide v7, v4

    goto :goto_b

    :cond_11
    move-object v13, v2

    :goto_b
    invoke-interface {v12}, Landroidx/compose/runtime/i;->s()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.Icon (Icon.kt:136)"

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_12
    const v0, 0x4224cb4

    invoke-interface {v12, v0}, Landroidx/compose/runtime/i;->x(I)V

    and-int/lit16 v0, v1, 0x1c00

    xor-int/lit16 v0, v0, 0xc00

    const/4 v5, 0x0

    const/4 v2, 0x1

    if-le v0, v6, :cond_13

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    and-int/lit16 v0, v1, 0xc00

    if-ne v0, v6, :cond_15

    :cond_14
    move v0, v2

    goto :goto_c

    :cond_15
    move v0, v5

    :goto_c
    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v0, :cond_16

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_18

    :cond_16
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v4, v6

    goto :goto_d

    :cond_17
    sget-object v14, Landroidx/compose/ui/graphics/v1;->b:Landroidx/compose/ui/graphics/v1$a;

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-wide v15, v7

    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/graphics/v1$a;->b(Landroidx/compose/ui/graphics/v1$a;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/v1;

    move-result-object v0

    move-object v4, v0

    :goto_d
    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_18
    move-object v14, v4

    check-cast v14, Landroidx/compose/ui/graphics/v1;

    invoke-interface {v12}, Landroidx/compose/runtime/i;->N()V

    const v0, 0x4224d2f

    invoke-interface {v12, v0}, Landroidx/compose/runtime/i;->x(I)V

    if-eqz v10, :cond_1c

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const v4, 0x4224d70

    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->x(I)V

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v3, :cond_19

    move v1, v2

    goto :goto_e

    :cond_19
    move v1, v5

    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1a

    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_1b

    :cond_1a
    new-instance v3, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;

    invoke-direct {v3, v10}, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1b
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/i;->N()V

    invoke-static {v0, v5, v3, v2, v6}, Landroidx/compose/ui/semantics/k;->c(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    :goto_f
    move-object v15, v0

    goto :goto_10

    :cond_1c
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_f

    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/i;->N()V

    invoke-static {v13}, Landroidx/compose/ui/graphics/b4;->c(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/material3/IconKt;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/layout/e;->a:Landroidx/compose/ui/layout/e$a;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/e$a;->a()Landroidx/compose/ui/layout/e;

    move-result-object v4

    const/16 v16, 0x16

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v5, v6

    move-object v6, v14

    move-wide/from16 v18, v7

    move/from16 v7, v16

    move-object/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/draw/j;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-interface {v0, v15}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1d
    move-object v3, v13

    move-wide/from16 v4, v18

    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v8

    if-eqz v8, :cond_1e

    new-instance v12, Landroidx/compose/material3/IconKt$Icon$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconKt$Icon$3;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;JII)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_1e
    return-void
.end method

.method private static final b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;)Landroidx/compose/ui/f;
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    sget-object v2, Ly/m;->b:Ly/m$a;

    invoke-virtual {v2}, Ly/m$a;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ly/m;->f(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/IconKt;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/material3/IconKt;->a:Landroidx/compose/ui/f;

    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method private static final c(J)Z
    .locals 1

    invoke-static {p0, p1}, Ly/m;->i(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ly/m;->g(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
