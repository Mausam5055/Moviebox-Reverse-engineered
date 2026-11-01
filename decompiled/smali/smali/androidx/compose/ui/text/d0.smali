.class public final Landroidx/compose/ui/text/d0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/d0$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/text/d0$a;

.field private static final e:Landroidx/compose/ui/text/d0;


# instance fields
.field private final a:Landroidx/compose/ui/text/x;

.field private final b:Landroidx/compose/ui/text/r;

.field private final c:Landroidx/compose/ui/text/w;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v0, Landroidx/compose/ui/text/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/d0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/d0;->d:Landroidx/compose/ui/text/d0$a;

    new-instance v0, Landroidx/compose/ui/text/d0;

    move-object v2, v0

    const v32, 0xffffff

    const/16 v33, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v2 .. v33}, Landroidx/compose/ui/text/d0;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/d0;->e:Landroidx/compose/ui/text/d0;

    return-void
.end method

.method private constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)V
    .locals 25

    move-object/from16 v0, p25

    new-instance v15, Landroidx/compose/ui/text/x;

    const/16 v23, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->b()Landroidx/compose/ui/text/v;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_0
    move-object/from16 v20, v23

    :goto_0
    const/16 v22, 0x0

    move-object v1, v15

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v24, v15

    move-object/from16 v15, p14

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v21, p19

    invoke-direct/range {v1 .. v22}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Landroidx/compose/ui/text/r;

    if-eqz v0, :cond_1

    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object v23

    :cond_1
    const/4 v2, 0x0

    move-object/from16 p1, v1

    move/from16 p2, p20

    move/from16 p3, p21

    move-wide/from16 p4, p22

    move-object/from16 p6, p24

    move-object/from16 p7, v23

    move-object/from16 p8, p26

    move/from16 p9, p27

    move/from16 p10, p28

    move-object/from16 p11, p29

    move-object/from16 p12, v2

    invoke-direct/range {p1 .. p12}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    invoke-direct {v2, v3, v1, v0}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    sget-object v11, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v11}, Lo0/w$a;->a()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_b

    sget-object v6, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p15

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v6, p17

    :goto_c
    move-object/from16 v18, v6

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v6, p18

    :goto_d
    move-object/from16 v19, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v6, p19

    :goto_e
    const v20, 0x8000

    and-int v20, v0, v20

    if-eqz v20, :cond_f

    sget-object v20, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/style/h$a;->g()I

    move-result v20

    goto :goto_f

    :cond_f
    move/from16 v20, p20

    :goto_f
    const/high16 v21, 0x10000

    and-int v21, v0, v21

    if-eqz v21, :cond_10

    sget-object v21, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v21

    goto :goto_10

    :cond_10
    move/from16 v21, p21

    :goto_10
    const/high16 v22, 0x20000

    and-int v22, v0, v22

    if-eqz v22, :cond_11

    sget-object v22, Lo0/w;->b:Lo0/w$a;

    invoke-virtual/range {v22 .. v22}, Lo0/w$a;->a()J

    move-result-wide v22

    goto :goto_11

    :cond_11
    move-wide/from16 v22, p22

    :goto_11
    const/high16 v24, 0x40000

    and-int v24, v0, v24

    if-eqz v24, :cond_12

    const/16 v24, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v24, p24

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v25, p25

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v26, p26

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    sget-object v27, Landroidx/compose/ui/text/style/e;->a:Landroidx/compose/ui/text/style/e$a;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/style/e$a;->b()I

    move-result v27

    goto :goto_15

    :cond_15
    move/from16 v27, p27

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    sget-object v28, Landroidx/compose/ui/text/style/d;->a:Landroidx/compose/ui/text/style/d$a;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/style/d$a;->c()I

    move-result v28

    goto :goto_16

    :cond_16
    move/from16 v28, p28

    :goto_16
    const/high16 v29, 0x800000

    and-int v0, v0, v29

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v0, p29

    :goto_17
    const/16 v29, 0x0

    move-object/from16 p31, v29

    move-object/from16 p1, p0

    move-wide/from16 p2, v1

    move-wide/from16 p4, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-wide/from16 p11, v11

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-wide/from16 p16, v16

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v6

    move/from16 p21, v20

    move/from16 p22, v21

    move-wide/from16 p23, v22

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move/from16 p28, v27

    move/from16 p29, v28

    move-object/from16 p30, v0

    invoke-direct/range {p1 .. p31}, Landroidx/compose/ui/text/d0;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p29}, Landroidx/compose/ui/text/d0;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->q()Landroidx/compose/ui/text/v;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/ui/text/r;->g()Landroidx/compose/ui/text/u;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/e0;->a(Landroidx/compose/ui/text/v;Landroidx/compose/ui/text/u;)Landroidx/compose/ui/text/w;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    iput-object p2, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    iput-object p3, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    return-void
.end method

.method public static synthetic J(Landroidx/compose/ui/text/d0;JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/d0;
    .locals 28

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    sget-object v11, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v11}, Lo0/w$a;->a()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_b

    sget-object v6, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p15

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v6, p17

    :goto_c
    move-object/from16 p17, v6

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v6, p18

    :goto_d
    move-object/from16 p18, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v6, p19

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    sget-object v18, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/style/h$a;->g()I

    move-result v18

    goto :goto_f

    :cond_f
    move/from16 v18, p20

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    sget-object v19, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v19

    goto :goto_10

    :cond_10
    move/from16 v19, p21

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    sget-object v20, Lo0/w;->b:Lo0/w$a;

    invoke-virtual/range {v20 .. v20}, Lo0/w$a;->a()J

    move-result-wide v20

    goto :goto_11

    :cond_11
    move-wide/from16 v20, p22

    :goto_11
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    if-eqz v22, :cond_12

    const/16 v22, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v22, p24

    :goto_12
    const/high16 v23, 0x80000

    and-int v23, v0, v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v23, p25

    :goto_13
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_14

    sget-object v24, Landroidx/compose/ui/text/style/e;->a:Landroidx/compose/ui/text/style/e$a;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/text/style/e$a;->b()I

    move-result v24

    goto :goto_14

    :cond_14
    move/from16 v24, p26

    :goto_14
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_15

    sget-object v25, Landroidx/compose/ui/text/style/d;->a:Landroidx/compose/ui/text/style/d$a;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/text/style/d$a;->c()I

    move-result v25

    goto :goto_15

    :cond_15
    move/from16 v25, p27

    :goto_15
    const/high16 v26, 0x400000

    and-int v26, v0, v26

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v26, p28

    :goto_16
    const/high16 v27, 0x800000

    and-int v0, v0, v27

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v0, p29

    :goto_17
    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-wide/from16 p15, v16

    move-object/from16 p19, v6

    move/from16 p20, v18

    move/from16 p21, v19

    move-wide/from16 p22, v20

    move-object/from16 p24, v22

    move-object/from16 p25, v23

    move/from16 p26, v24

    move/from16 p27, v25

    move-object/from16 p28, v26

    move-object/from16 p29, v0

    invoke-virtual/range {p0 .. p29}, Landroidx/compose/ui/text/d0;->I(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/d0;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/d0;->e:Landroidx/compose/ui/text/d0;

    return-object v0
.end method

.method public static synthetic c(Landroidx/compose/ui/text/d0;JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/d0;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v2}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v4}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v6}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v7}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v8}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v9}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v10}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v11}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-object v13, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v13}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v13

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v14}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v14

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v15

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v15

    goto :goto_b

    :cond_b
    move-wide/from16 v15, p15

    :goto_b
    move-wide/from16 p15, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v15

    goto :goto_c

    :cond_c
    move-object/from16 v15, p17

    :goto_c
    move-object/from16 p17, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p18

    :goto_d
    move-object/from16 p18, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v15}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object v15

    goto :goto_e

    :cond_e
    move-object/from16 v15, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->h()I

    move-result v15

    goto :goto_f

    :cond_f
    move/from16 v15, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->i()I

    move-result v15

    goto :goto_10

    :cond_10
    move/from16 v15, p21

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->e()J

    move-result-wide v15

    goto :goto_11

    :cond_11
    move-wide/from16 v15, p22

    :goto_11
    const/high16 v17, 0x40000

    and-int v17, v1, v17

    move-wide/from16 p22, v15

    if-eqz v17, :cond_12

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->j()Landroidx/compose/ui/text/style/n;

    move-result-object v15

    goto :goto_12

    :cond_12
    move-object/from16 v15, p24

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p25

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->f()Landroidx/compose/ui/text/style/g;

    move-result-object v15

    goto :goto_14

    :cond_14
    move-object/from16 v15, p26

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->d()I

    move-result v15

    goto :goto_15

    :cond_15
    move/from16 v15, p27

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v15}, Landroidx/compose/ui/text/r;->c()I

    move-result v15

    goto :goto_16

    :cond_16
    move/from16 v15, p28

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget-object v1, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v1}, Landroidx/compose/ui/text/r;->k()Landroidx/compose/ui/text/style/o;

    move-result-object v1

    goto :goto_17

    :cond_17
    move-object/from16 v1, p29

    :goto_17
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p28, v15

    move-object/from16 p29, v1

    invoke-virtual/range {p0 .. p29}, Landroidx/compose/ui/text/d0;->b(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/compose/ui/text/style/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    return-object v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->i()I

    move-result v0

    return v0
.end method

.method public final C()Landroidx/compose/ui/text/style/m;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    return-object v0
.end method

.method public final D()Landroidx/compose/ui/text/style/n;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->j()Landroidx/compose/ui/text/style/n;

    move-result-object v0

    return-object v0
.end method

.method public final E()Landroidx/compose/ui/text/style/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->k()Landroidx/compose/ui/text/style/o;

    move-result-object v0

    return-object v0
.end method

.method public final F(Landroidx/compose/ui/text/d0;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    iget-object p1, p1, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/x;->w(Landroidx/compose/ui/text/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final G(Landroidx/compose/ui/text/d0;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    iget-object v1, p1, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    iget-object p1, p1, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/x;->v(Landroidx/compose/ui/text/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final H(Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/d0;
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/d0;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->L()Landroidx/compose/ui/text/x;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->K()Landroidx/compose/ui/text/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/r;->l(Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;)V

    return-object v0
.end method

.method public final I(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    const/16 v24, 0x0

    if-eqz p28, :cond_0

    invoke-virtual/range {p28 .. p28}, Landroidx/compose/ui/text/w;->b()Landroidx/compose/ui/text/v;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_0

    :cond_0
    move-object/from16 v22, v24

    :goto_0
    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v23, p19

    invoke-static/range {v1 .. v23}, Landroidx/compose/ui/text/SpanStyleKt;->b(Landroidx/compose/ui/text/x;JLandroidx/compose/ui/graphics/j1;FJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)Landroidx/compose/ui/text/x;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    if-eqz p28, :cond_1

    invoke-virtual/range {p28 .. p28}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object v24

    :cond_1
    move-object/from16 p1, v2

    move/from16 p2, p20

    move/from16 p3, p21

    move-wide/from16 p4, p22

    move-object/from16 p6, p24

    move-object/from16 p7, v24

    move-object/from16 p8, p25

    move/from16 p9, p26

    move/from16 p10, p27

    move-object/from16 p11, p29

    invoke-static/range {p1 .. p11}, Landroidx/compose/ui/text/s;->a(Landroidx/compose/ui/text/r;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/r;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    if-ne v3, v1, :cond_2

    iget-object v3, v0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    if-ne v3, v2, :cond_2

    return-object v0

    :cond_2
    new-instance v3, Landroidx/compose/ui/text/d0;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;)V

    return-object v3
.end method

.method public final K()Landroidx/compose/ui/text/r;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    return-object v0
.end method

.method public final L()Landroidx/compose/ui/text/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    return-object v0
.end method

.method public final b(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/d0;
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p25

    new-instance v4, Landroidx/compose/ui/text/d0;

    new-instance v14, Landroidx/compose/ui/text/x;

    iget-object v5, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v5}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v1}, Landroidx/compose/ui/text/x;->t()Landroidx/compose/ui/text/style/l;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    sget-object v5, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    invoke-virtual {v5, v1, v2}, Landroidx/compose/ui/text/style/l$a;->b(J)Landroidx/compose/ui/text/style/l;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->b()Landroidx/compose/ui/text/v;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_2

    :cond_1
    move-object/from16 v23, v1

    :goto_2
    const/16 v25, 0x0

    move-object v5, v14

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object v2, v14

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-wide/from16 v19, p15

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v24, p19

    invoke-direct/range {v5 .. v25}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Landroidx/compose/ui/text/r;

    if-eqz v3, :cond_2

    invoke-virtual/range {p25 .. p25}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    move-result-object v1

    :cond_2
    const/4 v6, 0x0

    move-object/from16 p1, v5

    move/from16 p2, p20

    move/from16 p3, p21

    move-wide/from16 p4, p22

    move-object/from16 p6, p24

    move-object/from16 p7, v1

    move-object/from16 p8, p26

    move/from16 p9, p27

    move/from16 p10, p28

    move-object/from16 p11, p29

    move-object/from16 p12, v6

    invoke-direct/range {p1 .. p12}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v2, v5, v3}, Landroidx/compose/ui/text/d0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/w;)V

    return-object v4
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->c()F

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/d0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    check-cast p1, Landroidx/compose/ui/text/d0;

    iget-object v3, p1, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    iget-object v3, p1, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    iget-object p1, p1, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Landroidx/compose/ui/text/style/a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->f()Landroidx/compose/ui/graphics/j1;

    move-result-object v0

    return-object v0
.end method

.method public final h()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v1}, Landroidx/compose/ui/text/r;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/w;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lz/h;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->h()Lz/h;

    move-result-object v0

    return-object v0
.end method

.method public final j()Landroidx/compose/ui/text/font/h;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Landroidx/compose/ui/text/font/n;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/text/font/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v0

    return-object v0
.end method

.method public final o()Landroidx/compose/ui/text/font/p;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v0

    return-object v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->c()I

    move-result v0

    return v0
.end method

.method public final q()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->d()I

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()Landroidx/compose/ui/text/style/g;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->f()Landroidx/compose/ui/text/style/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextStyle(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->g()Landroidx/compose/ui/graphics/j1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->o()Landroidx/compose/ui/text/font/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->m()Landroidx/compose/ui/text/font/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSynthesis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->n()Landroidx/compose/ui/text/font/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->j()Landroidx/compose/ui/text/font/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFeatureSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baselineShift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->f()Landroidx/compose/ui/text/style/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textGeometricTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->C()Landroidx/compose/ui/text/style/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->u()Ln0/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textDecoration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->A()Landroidx/compose/ui/text/style/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->x()Landroidx/compose/ui/graphics/z4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->i()Lz/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->z()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/h;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->B()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/j;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->s()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textIndent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->D()Landroidx/compose/ui/text/style/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeightStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->t()Landroidx/compose/ui/text/style/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineBreak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->r()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/e;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hyphens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->p()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/d;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textMotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->E()Landroidx/compose/ui/text/style/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ln0/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v0

    return-object v0
.end method

.method public final v()Landroidx/compose/ui/text/r;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    return-object v0
.end method

.method public final w()Landroidx/compose/ui/text/w;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->c:Landroidx/compose/ui/text/w;

    return-object v0
.end method

.method public final x()Landroidx/compose/ui/graphics/z4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v0

    return-object v0
.end method

.method public final y()Landroidx/compose/ui/text/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->a:Landroidx/compose/ui/text/x;

    return-object v0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/d0;->b:Landroidx/compose/ui/text/r;

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->h()I

    move-result v0

    return v0
.end method
