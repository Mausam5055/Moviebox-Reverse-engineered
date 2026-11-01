.class public abstract Landroidx/compose/ui/node/o;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/node/n;)V
    .locals 1

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->j2()V

    :cond_0
    return-void
.end method
