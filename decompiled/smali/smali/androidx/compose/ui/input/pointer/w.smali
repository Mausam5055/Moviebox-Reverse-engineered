.class public final Landroidx/compose/ui/input/pointer/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:F

.field private final f:J

.field private final g:J

.field private final h:Z

.field private final i:I

.field private final j:J

.field private k:Ljava/util/List;

.field private l:J

.field private m:Landroidx/compose/ui/input/pointer/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJZFJJZZIJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->a:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->b:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->c:J

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/w;->d:Z

    move v1, p8

    iput v1, v0, Landroidx/compose/ui/input/pointer/w;->e:F

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->f:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->g:J

    move/from16 v1, p13

    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/w;->h:Z

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/ui/input/pointer/w;->i:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->j:J

    sget-object v1, Ly/g;->b:Ly/g$a;

    invoke-virtual {v1}, Ly/g$a;->c()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->l:J

    new-instance v1, Landroidx/compose/ui/input/pointer/d;

    move/from16 v2, p14

    invoke-direct {v1, v2, v2}, Landroidx/compose/ui/input/pointer/d;-><init>(ZZ)V

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    return-void
.end method

.method public synthetic constructor <init>(JJJZFJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->d()I

    move-result v1

    move/from16 v17, v1

    goto :goto_0

    :cond_0
    move/from16 v17, p15

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v0

    move-wide/from16 v18, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v18, p16

    :goto_1
    const/16 v20, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v2 .. v20}, Landroidx/compose/ui/input/pointer/w;-><init>(JJJZFJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZFJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Landroidx/compose/ui/input/pointer/w;-><init>(JJJZFJJZZIJ)V

    return-void
.end method

.method private constructor <init>(JJJZFJJZZILjava/util/List;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-wide/from16 v16, p17

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/w;-><init>(JJJZFJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/w;->k:Ljava/util/List;

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->l:J

    return-void
.end method

.method public synthetic constructor <init>(JJJZFJJZZILjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/input/pointer/w;-><init>(JJJZFJJZZILjava/util/List;JJ)V

    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/input/pointer/w;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/w;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/w;->a:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/w;->b:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/w;->c:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/w;->d:Z

    goto :goto_3

    :cond_3
    move/from16 v8, p7

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/w;->f:J

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_5

    iget-wide v11, v0, Landroidx/compose/ui/input/pointer/w;->g:J

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p10

    :goto_5
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_6

    iget-boolean v13, v0, Landroidx/compose/ui/input/pointer/w;->h:Z

    goto :goto_6

    :cond_6
    move/from16 v13, p12

    :goto_6
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget v14, v0, Landroidx/compose/ui/input/pointer/w;->i:I

    goto :goto_7

    :cond_7
    move/from16 v14, p13

    :goto_7
    and-int/lit16 v1, v1, 0x200

    move/from16 p1, v14

    if-eqz v1, :cond_8

    iget-wide v14, v0, Landroidx/compose/ui/input/pointer/w;->j:J

    move-wide v15, v14

    goto :goto_8

    :cond_8
    move-wide/from16 v15, p15

    :goto_8
    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move v12, v13

    move/from16 v13, p1

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v16}, Landroidx/compose/ui/input/pointer/w;->b(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/d;->c(Z)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/d;->d(Z)V

    return-void
.end method

.method public final b(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/w;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v16, p15

    move-object/from16 v8, p0

    move-object/from16 v18, v0

    iget v0, v8, Landroidx/compose/ui/input/pointer/w;->e:F

    move v8, v0

    move-object/from16 v0, v18

    invoke-virtual/range {v0 .. v17}, Landroidx/compose/ui/input/pointer/w;->d(JJJZFJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/w;

    move-result-object v0

    return-object v0
.end method

.method public final d(JJJZFJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/w;
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-wide/from16 v18, p16

    new-instance v15, Landroidx/compose/ui/input/pointer/w;

    move-object v1, v15

    move-object/from16 p3, v1

    iget-wide v1, v0, Landroidx/compose/ui/input/pointer/w;->l:J

    move-wide/from16 v20, v1

    const/16 v22, 0x0

    const/4 v1, 0x0

    move-object v2, v15

    move v15, v1

    move-object/from16 v1, p3

    move-object/from16 v23, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v22}, Landroidx/compose/ui/input/pointer/w;-><init>(JJJZFJJZZILjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    move-object/from16 v2, v23

    iput-object v1, v2, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    return-object v2
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/w;->k:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/w;->a:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/w;->l:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/w;->c:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/w;->d:Z

    return v0
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/w;->e:F

    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/w;->g:J

    return-wide v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/w;->h:Z

    return v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/w;->j:J

    return-wide v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/w;->i:I

    return v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/w;->b:J

    return-wide v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/w;->m:Landroidx/compose/ui/input/pointer/d;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointerInputChange(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/w;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/input/pointer/v;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/w;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/w;->c:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/w;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/w;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", previousUptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/w;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", previousPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/w;->g:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousPressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/w;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/w;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/w;->i:I

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/h0;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/w;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",scrollDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/w;->j:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
