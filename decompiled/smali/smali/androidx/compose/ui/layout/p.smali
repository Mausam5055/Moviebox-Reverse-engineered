.class final Landroidx/compose/ui/layout/p;
.super Landroidx/compose/ui/layout/g0$a;


# instance fields
.field private final b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/layout/g0$a;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/p;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-void
.end method


# virtual methods
.method protected d()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/p;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-interface {v0}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method protected e()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/p;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/g0;->s0()I

    move-result v0

    return v0
.end method
