.class public abstract Landroidx/compose/runtime/saveable/SaveableStateHolderKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/saveable/a;
    .locals 7

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:60)"

    const v2, 0xebd1ab

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    const p1, -0x2f7337b1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->P(I)V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    sget-object p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->d:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$a;

    invoke-virtual {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$a;->a()Landroidx/compose/runtime/saveable/d;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;

    const/16 v5, 0xc00

    const/4 v6, 0x4

    const/4 v2, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/saveable/b;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->i(Landroidx/compose/runtime/saveable/b;)V

    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    return-object p1
.end method
