.class public abstract Landroidx/compose/ui/focus/n;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/focus/m;)V
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getFocusOwner()Landroidx/compose/ui/focus/i;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/ui/focus/i;->l(Landroidx/compose/ui/focus/m;)V

    return-void
.end method
