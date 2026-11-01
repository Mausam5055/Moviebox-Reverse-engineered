.class public abstract Landroidx/compose/ui/graphics/colorspace/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/n$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/graphics/colorspace/n$a;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/n;->a:Landroidx/compose/ui/graphics/colorspace/n$a;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/n;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/n;->b:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/n;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/n;->c:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/n;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/n;->d:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/n;->d(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/n;->e:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/colorspace/n;->e:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/colorspace/n;->b:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/colorspace/n;->c:I

    return v0
.end method

.method public static d(I)I
    .locals 0

    return p0
.end method

.method public static final e(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
