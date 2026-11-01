.class public final Landroidx/compose/ui/node/i0;
.super Landroidx/compose/ui/node/AlignmentLines;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/AlignmentLines;-><init>(Landroidx/compose/ui/node/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected d(Landroidx/compose/ui/node/NodeCoordinator;J)J
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ly/h;->a(FF)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ly/g;->r(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected e(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->b1()Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected i(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/a;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->T0(Landroidx/compose/ui/layout/a;)I

    move-result p1

    return p1
.end method
