.class public abstract Landroidx/compose/ui/semantics/l;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/node/q0;->c(Landroidx/compose/ui/node/q0;)I

    move-result v2

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_7

    move-object v2, v0

    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_7

    instance-of v5, v2, Landroidx/compose/ui/node/i1;

    if-eqz v5, :cond_0

    move-object v3, v2

    goto :goto_4

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_6

    instance-of v5, v2, Landroidx/compose/ui/node/i;

    if-eqz v5, :cond_6

    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/i;

    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    const/4 v8, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_1

    move-object v2, v5

    goto :goto_3

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Landroidx/compose/runtime/collection/b;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v2, v3

    :cond_3
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_2

    :cond_5
    if-ne v7, v8, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_8
    :goto_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/node/i1;

    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->F()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-direct {v2, v0, p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/f$c;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/i;)V

    return-object v2
.end method

.method public static final synthetic b(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/semantics/l;->e(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/f;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/semantics/l;->h(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/semantics/l;->i(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result p0

    return p0
.end method

.method private static final e(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result p0

    const v0, 0x77359400

    add-int/2addr p0, v0

    return p0
.end method

.method public static final f(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final g(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/i1;
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/q0;->c(Landroidx/compose/ui/node/q0;)I

    move-result v1

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move-object v1, p0

    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_7

    instance-of v4, v1, Landroidx/compose/ui/node/i1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/node/i1;

    invoke-interface {v4}, Landroidx/compose/ui/node/i1;->W0()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_6

    instance-of v4, v1, Landroidx/compose/ui/node/i;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/node/i;

    invoke-virtual {v4}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v1, v4

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Landroidx/compose/runtime/collection/b;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v1, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_5
    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_0

    :cond_8
    :goto_4
    check-cast v2, Landroidx/compose/ui/node/i1;

    return-object v2
.end method

.method private static final h(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/f;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/f;

    return-object p0
.end method

.method private static final i(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result p0

    const v0, 0x3b9aca00

    add-int/2addr p0, v0

    return p0
.end method
