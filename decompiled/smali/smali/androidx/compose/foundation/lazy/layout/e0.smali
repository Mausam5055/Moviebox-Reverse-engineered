.class public abstract Landroidx/compose/foundation/lazy/layout/e0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroidx/compose/runtime/i1;)Landroidx/compose/runtime/i1;
    .locals 0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/i1;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/i1;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/e0;->b(Landroidx/compose/runtime/i1;)Landroidx/compose/runtime/i1;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroidx/compose/runtime/i1;)V
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
