.class public abstract Landroidx/compose/runtime/CompositionLocalKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 3

    const v0, -0x50862cb8

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:398)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->D(Landroidx/compose/runtime/t1;)V

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroidx/compose/runtime/i;->q()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$2;-><init>(Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method public static final b([Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 3

    const v0, -0x52e5dee3

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:377)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->Q([Landroidx/compose/runtime/t1;)V

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroidx/compose/runtime/i;->H()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$1;-><init>([Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/e0;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/e0;-><init>(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    move-result-object p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalKt;->c(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/s1;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/b3;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/b3;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
