.class public abstract Landroidx/compose/ui/node/v0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/u0;

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ObserverNodeOwnerScope;-><init>(Landroidx/compose/ui/node/u0;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/node/ObserverNodeOwnerScope;)V

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    sget-object v1, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->b:Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->i(Landroidx/compose/ui/node/z0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
