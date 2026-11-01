.class public abstract Landroidx/compose/ui/layout/SubcomposeLayoutKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;

    invoke-direct {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a:Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V
    .locals 7

    const v0, -0x4d634bd0    # -1.824273E-8f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p2

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, p3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_2

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, p3

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p3, 0x30

    if-nez v3, :cond_5

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-ne v3, v4, :cond_7

    invoke-interface {p2}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/i;->G()V

    goto :goto_5

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    sget-object p0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    const-string v3, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:78)"

    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a

    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-direct {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>()V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_a
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    shl-int/lit8 v0, v2, 0x3

    and-int/lit16 v5, v0, 0x3f0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_b
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;

    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;-><init>(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V
    .locals 7

    const v0, -0x1e845847

    invoke-interface {p3, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p3

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, p4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_2

    invoke-interface {p3, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p4, 0x30

    if-nez v3, :cond_5

    invoke-interface {p3, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, p4, 0x180

    if-nez v3, :cond_8

    invoke-interface {p3, p2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    :cond_8
    :goto_5
    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    if-ne v3, v4, :cond_b

    invoke-interface {p3}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/i;->G()V

    :cond_a
    :goto_6
    move-object v3, p1

    goto/16 :goto_a

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, -0x1

    const-string v3, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:112)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v1

    invoke-static {p3, v0}, Landroidx/compose/runtime/g;->c(Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/m;

    move-result-object v2

    invoke-static {p3, p1}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v3

    invoke-interface {p3}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->K:Landroidx/compose/ui/node/LayoutNode$c;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode$c;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {p3}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/f;

    if-nez v6, :cond_e

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_e
    invoke-interface {p3}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {p3}, Landroidx/compose/runtime/i;->e()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p3, v5}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_f
    invoke-interface {p3}, Landroidx/compose/runtime/i;->o()V

    :goto_8
    invoke-static {p3}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->g()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, p0, v6}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v2, v6}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v5, p2, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_11
    invoke-interface {p3}, Landroidx/compose/runtime/i;->r()V

    invoke-interface {p3}, Landroidx/compose/runtime/i;->h()Z

    move-result v1

    if-nez v1, :cond_14

    const v1, -0x1959576

    invoke-interface {p3, v1}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p3, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_13

    :cond_12
    new-instance v2, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    invoke-interface {p3, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_13
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, p3, v0}, Landroidx/compose/runtime/g0;->e(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/i;->K()V

    goto :goto_9

    :cond_14
    const v0, -0x1946565

    invoke-interface {p3, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p3}, Landroidx/compose/runtime/i;->K()V

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    goto/16 :goto_6

    :goto_a
    invoke-interface {p3}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p1

    if-eqz p1, :cond_15

    new-instance p3, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$5;

    move-object v1, p3

    move-object v2, p0

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$5;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {p1, p3}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method public static final synthetic c()Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a:Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;

    return-object v0
.end method
