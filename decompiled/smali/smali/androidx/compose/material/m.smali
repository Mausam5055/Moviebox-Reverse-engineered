.class public abstract Landroidx/compose/material/m;
.super Ljava/lang/Object;


# direct methods
.method public static final a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.getString (Strings.android.kt:24)"

    const v2, -0x2b4f9f6b

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f()Landroidx/compose/runtime/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object p2, Landroidx/compose/material/l;->a:Landroidx/compose/material/l$a;

    invoke-virtual {p2}, Landroidx/compose/material/l$a;->e()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material/l;->i(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Landroidx/compose/ui/R$string;->navigation_menu:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/material/l$a;->a()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material/l;->i(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Landroidx/compose/ui/R$string;->close_drawer:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/material/l$a;->b()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material/l;->i(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Landroidx/compose/ui/R$string;->close_sheet:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/material/l$a;->c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material/l;->i(II)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/material/l$a;->d()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material/l;->i(II)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p0, Landroidx/compose/ui/R$string;->dropdown_menu:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroidx/compose/material/l$a;->g()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material/l;->i(II)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p0, Landroidx/compose/ui/R$string;->range_start:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/material/l$a;->f()I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/material/l;->i(II)Z

    move-result p0

    if-eqz p0, :cond_7

    sget p0, Landroidx/compose/ui/R$string;->range_end:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    const-string p0, ""

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_8
    return-object p0
.end method
