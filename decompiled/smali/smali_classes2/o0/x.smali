.class public abstract Lo0/x;
.super Ljava/lang/Object;


# direct methods
.method public static final a(FJ)J
    .locals 0

    invoke-static {p1, p2, p0}, Lo0/x;->e(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final b(F)J
    .locals 2

    const-wide v0, 0x100000000L

    invoke-static {v0, v1, p0}, Lo0/x;->e(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(I)J
    .locals 2

    const-wide v0, 0x100000000L

    int-to-float p0, p0

    invoke-static {v0, v1, p0}, Lo0/x;->e(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final d(J)Z
    .locals 2

    invoke-static {p0, p1}, Lo0/w;->f(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(JF)J
    .locals 4

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lo0/w;->c(J)J

    move-result-wide p0

    return-wide p0
.end method
