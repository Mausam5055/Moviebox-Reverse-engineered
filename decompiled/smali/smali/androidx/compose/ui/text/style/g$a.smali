.class public abstract Landroidx/compose/ui/text/style/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/g$a$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/style/g$a$a;

.field private static final b:F

.field private static final c:F

.field private static final d:F

.field private static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/g$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/g$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/g$a;->a:Landroidx/compose/ui/text/style/g$a$a;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/style/g$a;->c(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/g$a;->b:F

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Landroidx/compose/ui/text/style/g$a;->c(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/g$a;->c:F

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Landroidx/compose/ui/text/style/g$a;->c(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/g$a;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroidx/compose/ui/text/style/g$a;->c(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/g$a;->e:F

    return-void
.end method

.method public static final synthetic a()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/g$a;->c:F

    return v0
.end method

.method public static final synthetic b()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/g$a;->d:F

    return v0
.end method

.method public static c(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "topRatio should be in [0..1] range or -1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(FF)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public static f(F)Ljava/lang/String;
    .locals 2

    sget v0, Landroidx/compose/ui/text/style/g$a;->b:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "LineHeightStyle.Alignment.Top"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/g$a;->c:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "LineHeightStyle.Alignment.Center"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/g$a;->d:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_2

    const-string p0, "LineHeightStyle.Alignment.Proportional"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/g$a;->e:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_3

    const-string p0, "LineHeightStyle.Alignment.Bottom"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineHeightStyle.Alignment(topPercentage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
