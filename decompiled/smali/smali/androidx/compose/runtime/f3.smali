.class public abstract Landroidx/compose/runtime/f3;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;
    .locals 0

    return-object p0
.end method

.method public static final b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    invoke-interface {p0}, Landroidx/compose/runtime/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_1
    return-void
.end method
