.class public abstract Landroidx/compose/ui/focus/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 11

    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->a1()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    move-object v4, v1

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_7

    instance-of v6, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_6

    instance-of v6, v4, Landroidx/compose/ui/node/i;

    if-eqz v6, :cond_6

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/i;

    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/4 v9, 0x1

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_1

    move-object v4, v6

    goto :goto_4

    :cond_1
    if-nez v5, :cond_2

    new-instance v5, Landroidx/compose/runtime/collection/b;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v4, v3

    :cond_3
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v6

    goto :goto_3

    :cond_5
    if-ne v8, v9, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_9
    move-object v1, v3

    goto/16 :goto_0

    :cond_a
    move-object v4, v3

    :goto_5
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/layout/d;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/layout/d;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v3

    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/layout/d;

    move-result-object p0

    if-eqz p0, :cond_12

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->h()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/d$b$a;->a()I

    move-result p1

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object p1, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/d$b$a;->d()I

    move-result p1

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->d()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object p1, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/d$b$a;->e()I

    move-result p1

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->g()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p1, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/d$b$a;->f()I

    move-result p1

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object p1, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/d$b$a;->b()I

    move-result p1

    goto :goto_6

    :cond_10
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/d$b$a;->c()I

    move-result p1

    :goto_6
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/layout/d;->a(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported direction for beyond bounds layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_7
    return-object v3

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitAncestors called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
