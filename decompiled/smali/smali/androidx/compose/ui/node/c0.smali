.class public final Landroidx/compose/ui/node/c0;
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
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->J2(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected e(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected i(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/a;)I
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->T0(Landroidx/compose/ui/layout/a;)I

    move-result p1

    return p1
.end method
