.class public abstract synthetic Landroidx/compose/foundation/w;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/foundation/x;Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;
    .locals 1

    const p0, 0x4af582f5    # 8044922.5f

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "androidx.compose.foundation.Indication.rememberUpdatedInstance (Indication.kt:75)"

    invoke-static {p0, p3, p1, v0}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/foundation/c0;->a:Landroidx/compose/foundation/c0;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    return-object p0
.end method
