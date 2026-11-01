.class final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/u0;


# instance fields
.field private n:J

.field private o:Landroidx/compose/ui/graphics/j1;

.field private p:F

.field private q:Landroidx/compose/ui/graphics/a5;

.field private r:J

.field private s:Landroidx/compose/ui/unit/LayoutDirection;

.field private t:Landroidx/compose/ui/graphics/k4;

.field private u:Landroidx/compose/ui/graphics/a5;


# direct methods
.method private constructor <init>(JLandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/a5;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->n:J

    iput-object p3, p0, Landroidx/compose/foundation/BackgroundNode;->o:Landroidx/compose/ui/graphics/j1;

    iput p4, p0, Landroidx/compose/foundation/BackgroundNode;->p:F

    iput-object p5, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/a5;

    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->r:J

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/a5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundNode;-><init>(JLandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/a5;)V

    return-void
.end method

.method private final D1(Lz/c;)V
    .locals 11

    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->F1(Lz/c;)Landroidx/compose/ui/graphics/k4;

    move-result-object v10

    iget-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->n:J

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroidx/compose/foundation/BackgroundNode;->n:J

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v10

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/l4;->d(Lz/g;Landroidx/compose/ui/graphics/k4;JFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode;->o:Landroidx/compose/ui/graphics/j1;

    if-eqz v2, :cond_1

    iget v3, p0, Landroidx/compose/foundation/BackgroundNode;->p:F

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v10

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/l4;->b(Lz/g;Landroidx/compose/ui/graphics/k4;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final E1(Lz/c;)V
    .locals 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->n:J

    sget-object v3, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v3, v0, Landroidx/compose/foundation/BackgroundNode;->n:J

    const/16 v13, 0x7e

    const/4 v14, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lz/f;->j(Lz/g;JJJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->o:Landroidx/compose/ui/graphics/j1;

    if-eqz v1, :cond_1

    iget v2, v0, Landroidx/compose/foundation/BackgroundNode;->p:F

    const/16 v25, 0x76

    const/16 v26, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move/from16 v21, v2

    invoke-static/range {v15 .. v26}, Lz/f;->i(Lz/g;Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final F1(Lz/c;)Landroidx/compose/ui/graphics/k4;
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/compose/foundation/BackgroundNode;->r:J

    invoke-static {v1, v2, v3, v4}, Ly/m;->f(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->u:Landroidx/compose/ui/graphics/a5;

    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/a5;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->t:Landroidx/compose/ui/graphics/k4;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/BackgroundNode$getOutline$1;

    invoke-direct {v1, v0, p0, p1}, Landroidx/compose/foundation/BackgroundNode$getOutline$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/BackgroundNode;Lz/c;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/k4;

    iput-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->t:Landroidx/compose/ui/graphics/k4;

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/BackgroundNode;->r:J

    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/a5;

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->u:Landroidx/compose/ui/graphics/a5;

    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/ui/graphics/k4;

    return-object p1
.end method


# virtual methods
.method public final A0(Landroidx/compose/ui/graphics/a5;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/a5;

    return-void
.end method

.method public final G1()Landroidx/compose/ui/graphics/a5;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/a5;

    return-object v0
.end method

.method public final H1(Landroidx/compose/ui/graphics/j1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->o:Landroidx/compose/ui/graphics/j1;

    return-void
.end method

.method public final I1(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->n:J

    return-void
.end method

.method public Z()V
    .locals 2

    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->r:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->t:Landroidx/compose/ui/graphics/k4;

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->u:Landroidx/compose/ui/graphics/a5;

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method public n(Lz/c;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/a5;

    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->E1(Lz/c;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->D1(Lz/c;)V

    :goto_0
    invoke-interface {p1}, Lz/c;->Y0()V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/BackgroundNode;->p:F

    return-void
.end method

.method public synthetic w0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method
