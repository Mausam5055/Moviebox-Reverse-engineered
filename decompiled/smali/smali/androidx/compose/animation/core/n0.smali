.class public abstract Landroidx/compose/animation/core/n0;
.super Ljava/lang/Object;


# static fields
.field private static final a:F = 3.4028235E38f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/animation/core/i0;->a(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final b()F
    .locals 1

    sget v0, Landroidx/compose/animation/core/n0;->a:F

    return v0
.end method
