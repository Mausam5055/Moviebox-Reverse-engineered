.class public abstract Landroidx/compose/ui/node/j0;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;

# interfaces
.implements Landroidx/compose/ui/layout/s;


# instance fields
.field private final p:Landroidx/compose/ui/node/NodeCoordinator;

.field private q:J

.field private r:Ljava/util/Map;

.field private final s:Landroidx/compose/ui/layout/q;

.field private t:Landroidx/compose/ui/layout/v;

.field private final u:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    sget-object p1, Lo0/p;->b:Lo0/p$a;

    invoke-virtual {p1}, Lo0/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/j0;->q:J

    new-instance p1, Landroidx/compose/ui/layout/q;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/q;-><init>(Landroidx/compose/ui/node/j0;)V

    iput-object p1, p0, Landroidx/compose/ui/node/j0;->s:Landroidx/compose/ui/layout/q;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/j0;->u:Ljava/util/Map;

    return-void
.end method

.method private final C1(Landroidx/compose/ui/layout/v;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lo0/u;->a(II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/layout/g0;->B0(J)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v0}, Lo0/t$a;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/layout/g0;->B0(J)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->r1()Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->m()V

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    iput-object p1, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    return-void
.end method

.method public static final synthetic p1(Landroidx/compose/ui/node/j0;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/g0;->F0(J)V

    return-void
.end method

.method public static final synthetic q1(Landroidx/compose/ui/node/j0;Landroidx/compose/ui/layout/v;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/j0;->C1(Landroidx/compose/ui/layout/v;)V

    return-void
.end method

.method private final y1(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lo0/p;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/j0;->B1(J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->H()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->f1()V

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->g1(Landroidx/compose/ui/node/NodeCoordinator;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j1()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->b1()Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->R0(Landroidx/compose/ui/layout/v;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final A1(Landroidx/compose/ui/node/j0;Z)J
    .locals 5

    sget-object v0, Lo0/p;->b:Lo0/p$a;

    invoke-virtual {v0}, Lo0/p$a;->a()J

    move-result-wide v0

    move-object v2, p0

    :goto_0
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i1()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lo0/p;->l(JJ)J

    move-result-wide v0

    :cond_1
    iget-object v2, v2, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public B1(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/node/j0;->q:J

    return-void
.end method

.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->C0()F

    move-result v0

    return v0
.end method

.method public G()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->G()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public X0()Landroidx/compose/ui/layout/l;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->s:Landroidx/compose/ui/layout/q;

    return-object v0
.end method

.method public Z0()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a1()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    return-object v0
.end method

.method public b1()Landroidx/compose/ui/layout/v;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LookaheadDelegate has not been measured yet when measureResult is requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c1()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/node/j0;->q:J

    return-wide v0
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public m1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/j0;->z0(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public r1()Landroidx/compose/ui/node/a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->C()Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final s1(Landroidx/compose/ui/layout/a;)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x80000000

    :goto_0
    return p1
.end method

.method protected final t1()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->u:Ljava/util/Map;

    return-object v0
.end method

.method public final u1()J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->t0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v1()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final w1()Landroidx/compose/ui/layout/q;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j0;->s:Landroidx/compose/ui/layout/q;

    return-object v0
.end method

.method protected x1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->b1()Landroidx/compose/ui/layout/v;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    return-void
.end method

.method protected final z0(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/j0;->y1(J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k1()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->x1()V

    return-void
.end method

.method public final z1(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->k0()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/p;->l(JJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/j0;->y1(J)V

    return-void
.end method
