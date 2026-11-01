.class final Landroidx/compose/ui/node/s$b;
.super Landroidx/compose/ui/node/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic v:Landroidx/compose/ui/node/s;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/s;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/s$b;->v:Landroidx/compose/ui/node/s;

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/j0;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method


# virtual methods
.method public J0(Landroidx/compose/ui/layout/a;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->r1()Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->z()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->t1()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 5

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/j0;->p1(Landroidx/compose/ui/node/j0;J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->n1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Z()Landroidx/compose/ui/layout/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->C()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/layout/t;->c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/ui/node/j0;->q1(Landroidx/compose/ui/node/j0;Landroidx/compose/ui/layout/v;)V

    return-object p0
.end method

.method protected x1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->i1()V

    return-void
.end method
