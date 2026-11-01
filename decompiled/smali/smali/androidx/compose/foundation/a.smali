.class public abstract Landroidx/compose/foundation/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/f0;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.rememberOverscrollEffect (AndroidOverscroll.android.kt:63)"

    const v2, -0x57ff4a94

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/s1;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/e0;

    if-eqz v0, :cond_3

    const v1, 0x5e88c4e9

    invoke-interface {p0, v1}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p0}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-direct {v2, p1, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/foundation/e0;)V

    invoke-interface {p0, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    goto :goto_0

    :cond_3
    const p1, 0x5e8a48e5

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    sget-object v2, Landroidx/compose/foundation/d0;->a:Landroidx/compose/foundation/d0;

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_4
    return-object v2
.end method
