.class public abstract Landroidx/compose/ui/graphics/g4;
.super Ljava/lang/Object;


# direct methods
.method public static final a(IIIZLandroidx/compose/ui/graphics/colorspace/c;)Landroidx/compose/ui/graphics/e4;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/q0;->a(IIIZLandroidx/compose/ui/graphics/colorspace/c;)Landroidx/compose/ui/graphics/e4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(IIIZLandroidx/compose/ui/graphics/colorspace/c;ILjava/lang/Object;)Landroidx/compose/ui/graphics/e4;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    sget-object p2, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/f4$a;->b()I

    move-result p2

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    sget-object p4, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/g4;->a(IIIZLandroidx/compose/ui/graphics/colorspace/c;)Landroidx/compose/ui/graphics/e4;

    move-result-object p0

    return-object p0
.end method
