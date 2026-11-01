.class public abstract Landroidx/compose/ui/graphics/q0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(IIIZLandroidx/compose/ui/graphics/colorspace/c;)Landroidx/compose/ui/graphics/e4;
    .locals 3

    invoke-static {p2}, Landroidx/compose/ui/graphics/q0;->d(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/a1;->b(IIIZLandroidx/compose/ui/graphics/colorspace/c;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2, p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :goto_0
    new-instance p1, Landroidx/compose/ui/graphics/n0;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/n0;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static final b(Landroidx/compose/ui/graphics/e4;)Landroid/graphics/Bitmap;
    .locals 1

    instance-of v0, p0, Landroidx/compose/ui/graphics/n0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/graphics/n0;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/n0;->c()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unable to obtain android.graphics.Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/e4;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/n0;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/n0;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static final d(I)Landroid/graphics/Bitmap$Config;
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->e()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->c()I

    move-result v3

    invoke-static {p0, v3}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->d()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/ui/graphics/p0;->a()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method public static final e(Landroid/graphics/Bitmap$Config;)I
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/f4$a;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_1

    sget-object p0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/f4$a;->e()I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    sget-object p0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    move-result p0

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-ne p0, v2, :cond_3

    sget-object p0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/f4$a;->c()I

    move-result p0

    goto :goto_0

    :cond_3
    if-lt v0, v1, :cond_4

    invoke-static {}, Landroidx/compose/ui/graphics/p0;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-ne p0, v0, :cond_4

    sget-object p0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/f4$a;->d()I

    move-result p0

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    move-result p0

    :goto_0
    return p0
.end method
