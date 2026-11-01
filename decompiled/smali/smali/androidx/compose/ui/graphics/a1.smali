.class public final Landroidx/compose/ui/graphics/a1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/a1;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/a1;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/a1;->a:Landroidx/compose/ui/graphics/a1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/colorspace/c;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/graphics/y0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/ColorSpace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/graphics/j0;->b(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final b(IIIZLandroidx/compose/ui/graphics/colorspace/c;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p2}, Landroidx/compose/ui/graphics/q0;->d(I)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p4}, Landroidx/compose/ui/graphics/j0;->a(Landroidx/compose/ui/graphics/colorspace/c;)Landroid/graphics/ColorSpace;

    move-result-object v5

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/z0;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
