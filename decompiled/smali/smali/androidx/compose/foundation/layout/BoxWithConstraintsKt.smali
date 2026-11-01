.class public abstract Landroidx/compose/foundation/layout/BoxWithConstraintsKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/ui/b;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/i;II)V
    .locals 8

    const v0, 0x6a3450fd

    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p4

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, p5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p5, 0x6

    if-nez v2, :cond_2

    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, p5

    goto :goto_1

    :cond_2
    move v2, p5

    :goto_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, p5, 0x30

    if-nez v4, :cond_5

    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, p5, 0x180

    if-nez v5, :cond_8

    invoke-interface {p4, p2}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, p6, 0x8

    const/16 v6, 0x800

    if-eqz v5, :cond_9

    or-int/lit16 v2, v2, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v5, p5, 0xc00

    if-nez v5, :cond_b

    invoke-interface {p4, p3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v2, v5

    :cond_b
    :goto_7
    and-int/lit16 v5, v2, 0x493

    const/16 v7, 0x492

    if-ne v5, v7, :cond_e

    invoke-interface {p4}, Landroidx/compose/runtime/i;->h()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_9

    :cond_c
    invoke-interface {p4}, Landroidx/compose/runtime/i;->G()V

    :cond_d
    :goto_8
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    goto :goto_b

    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    sget-object p0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :cond_f
    if-eqz v3, :cond_10

    sget-object p1, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object p1

    :cond_10
    const/4 v1, 0x0

    if-eqz v4, :cond_11

    move p2, v1

    :cond_11
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, -0x1

    const-string v4, "androidx.compose.foundation.layout.BoxWithConstraints (BoxWithConstraints.kt:64)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_12
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v0

    and-int/lit16 v3, v2, 0x1c00

    if-ne v3, v6, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    move v3, v1

    :goto_a
    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {p4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_14

    sget-object v3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_15

    :cond_14
    new-instance v4, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;

    invoke-direct {v4, v0, p3}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;-><init>(Landroidx/compose/ui/layout/t;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p4, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_15
    check-cast v4, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, v2, 0xe

    invoke-static {p0, v4, p4, v0, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    goto :goto_8

    :goto_b
    invoke-interface {p4}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p0

    if-eqz p0, :cond_16

    new-instance p1, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;

    move-object v1, p1

    move-object v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;-><init>(Landroidx/compose/ui/f;Landroidx/compose/ui/b;ZLkotlin/jvm/functions/Function3;II)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method
