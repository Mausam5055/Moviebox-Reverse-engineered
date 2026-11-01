.class public abstract Landroidx/compose/ui/node/g;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/g;->c(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/g;->g(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V
    .locals 2

    invoke-static {p1}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    :cond_0
    aget-object v1, p1, v0

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_1
    return-void
.end method

.method public static final d(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/node/x;
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    instance-of v1, p0, Landroidx/compose/ui/node/x;

    if-eqz v1, :cond_0

    check-cast p0, Landroidx/compose/ui/node/x;

    return-object p0

    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/node/i;

    if-eqz v1, :cond_3

    check-cast p0, Landroidx/compose/ui/node/i;

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    instance-of v1, p0, Landroidx/compose/ui/node/x;

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/compose/ui/node/x;

    return-object p0

    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/node/i;

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    check-cast p0, Landroidx/compose/ui/node/i;

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static final e(Landroidx/compose/ui/node/f;I)Z
    .locals 0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(Landroidx/compose/ui/node/f;)Z
    .locals 1

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final g(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final i(Landroidx/compose/ui/node/f;)Lo0/e;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/graphics/a4;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/y0;->getGraphicsContext()Landroidx/compose/ui/graphics/a4;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/layout/l;
    .locals 1

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cannot get LayoutCoordinates, Modifier.Node is not attached."

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->X0()Landroidx/compose/ui/layout/l;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LayoutCoordinates is not attached."

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static final l(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Cannot obtain node coordinator. Is the Modifier.Node attached?"

    invoke-static {p0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "This node does not have an owner."

    invoke-static {p0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
