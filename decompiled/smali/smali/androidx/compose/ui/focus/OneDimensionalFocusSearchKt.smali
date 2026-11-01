.class public abstract Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$a;
    }
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->i(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private static final b(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->g(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v5

    :goto_0
    if-eqz p0, :cond_8

    :cond_1
    :goto_1
    move v5, v6

    goto :goto_2

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->g(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v5

    goto :goto_2

    :cond_4
    invoke-static {p0}, Landroidx/compose/ui/focus/w;->f(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string v7, "ActiveParent must have a focusedChild"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_5

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object v1, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v5

    goto :goto_2

    :cond_7
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->t()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    return v5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final c(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->h(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->h(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/focus/w;->f(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v2

    invoke-static {p0, v0, v2, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ActiveParent must have a focusedChild"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final d(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->i(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)V

    invoke-static {p0, p2, v0}, Landroidx/compose/ui/focus/a;->a(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 10

    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->a1()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_8

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_7

    move-object v5, v1

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_7

    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_0

    move-object v4, v5

    goto :goto_5

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_6

    instance-of v7, v5, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_6

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v8, v2

    :goto_3
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_1

    move-object v5, v7

    goto :goto_4

    :cond_1
    if-nez v6, :cond_2

    new-instance v6, Landroidx/compose/runtime/collection/b;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v9, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v5, v4

    :cond_3
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_3

    :cond_5
    if-ne v8, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_9
    move-object v1, v4

    goto/16 :goto_0

    :cond_a
    :goto_5
    if-nez v4, :cond_b

    move v2, v3

    :cond_b
    return v2

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitAncestors called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 2

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, p2}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 1-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final g(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z
    .locals 11

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Landroidx/compose/runtime/collection/b;

    new-array v5, v1, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v5, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    const/4 v5, 0x1

    if-eqz p0, :cond_b

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v6

    and-int/2addr v6, v2

    if-nez v6, :cond_2

    invoke-static {v4, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    move-object v7, v6

    :goto_2
    if-eqz p0, :cond_1

    instance-of v8, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v8, :cond_3

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_9

    instance-of v8, p0, Landroidx/compose/ui/node/i;

    if-eqz v8, :cond_9

    move-object v8, p0

    check-cast v8, Landroidx/compose/ui/node/i;

    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v8

    move v9, v3

    :goto_3
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_4

    move-object p0, v8

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    new-instance v7, Landroidx/compose/runtime/collection/b;

    new-array v10, v1, [Landroidx/compose/ui/f$c;

    invoke-direct {v7, v10, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object p0, v6

    :cond_6
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_3

    :cond_8
    if-ne v9, v5, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_1

    :cond_b
    sget-object p0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    if-lez p0, :cond_e

    sub-int/2addr p0, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    :cond_c
    aget-object v1, v0, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1}, Landroidx/compose/ui/focus/w;->g(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v5

    :cond_d
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_c

    :cond_e
    return v3

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitChildren called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final h(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z
    .locals 11

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Landroidx/compose/runtime/collection/b;

    new-array v5, v1, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v5, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    const/4 v5, 0x1

    if-eqz p0, :cond_b

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v6

    and-int/2addr v6, v2

    if-nez v6, :cond_2

    invoke-static {v4, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    move-object v7, v6

    :goto_2
    if-eqz p0, :cond_1

    instance-of v8, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v8, :cond_3

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_9

    instance-of v8, p0, Landroidx/compose/ui/node/i;

    if-eqz v8, :cond_9

    move-object v8, p0

    check-cast v8, Landroidx/compose/ui/node/i;

    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v8

    move v9, v3

    :goto_3
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_4

    move-object p0, v8

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    new-instance v7, Landroidx/compose/runtime/collection/b;

    new-array v10, v1, [Landroidx/compose/ui/f$c;

    invoke-direct {v7, v10, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object p0, v6

    :cond_6
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_3

    :cond_8
    if-ne v9, v5, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_1

    :cond_b
    sget-object p0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    if-lez p0, :cond_e

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    move v1, v3

    :cond_c
    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v2}, Landroidx/compose/ui/focus/w;->g(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v3, v5

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p0, :cond_c

    :cond_e
    :goto_6
    return v3

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitChildren called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final i(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v0, v1, :cond_16

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v4, Landroidx/compose/runtime/collection/b;

    new-array v5, v1, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v5, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/f$c;

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->a1()I

    move-result v7

    and-int/2addr v7, v2

    if-nez v7, :cond_2

    invoke-static {v4, v5}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    move-object v8, v7

    :goto_2
    if-eqz v5, :cond_1

    instance-of v9, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_3

    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_9

    instance-of v9, v5, Landroidx/compose/ui/node/i;

    if-eqz v9, :cond_9

    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/node/i;

    invoke-virtual {v9}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v9

    move v10, v3

    :goto_3
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_7

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v6, :cond_4

    move-object v5, v9

    goto :goto_4

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Landroidx/compose/runtime/collection/b;

    new-array v11, v1, [Landroidx/compose/ui/f$c;

    invoke-direct {v8, v11, v3}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v5, v7

    :cond_6
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_3

    :cond_8
    if-ne v10, v6, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v8}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_2

    :cond_a
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_1

    :cond_b
    sget-object v1, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    sget-object v1, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-direct {v1, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->h()I

    move-result v1

    if-gt v2, v1, :cond_11

    move v4, v3

    :goto_6
    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v5}, Landroidx/compose/ui/focus/w;->g(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v5, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v5

    if-eqz v5, :cond_c

    return v6

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v4, v6

    :cond_d
    if-eq v2, v1, :cond_11

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-direct {v1, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->h()I

    move-result v1

    if-gt v2, v1, :cond_11

    move v4, v3

    :goto_7
    if-eqz v4, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v1

    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v5}, Landroidx/compose/ui/focus/w;->g(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v5, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v5

    if-eqz v5, :cond_f

    return v6

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v4, v6

    :cond_10
    if-eq v1, v2, :cond_11

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_11
    sget-object p1, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/focus/k;->t()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {p0}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_8

    :cond_12
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_13
    :goto_8
    return v3

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 1-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitChildren called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used within a parent that has focus."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
