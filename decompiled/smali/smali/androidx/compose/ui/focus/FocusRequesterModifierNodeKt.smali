.class public abstract Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/focus/q;)Z
    .locals 10

    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    instance-of v7, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_1

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/focus/k;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->j(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p0

    goto :goto_1

    :cond_0
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->b()I

    move-result p0

    sget-object v0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;

    invoke-static {v1, p0, v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->k(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_1
    return p0

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_7

    instance-of v7, v1, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_7

    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v8, v5

    :goto_2
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_2

    move-object v1, v7

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Landroidx/compose/runtime/collection/b;

    new-array v9, v4, [Landroidx/compose/ui/f$c;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v1, v2

    :cond_4
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_2

    :cond_6
    if-ne v8, v6, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_8
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Landroidx/compose/runtime/collection/b;

    new-array v3, v4, [Landroidx/compose/ui/f$c;

    invoke-direct {v1, v3, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_b

    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_4

    :cond_b
    :goto_5
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_14

    move-object v3, v2

    :goto_6
    if-eqz p0, :cond_a

    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_d

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->I1()Landroidx/compose/ui/focus/k;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/k;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->j(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p0

    goto :goto_7

    :cond_c
    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->b()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->k(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_7
    return p0

    :cond_d
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_13

    instance-of v7, p0, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_13

    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v8, v5

    :goto_8
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_11

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_e

    move-object p0, v7

    goto :goto_9

    :cond_e
    if-nez v3, :cond_f

    new-instance v3, Landroidx/compose/runtime/collection/b;

    new-array v9, v4, [Landroidx/compose/ui/f$c;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_f
    if-eqz p0, :cond_10

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object p0, v2

    :cond_10
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_11
    :goto_9
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_8

    :cond_12
    if-ne v8, v6, :cond_13

    goto :goto_6

    :cond_13
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_6

    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_5

    :cond_15
    return v5

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitChildren called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
