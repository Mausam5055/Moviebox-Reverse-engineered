.class public final Landroidx/compose/material/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/material/k;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/k;

    invoke-direct {v0}, Landroidx/compose/material/k;-><init>()V

    sput-object v0, Landroidx/compose/material/k;->a:Landroidx/compose/material/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJJJJJJJJLandroidx/compose/runtime/i;III)Landroidx/compose/material/j;
    .locals 25

    move-object/from16 v0, p21

    move/from16 v1, p22

    move/from16 v2, p24

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x6

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/b;->h()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p1

    :goto_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/b;->g()J

    move-result-wide v8

    sget-object v7, Landroidx/compose/material/c;->a:Landroidx/compose/material/c;

    invoke-virtual {v7, v0, v4}, Landroidx/compose/material/c;->b(Landroidx/compose/runtime/i;I)F

    move-result v10

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/b;->l()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/w1;->h(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/b;->h()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p5

    :goto_2
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    const/16 v3, 0xe

    const/4 v11, 0x0

    const v12, 0x3e75c28f    # 0.24f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 p1, v9

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v3

    move-object/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    goto :goto_3

    :cond_3
    move-wide/from16 v11, p7

    :goto_3
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    sget-object v3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/b;->g()J

    move-result-wide v3

    const/16 v13, 0xe

    const/4 v14, 0x0

    const v15, 0x3ea3d70a    # 0.32f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 p1, v3

    move/from16 p3, v15

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v13

    move-object/from16 p8, v14

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    goto :goto_4

    :cond_4
    move-wide/from16 v3, p9

    :goto_4
    and-int/lit8 v13, v2, 0x20

    if-eqz v13, :cond_5

    const/16 v13, 0xe

    const/4 v14, 0x0

    const v15, 0x3df5c28f    # 0.12f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 p1, v3

    move/from16 p3, v15

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v13

    move-object/from16 p8, v14

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit8 v15, v2, 0x40

    if-eqz v15, :cond_6

    shr-int/lit8 v15, v1, 0x6

    and-int/lit8 v15, v15, 0xe

    invoke-static {v9, v10, v0, v15}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/i;I)J

    move-result-wide v15

    const/16 v0, 0xe

    const/16 v17, 0x0

    const v18, 0x3f0a3d71    # 0.54f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 p1, v15

    move/from16 p3, v18

    move/from16 p4, v19

    move/from16 p5, v20

    move/from16 p6, v21

    move/from16 p7, v0

    move-object/from16 p8, v17

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v15

    goto :goto_6

    :cond_6
    move-wide/from16 v15, p13

    :goto_6
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    const/16 v17, 0x0

    const v18, 0x3f0a3d71    # 0.54f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 p1, v9

    move/from16 p3, v18

    move/from16 p4, v19

    move/from16 p5, v20

    move/from16 p6, v21

    move/from16 p7, v0

    move-object/from16 p8, v17

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v17

    goto :goto_7

    :cond_7
    move-wide/from16 v17, p15

    :goto_7
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    const/16 v19, 0x0

    const v20, 0x3df5c28f    # 0.12f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 p1, v15

    move/from16 p3, v20

    move/from16 p4, v21

    move/from16 p5, v22

    move/from16 p6, v23

    move/from16 p7, v0

    move-object/from16 p8, v19

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v19

    goto :goto_8

    :cond_8
    move-wide/from16 v19, p17

    :goto_8
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    const/4 v2, 0x0

    const v21, 0x3df5c28f    # 0.12f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 p1, v13

    move/from16 p3, v21

    move/from16 p4, v22

    move/from16 p5, v23

    move/from16 p6, v24

    move/from16 p7, v0

    move-object/from16 p8, v2

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v21

    goto :goto_9

    :cond_9
    move-wide/from16 v21, p19

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x19fd1a17

    const-string v2, "androidx.compose.material.SliderDefaults.colors (Slider.kt:500)"

    move-wide/from16 v23, v15

    move/from16 v15, p23

    invoke-static {v0, v1, v15, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    goto :goto_a

    :cond_a
    move-wide/from16 v23, v15

    :goto_a
    new-instance v0, Landroidx/compose/material/d;

    move-object/from16 p1, v0

    const/4 v1, 0x0

    move-object/from16 p22, v1

    move-wide/from16 p2, v5

    move-wide/from16 p4, v7

    move-wide/from16 p6, v9

    move-wide/from16 p8, v11

    move-wide/from16 p10, v3

    move-wide/from16 p12, v13

    move-wide/from16 p14, v23

    move-wide/from16 p16, v17

    move-wide/from16 p18, v19

    move-wide/from16 p20, v21

    invoke-direct/range {p1 .. p22}, Landroidx/compose/material/d;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_b
    return-object v0
.end method
