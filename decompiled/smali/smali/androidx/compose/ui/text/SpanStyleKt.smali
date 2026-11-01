.class public abstract Landroidx/compose/ui/text/SpanStyleKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:Landroidx/compose/ui/text/style/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    invoke-static {v0}, Lo0/x;->c(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->a:J

    const/4 v0, 0x0

    invoke-static {v0}, Lo0/x;->c(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->b:J

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->d()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/ui/text/SpanStyleKt;->c:J

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->d:J

    sget-object v2, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/text/style/l$a;->b(J)Landroidx/compose/ui/text/style/l;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SpanStyleKt;->e:Landroidx/compose/ui/text/style/l;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/style/l;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/SpanStyleKt;->e:Landroidx/compose/ui/text/style/l;

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/text/x;JLandroidx/compose/ui/graphics/j1;FJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)Landroidx/compose/ui/text/x;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-wide/from16 v13, p17

    move-object/from16 v15, p19

    move-object/from16 v0, p20

    invoke-static/range {p5 .. p6}, Lo0/x;->d(J)Z

    move-result v16

    const-wide/16 v17, 0x10

    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v13

    move-wide/from16 v11, p5

    invoke-static {v11, v12, v13, v14}, Lo0/w;->e(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_3

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v13, p15

    :goto_0
    move-wide/from16 v11, p17

    :goto_1
    move-object/from16 v14, p21

    :goto_2
    move-object/from16 v15, p22

    goto/16 :goto_8

    :cond_1
    move-wide/from16 v11, p5

    :goto_3
    if-nez v3, :cond_2

    cmp-long v13, v1, v17

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v13

    invoke-interface {v13}, Landroidx/compose/ui/text/style/l;->a()J

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v13

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v13

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v13

    if-ne v8, v13, :cond_0

    :cond_5
    invoke-static/range {p12 .. p13}, Lo0/x;->d(J)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v13

    move-wide/from16 v11, p12

    invoke-static {v11, v12, v13, v14}, Lo0/w;->e(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_4

    :cond_6
    move-wide/from16 v11, p12

    :goto_4
    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v13

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v13

    invoke-interface {v13}, Landroidx/compose/ui/text/style/l;->d()Landroidx/compose/ui/graphics/j1;

    move-result-object v13

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v13

    invoke-interface {v13}, Landroidx/compose/ui/text/style/l;->getAlpha()F

    move-result v13

    cmpg-float v13, v4, v13

    if-nez v13, :cond_0

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v13

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v13

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_b
    move-object/from16 v13, p15

    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_c
    move-object/from16 v14, p16

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    goto/16 :goto_0

    :goto_5
    if-eqz v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v11

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_e
    move-wide/from16 v11, p17

    cmp-long v16, v11, v17

    if-eqz v16, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_10
    :goto_6
    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v14

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    :cond_11
    move-object/from16 v14, p21

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    :cond_12
    move-object/from16 v15, p22

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    goto/16 :goto_2

    :goto_7
    if-eqz v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    move-object/from16 v0, p0

    goto :goto_8

    :cond_14
    move-object/from16 v0, p0

    return-object v0

    :goto_8
    if-eqz v3, :cond_15

    sget-object v1, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/text/style/l$a;->a(Landroidx/compose/ui/graphics/j1;F)Landroidx/compose/ui/text/style/l;

    move-result-object v1

    goto :goto_9

    :cond_15
    sget-object v3, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/text/style/l$a;->b(J)Landroidx/compose/ui/text/style/l;

    move-result-object v1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/compose/ui/text/style/l;->c(Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;

    move-result-object v1

    if-nez v8, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v2

    goto :goto_a

    :cond_16
    move-object v2, v8

    :goto_a
    invoke-static/range {p5 .. p6}, Lo0/x;->d(J)Z

    move-result v3

    if-nez v3, :cond_17

    move-wide/from16 v3, p5

    goto :goto_b

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v3

    :goto_b
    if-nez v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v5

    :cond_18
    if-nez v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v6

    :cond_19
    if-nez v7, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v7

    :cond_1a
    if-nez v9, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    :cond_1b
    invoke-static/range {p12 .. p13}, Lo0/x;->d(J)Z

    move-result v8

    if-nez v8, :cond_1c

    move-wide/from16 v19, p12

    goto :goto_c

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v19

    :goto_c
    if-nez v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v8

    move-object v10, v8

    :cond_1d
    if-nez v13, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v8

    move-object v13, v8

    :cond_1e
    if-nez p16, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v8

    goto :goto_d

    :cond_1f
    move-object/from16 v8, p16

    :goto_d
    cmp-long v16, v11, v17

    if-eqz v16, :cond_20

    goto :goto_e

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v11

    :goto_e
    if-nez p19, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v16

    goto :goto_f

    :cond_21
    move-object/from16 v16, p19

    :goto_f
    if-nez p20, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v17

    goto :goto_10

    :cond_22
    move-object/from16 v17, p20

    :goto_10
    invoke-static {v0, v14}, Landroidx/compose/ui/text/SpanStyleKt;->c(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/v;)Landroidx/compose/ui/text/v;

    move-result-object v14

    if-nez v15, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object v0

    move-object v15, v0

    :cond_23
    new-instance v0, Landroidx/compose/ui/text/x;

    move-object/from16 p0, v0

    const/16 v18, 0x0

    move-object/from16 p20, v18

    move-object/from16 p1, v1

    move-wide/from16 p2, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v2

    move-object/from16 p8, v9

    move-wide/from16 p9, v19

    move-object/from16 p11, v10

    move-object/from16 p12, v13

    move-object/from16 p13, v8

    move-wide/from16 p14, v11

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v14

    move-object/from16 p19, v15

    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final c(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/v;)Landroidx/compose/ui/text/v;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/v;->a(Landroidx/compose/ui/text/v;)Landroidx/compose/ui/text/v;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/text/x;)Landroidx/compose/ui/text/x;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;->INSTANCE:Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/style/l;->b(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/x;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->a:J

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/p$a;->a()Landroidx/compose/ui/text/font/p;

    move-result-object v0

    :cond_1
    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n;->i()I

    move-result v0

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->b()I

    move-result v0

    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/text/font/n;->c(I)Landroidx/compose/ui/text/font/n;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o;->k()I

    move-result v0

    goto :goto_3

    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->a()I

    move-result v0

    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/text/font/o;->e(I)Landroidx/compose/ui/text/font/o;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/h$a;->a()Landroidx/compose/ui/text/font/c0;

    move-result-object v0

    :cond_4
    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    move-object v10, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/x;->d(J)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->b:J

    :goto_4
    move-wide v11, v0

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/a;->h()F

    move-result v0

    goto :goto_6

    :cond_7
    sget-object v0, Landroidx/compose/ui/text/style/a;->b:Landroidx/compose/ui/text/style/a$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/a$a;->a()F

    move-result v0

    :goto_6
    invoke-static {v0}, Landroidx/compose/ui/text/style/a;->b(F)Landroidx/compose/ui/text/style/a;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Landroidx/compose/ui/text/style/m;->c:Landroidx/compose/ui/text/style/m$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m$a;->a()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    :cond_8
    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {v0}, Ln0/i$a;->a()Ln0/i;

    move-result-object v0

    :cond_9
    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v0

    const-wide/16 v16, 0x10

    cmp-long v2, v0, v16

    if-eqz v2, :cond_a

    :goto_7
    move-wide/from16 v16, v0

    goto :goto_8

    :cond_a
    sget-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->c:J

    goto :goto_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/i$a;->c()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    :cond_b
    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v0

    if-nez v0, :cond_c

    sget-object v0, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/z4$a;->a()Landroidx/compose/ui/graphics/z4;

    move-result-object v0

    :cond_c
    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object v0

    if-nez v0, :cond_d

    sget-object v0, Lz/l;->a:Lz/l;

    :cond_d
    move-object/from16 v21, v0

    new-instance v0, Landroidx/compose/ui/text/x;

    move-object v2, v0

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
