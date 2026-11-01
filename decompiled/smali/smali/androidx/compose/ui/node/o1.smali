.class public final Landroidx/compose/ui/node/o1;
.super Landroidx/compose/runtime/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->X0()V

    return-void
.end method

.method public e(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->Y0(II)V

    return-void
.end method

.method public f(III)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->P0(III)V

    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/o1;->n(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/runtime/a;->h()V

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->onEndApplyChanges()V

    :cond_0
    return-void
.end method

.method public bridge synthetic i(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/o1;->m(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public m(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->u0(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public n(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    return-void
.end method
