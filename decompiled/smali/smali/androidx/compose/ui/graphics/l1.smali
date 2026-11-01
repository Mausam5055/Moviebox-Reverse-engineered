.class public abstract synthetic Landroidx/compose/ui/graphics/l1;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/ui/graphics/m1;Ly/i;I)V
    .locals 6

    invoke-virtual {p1}, Ly/i;->f()F

    move-result v1

    invoke-virtual {p1}, Ly/i;->i()F

    move-result v2

    invoke-virtual {p1}, Ly/i;->g()F

    move-result v3

    invoke-virtual {p1}, Ly/i;->c()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/m1;->a(FFFFI)V

    return-void
.end method

.method public static b(Landroidx/compose/ui/graphics/m1;Ly/i;Landroidx/compose/ui/graphics/m4;)V
    .locals 6

    invoke-virtual {p1}, Ly/i;->f()F

    move-result v1

    invoke-virtual {p1}, Ly/i;->i()F

    move-result v2

    invoke-virtual {p1}, Ly/i;->g()F

    move-result v3

    invoke-virtual {p1}, Ly/i;->c()F

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/m1;->f(FFFFLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/t1$a;->b()I

    move-result p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/m1;->b(Landroidx/compose/ui/graphics/Path;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/m1;FFFFIILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {p5}, Landroidx/compose/ui/graphics/t1$a;->b()I

    move-result p5

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/m1;->a(FFFFI)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipRect-N_I0leg"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Landroidx/compose/ui/graphics/m1;Ly/i;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/t1$a;->b()I

    move-result p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/m1;->l(Ly/i;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
