.class public abstract Li0/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(ILandroidx/compose/runtime/i;I)J
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.ui.res.colorResource (ColorResources.android.kt:36)"

    const v2, -0x69f4b549

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget-object p2, Li0/a;->a:Li0/a;

    invoke-virtual {p2, p1, p0}, Li0/a;->a(Landroid/content/Context;I)J

    move-result-wide p0

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    return-wide p0
.end method
