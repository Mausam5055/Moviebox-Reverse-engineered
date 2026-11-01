.class public abstract Landroidx/compose/ui/ComposedModifierKt;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/f;
    .locals 1

    new-instance v0, Landroidx/compose/ui/d;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/d;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->b(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 2

    sget-object v0, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$materializeImpl$1;

    invoke-interface {p1, v0}, Landroidx/compose/ui/f;->c(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const v0, 0x48ae8da7

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->x(I)V

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    new-instance v1, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$result$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$result$1;-><init>(Landroidx/compose/runtime/i;)V

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/f;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/f;

    invoke-interface {p0}, Landroidx/compose/runtime/i;->N()V

    return-object p1
.end method

.method public static final e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 1

    const v0, 0x1a365f2c

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {p0, p1}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    return-object p1
.end method
