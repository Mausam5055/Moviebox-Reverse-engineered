.class public final Landroidx/compose/ui/text/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/style/l;

.field private final b:J

.field private final c:Landroidx/compose/ui/text/font/p;

.field private final d:Landroidx/compose/ui/text/font/n;

.field private final e:Landroidx/compose/ui/text/font/o;

.field private final f:Landroidx/compose/ui/text/font/h;

.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:Landroidx/compose/ui/text/style/a;

.field private final j:Landroidx/compose/ui/text/style/m;

.field private final k:Ln0/i;

.field private final l:J

.field private final m:Landroidx/compose/ui/text/style/i;

.field private final n:Landroidx/compose/ui/graphics/z4;

.field private final o:Landroidx/compose/ui/text/v;

.field private final p:Lz/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-wide/from16 v9, p10

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-wide/from16 v14, p15

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    sget-object v1, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/text/style/l$a;->b(J)Landroidx/compose/ui/text/style/l;

    move-result-object v1

    const/16 v20, 0x0

    move-wide/from16 v2, p3

    invoke-direct/range {v0 .. v20}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

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

    and-int v0, v0, v20

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v0, p20

    :goto_f
    const/16 v20, 0x0

    move-object/from16 p22, v20

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

    move-object/from16 p21, v0

    invoke-direct/range {p1 .. p22}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    move-wide v1, p2

    iput-wide v1, v0, Landroidx/compose/ui/text/x;->b:J

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/ui/text/x;->h:J

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/compose/ui/text/x;->l:J

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/ui/text/x;->p:Lz/h;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)V

    return-void
.end method

.method public static synthetic b(Landroidx/compose/ui/text/x;JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;ILjava/lang/Object;)Landroidx/compose/ui/text/x;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/ui/text/x;->b:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-wide v11, v0, Landroidx/compose/ui/text/x;->h:J

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-object v13, v0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    move-object/from16 p13, v14

    if-eqz v15, :cond_b

    iget-wide v14, v0, Landroidx/compose/ui/text/x;->l:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p15

    :goto_b
    move-wide/from16 p15, v14

    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p17

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p18

    :goto_d
    move-object/from16 p18, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p19

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroidx/compose/ui/text/x;->p:Lz/h;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p20

    :goto_f
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move-object/from16 p17, v14

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Landroidx/compose/ui/text/x;->a(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)Landroidx/compose/ui/text/x;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)Landroidx/compose/ui/text/x;
    .locals 22

    move-wide/from16 v0, p1

    new-instance v21, Landroidx/compose/ui/text/x;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v14, p0

    iget-object v0, v14, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p0

    sget-object v2, Landroidx/compose/ui/text/style/l;->a:Landroidx/compose/ui/text/style/l$a;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/text/style/l$a;->b(J)Landroidx/compose/ui/text/style/l;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-wide/from16 v9, p10

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-wide/from16 v14, p15

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/ui/text/x;-><init>(Landroidx/compose/ui/text/style/l;JLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-interface {v0}, Landroidx/compose/ui/text/style/l;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/x;->l:J

    return-wide v0
.end method

.method public final e()Landroidx/compose/ui/text/style/a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/x;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/x;->v(Landroidx/compose/ui/text/x;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/x;->w(Landroidx/compose/ui/text/x;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-interface {v0}, Landroidx/compose/ui/text/style/l;->d()Landroidx/compose/ui/graphics/j1;

    move-result-object v0

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-interface {v0}, Landroidx/compose/ui/text/style/l;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Lz/h;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->p:Lz/h;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->f()Landroidx/compose/ui/graphics/j1;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/compose/ui/text/x;->b:J

    invoke-static {v3, v4}, Lo0/w;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/p;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/n;->i()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/n;->g(I)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/o;->k()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/o;->i(I)I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/compose/ui/text/x;->h:J

    invoke-static {v3, v4}, Lo0/w;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/a;->h()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/a;->f(F)I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/m;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ln0/i;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/compose/ui/text/x;->l:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/z4;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/compose/ui/text/v;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/x;->p:Lz/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Landroidx/compose/ui/text/font/h;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/x;->b:J

    return-wide v0
.end method

.method public final l()Landroidx/compose/ui/text/font/n;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    return-object v0
.end method

.method public final m()Landroidx/compose/ui/text/font/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/text/font/p;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    return-object v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/x;->h:J

    return-wide v0
.end method

.method public final p()Ln0/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    return-object v0
.end method

.method public final q()Landroidx/compose/ui/text/v;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    return-object v0
.end method

.method public final r()Landroidx/compose/ui/graphics/z4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    return-object v0
.end method

.method public final s()Landroidx/compose/ui/text/style/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    return-object v0
.end method

.method public final t()Landroidx/compose/ui/text/style/l;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanStyle(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->f()Landroidx/compose/ui/graphics/j1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/x;->b:J

    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSynthesis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFeatureSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/x;->h:J

    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baselineShift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textGeometricTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/x;->l:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textDecoration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/x;->p:Lz/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroidx/compose/ui/text/style/m;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    return-object v0
.end method

.method public final v(Landroidx/compose/ui/text/x;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Landroidx/compose/ui/text/x;->b:J

    iget-wide v3, p1, Landroidx/compose/ui/text/x;->b:J

    invoke-static {v1, v2, v3, v4}, Lo0/w;->e(JJ)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Landroidx/compose/ui/text/x;->h:J

    iget-wide v5, p1, Landroidx/compose/ui/text/x;->h:J

    invoke-static {v3, v4, v5, v6}, Lo0/w;->e(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    iget-object v3, p1, Landroidx/compose/ui/text/x;->k:Ln0/i;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Landroidx/compose/ui/text/x;->l:J

    iget-wide v5, p1, Landroidx/compose/ui/text/x;->l:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    iget-object p1, p1, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final w(Landroidx/compose/ui/text/x;)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    iget-object v1, p1, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    iget-object v2, p1, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    iget-object v2, p1, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/text/x;->p:Lz/h;

    iget-object p1, p1, Landroidx/compose/ui/text/x;->p:Lz/h;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final x(Landroidx/compose/ui/text/x;)Landroidx/compose/ui/text/x;
    .locals 25

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-interface {v1}, Landroidx/compose/ui/text/style/l;->a()J

    move-result-wide v3

    iget-object v1, v0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-interface {v1}, Landroidx/compose/ui/text/style/l;->d()Landroidx/compose/ui/graphics/j1;

    move-result-object v5

    iget-object v1, v0, Landroidx/compose/ui/text/x;->a:Landroidx/compose/ui/text/style/l;

    invoke-interface {v1}, Landroidx/compose/ui/text/style/l;->getAlpha()F

    move-result v6

    iget-wide v7, v0, Landroidx/compose/ui/text/x;->b:J

    iget-object v9, v0, Landroidx/compose/ui/text/x;->c:Landroidx/compose/ui/text/font/p;

    iget-object v10, v0, Landroidx/compose/ui/text/x;->d:Landroidx/compose/ui/text/font/n;

    iget-object v11, v0, Landroidx/compose/ui/text/x;->e:Landroidx/compose/ui/text/font/o;

    iget-object v12, v0, Landroidx/compose/ui/text/x;->f:Landroidx/compose/ui/text/font/h;

    iget-object v13, v0, Landroidx/compose/ui/text/x;->g:Ljava/lang/String;

    iget-wide v14, v0, Landroidx/compose/ui/text/x;->h:J

    iget-object v1, v0, Landroidx/compose/ui/text/x;->i:Landroidx/compose/ui/text/style/a;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/compose/ui/text/x;->j:Landroidx/compose/ui/text/style/m;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/ui/text/x;->k:Ln0/i;

    move-object/from16 v18, v1

    iget-wide v1, v0, Landroidx/compose/ui/text/x;->l:J

    move-wide/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/ui/text/x;->m:Landroidx/compose/ui/text/style/i;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroidx/compose/ui/text/x;->n:Landroidx/compose/ui/graphics/z4;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroidx/compose/ui/text/x;->o:Landroidx/compose/ui/text/v;

    move-object/from16 v23, v1

    iget-object v0, v0, Landroidx/compose/ui/text/x;->p:Lz/h;

    move-object/from16 v24, v0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v24}, Landroidx/compose/ui/text/SpanStyleKt;->b(Landroidx/compose/ui/text/x;JLandroidx/compose/ui/graphics/j1;FJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;)Landroidx/compose/ui/text/x;

    move-result-object v0

    return-object v0
.end method
