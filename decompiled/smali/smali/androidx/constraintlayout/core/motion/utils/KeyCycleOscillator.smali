.class public abstract Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/constraintlayout/core/motion/utils/b;

.field private b:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field public f:I

.field g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->e:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->b:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;->b(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public b(F)F
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->b:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;->a(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public d(IILjava/lang/String;IFFFF)V
    .locals 10

    move-object v0, p0

    move v1, p4

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    new-instance v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;

    move-object v3, v9

    move v4, p1

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;-><init>(IFFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->f:I

    :cond_0
    move v1, p2

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->d:I

    move-object v1, p3

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->e:Ljava/lang/String;

    return-void
.end method

.method public e(IILjava/lang/String;IFFFFLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move v1, p4

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    new-instance v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;

    move-object v3, v9

    move v4, p1

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;-><init>(IFFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->f:I

    :cond_0
    move v1, p2

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->d:I

    move-object/from16 v1, p9

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->c(Ljava/lang/Object;)V

    move-object v1, p3

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->c:Ljava/lang/String;

    return-void
.end method

.method public g(F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v2, v1, [D

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput v6, v4, v5

    const/4 v6, 0x0

    aput v1, v4, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-instance v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->d:I

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->e:Ljava/lang/String;

    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->f:I

    invoke-direct {v7, v8, v9, v10, v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;-><init>(ILjava/lang/String;II)V

    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->b:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v14, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;

    iget v10, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->d:F

    float-to-double v8, v10

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v11

    aput-wide v8, v2, v14

    aget-object v8, v4, v14

    iget v13, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->b:F

    float-to-double v11, v13

    aput-wide v11, v8, v6

    iget v11, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->c:F

    move-object/from16 v16, v4

    float-to-double v3, v11

    aput-wide v3, v8, v5

    iget v12, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->e:F

    float-to-double v3, v12

    const/4 v15, 0x2

    aput-wide v3, v8, v15

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->b:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

    iget v9, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->a:I

    move-object v7, v3

    move v8, v14

    invoke-virtual/range {v7 .. v13}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;->c(IIFFFF)V

    add-int/2addr v14, v5

    move v3, v15

    move-object/from16 v4, v16

    goto :goto_0

    :cond_1
    move-object/from16 v16, v4

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->b:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;->d(F)V

    invoke-static {v6, v2, v4}, Landroidx/constraintlayout/core/motion/utils/b;->a(I[D[[D)Landroidx/constraintlayout/core/motion/utils/b;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->a:Landroidx/constraintlayout/core/motion/utils/b;

    return-void
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->c:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->b:F

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
