.class public abstract Landroidx/compose/ui/graphics/colorspace/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/b$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/graphics/colorspace/b$a;

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/b;->a:Landroidx/compose/ui/graphics/colorspace/b$a;

    const/4 v0, 0x3

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v3, v0, v2

    const/4 v5, 0x0

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v5, v3

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/colorspace/b;->d(J)J

    move-result-wide v5

    sput-wide v5, Landroidx/compose/ui/graphics/colorspace/b;->b:J

    const/4 v5, 0x1

    int-to-long v5, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v3

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/colorspace/b;->d(J)J

    move-result-wide v5

    sput-wide v5, Landroidx/compose/ui/graphics/colorspace/b;->c:J

    const/4 v5, 0x2

    int-to-long v5, v5

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/colorspace/b;->d(J)J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/ui/graphics/colorspace/b;->d:J

    const/4 v3, 0x4

    int-to-long v3, v3

    shl-long v2, v3, v2

    and-long/2addr v0, v7

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/b;->d(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->e:J

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->d:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->b:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->c:J

    return-wide v0
.end method

.method public static d(J)J
    .locals 0

    return-wide p0
.end method

.method public static final e(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static g(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/collection/s;->a(J)I

    move-result p0

    return p0
.end method

.method public static h(J)Ljava/lang/String;
    .locals 2

    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->b:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Rgb"

    goto :goto_0

    :cond_0
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->c:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Xyz"

    goto :goto_0

    :cond_1
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->d:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Lab"

    goto :goto_0

    :cond_2
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/b;->e:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Cmyk"

    goto :goto_0

    :cond_3
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method
