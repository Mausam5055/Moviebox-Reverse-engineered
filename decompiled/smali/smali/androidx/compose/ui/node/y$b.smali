.class final Landroidx/compose/ui/node/y$b;
.super Landroidx/compose/ui/node/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic v:Landroidx/compose/ui/node/y;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/y$b;->v:Landroidx/compose/ui/node/y;

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/j0;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method


# virtual methods
.method public J0(Landroidx/compose/ui/layout/a;)I
    .locals 3

    invoke-static {p0, p1}, Landroidx/compose/ui/node/z;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->t1()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/y$b;->v:Landroidx/compose/ui/node/y;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/j0;->p1(Landroidx/compose/ui/node/j0;J)V

    invoke-static {p1, p2}, Lo0/b;->a(J)Lo0/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/y;->V2(Lo0/b;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/x;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/node/y;->S2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v0, p1, p2}, Landroidx/compose/ui/node/x;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/ui/node/j0;->q1(Landroidx/compose/ui/node/j0;Landroidx/compose/ui/layout/v;)V

    return-object p0
.end method
