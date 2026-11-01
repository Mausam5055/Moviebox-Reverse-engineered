.class public abstract Landroidx/compose/ui/node/e;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cannot read CompositionLocal because the Modifier node is not currently attached."

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->G()Landroidx/compose/runtime/s;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/s;->a(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
