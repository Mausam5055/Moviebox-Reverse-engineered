.class public abstract Landroidx/compose/ui/focus/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/w$a;
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->k()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->u()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->h()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->n()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->q()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->d()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    sget-object p1, Landroidx/compose/ui/focus/w$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_4

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->p()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->j()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    :goto_0
    sget-object p2, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester$a;

    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p2

    if-ne p1, p2, :cond_6

    move-object p1, v2

    :cond_6
    if-nez p1, :cond_7

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->i()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    goto :goto_2

    :cond_7
    move-object p0, p1

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->g()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Landroidx/compose/ui/focus/w$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_a

    if-ne p1, v3, :cond_9

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->j()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    goto :goto_1

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->p()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    :goto_1
    sget-object p2, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester$a;

    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p2

    if-ne p1, p2, :cond_b

    move-object p1, v2

    :cond_b
    if-nez p1, :cond_7

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->m()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->b()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->s()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p1}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->c()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->o()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p1}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusRequester;

    :goto_2
    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid FocusDirection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/w$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    return-object v3

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Landroidx/compose/runtime/collection/b;

    const/16 v4, 0x10

    new-array v5, v4, [Landroidx/compose/ui/f$c;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v5

    and-int/2addr v5, v0

    if-nez v5, :cond_4

    invoke-static {v2, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_c

    move-object v5, v3

    :goto_2
    if-eqz p0, :cond_3

    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_5

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {p0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_b

    instance-of v7, p0, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_b

    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v8, v6

    :goto_3
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_9

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v1, :cond_6

    move-object p0, v7

    goto :goto_4

    :cond_6
    if-nez v5, :cond_7

    new-instance v5, Landroidx/compose/runtime/collection/b;

    new-array v9, v4, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v9, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object p0, v3

    :cond_8
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_3

    :cond_a
    if-ne v8, v1, :cond_b

    goto :goto_2

    :cond_b
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_1

    :cond_d
    return-object v3

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitChildren called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 10

    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->a1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_8

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_7

    move-object v3, v1

    move-object v4, v2

    :goto_2
    if-eqz v3, :cond_7

    instance-of v5, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v5, :cond_0

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/focus/k;->t()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v3

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_6

    instance-of v5, v3, Landroidx/compose/ui/node/i;

    if-eqz v5, :cond_6

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/i;

    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    const/4 v8, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_1

    move-object v3, v5

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Landroidx/compose/runtime/collection/b;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v3, v2

    :cond_3
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_3

    :cond_5
    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v3

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

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto/16 :goto_0

    :cond_a
    return-object v2

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitAncestors called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Landroidx/compose/ui/focus/FocusTargetNode;)Ly/i;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/layout/m;->d(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/layout/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/l;->O(Landroidx/compose/ui/layout/l;Z)Ly/i;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Ly/i;->e:Ly/i$a;

    invoke-virtual {p0}, Ly/i$a;->a()Ly/i;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Ly/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 4

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p0, p1, p4}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->f(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->d()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->g()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->h()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    invoke-static {p0, p1, p3, p4}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->t(Landroidx/compose/ui/focus/FocusTargetNode;ILy/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_7

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    sget-object p1, Landroidx/compose/ui/focus/w$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_7

    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->d()I

    move-result p1

    goto :goto_4

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->g()I

    move-result p1

    :goto_4
    invoke-static {p0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {p0, p1, p3, p4}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->t(Landroidx/compose/ui/focus/FocusTargetNode;ILy/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_7

    :cond_8
    move-object p0, v3

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->c()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {p0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p1}, Landroidx/compose/ui/focus/w;->c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_c

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 p0, 0x0

    :goto_6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Focus search invoked with invalid FocusDirection "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/compose/ui/focus/b;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Landroidx/compose/runtime/collection/b;

    const/16 v3, 0x10

    new-array v4, v3, [Landroidx/compose/ui/f$c;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    const/4 v4, 0x1

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v6

    and-int/2addr v6, v0

    if-nez v6, :cond_3

    invoke-static {v2, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_c

    move-object v6, v1

    :goto_2
    if-eqz p0, :cond_2

    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_5

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/focus/w$a;->b:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v4, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    goto :goto_5

    :cond_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_b

    instance-of v7, p0, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_b

    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v8, v5

    :goto_3
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_9

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v4, :cond_6

    move-object p0, v7

    goto :goto_4

    :cond_6
    if-nez v6, :cond_7

    new-instance v6, Landroidx/compose/runtime/collection/b;

    new-array v9, v3, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v9, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object p0, v1

    :cond_8
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_3

    :cond_a
    if-ne v8, v4, :cond_b

    goto :goto_2

    :cond_b
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_1

    :cond_d
    return-object v1

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitChildren called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
