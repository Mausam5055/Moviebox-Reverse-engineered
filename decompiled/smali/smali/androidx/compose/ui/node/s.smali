.class public final Landroidx/compose/ui/node/s;
.super Landroidx/compose/ui/node/NodeCoordinator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/s$a;,
        Landroidx/compose/ui/node/s$b;
    }
.end annotation


# static fields
.field public static final V:Landroidx/compose/ui/node/s$a;

.field private static final W:Landroidx/compose/ui/graphics/m4;


# instance fields
.field private final T:Landroidx/compose/ui/node/l1;

.field private U:Landroidx/compose/ui/node/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/node/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/s;->V:Landroidx/compose/ui/node/s$a;

    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    sput-object v0, Landroidx/compose/ui/node/s;->W:Landroidx/compose/ui/graphics/m4;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    new-instance v0, Landroidx/compose/ui/node/l1;

    invoke-direct {v0}, Landroidx/compose/ui/node/l1;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/s;->T:Landroidx/compose/ui/node/l1;

    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->Q2()Landroidx/compose/ui/node/l1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/ui/node/s$b;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/s$b;-><init>(Landroidx/compose/ui/node/s;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/s;->U:Landroidx/compose/ui/node/j0;

    return-void
.end method

.method private final R2()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->s2()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->o1()V

    return-void
.end method


# virtual methods
.method public J0(Landroidx/compose/ui/layout/a;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0(Landroidx/compose/ui/layout/a;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->P1()Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->z()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    :goto_0
    return p1
.end method

.method public K1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/s$b;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/s$b;-><init>(Landroidx/compose/ui/node/s;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/s;->S2(Landroidx/compose/ui/node/j0;)V

    :cond_0
    return-void
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Q1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->U1()Landroidx/compose/ui/node/j0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->u1()J

    move-result-wide p1

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->B1(Landroidx/compose/ui/node/NodeCoordinator;J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->u1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Z()Landroidx/compose/ui/layout/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/layout/t;->c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->B2(Landroidx/compose/ui/layout/v;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->r2()V

    return-object p0
.end method

.method public Q2()Landroidx/compose/ui/node/l1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/s;->T:Landroidx/compose/ui/node/l1;

    return-object v0
.end method

.method protected S2(Landroidx/compose/ui/node/j0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/s;->U:Landroidx/compose/ui/node/j0;

    return-void
.end method

.method public U1()Landroidx/compose/ui/node/j0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/s;->U:Landroidx/compose/ui/node/j0;

    return-object v0
.end method

.method public bridge synthetic Y1()Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->Q2()Landroidx/compose/ui/node/l1;

    move-result-object v0

    return-object v0
.end method

.method public i2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v8, p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    move-object/from16 v10, p1

    invoke-interface {v10, v1}, Landroidx/compose/ui/node/NodeCoordinator$d;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v8, v9}, Landroidx/compose/ui/node/NodeCoordinator;->P2(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v11, p6

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->V1()J

    move-result-wide v4

    invoke-virtual {p0, v8, v9, v4, v5}, Landroidx/compose/ui/node/NodeCoordinator;->G1(JJ)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    move/from16 v11, p6

    :goto_1
    if-eqz v3, :cond_6

    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/node/q;->c(Landroidx/compose/ui/node/q;)I

    move-result v12

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->o0()Landroidx/compose/runtime/collection/b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    if-lez v3, :cond_4

    sub-int/2addr v3, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v13

    move v14, v3

    :cond_2
    aget-object v1, v13, v14

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v11

    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator$d;->c(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZ)V

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/q;->p()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/q;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/q;->a()V

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v1, p4

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v14, v14, -0x1

    if-gez v14, :cond_2

    goto :goto_2

    :goto_4
    invoke-static {v1, v12}, Landroidx/compose/ui/node/q;->f(Landroidx/compose/ui/node/q;I)V

    :cond_6
    return-void
.end method

.method public u2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->o0()Landroidx/compose/runtime/collection/b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->y(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getShowLayoutBounds()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/ui/node/s;->W:Landroidx/compose/ui/graphics/m4;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->I1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/m4;)V

    :cond_3
    return-void
.end method

.method protected w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-direct {p0}, Landroidx/compose/ui/node/s;->R2()V

    return-void
.end method

.method protected z0(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->z0(JFLkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Landroidx/compose/ui/node/s;->R2()V

    return-void
.end method
