.class public abstract Landroidx/compose/ui/node/j1;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/semantics/i;)Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/h;->j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Landroidx/compose/ui/node/i1;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->B0()V

    return-void
.end method

.method public static final c(Landroidx/compose/ui/f$c;Z)Ly/i;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ly/i;->e:Ly/i$a;

    invoke-virtual {p0}, Ly/i$a;->a()Ly/i;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-nez p1, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/layout/m;->b(Landroidx/compose/ui/layout/l;)Ly/i;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->K2()Ly/i;

    move-result-object p0

    return-object p0
.end method
