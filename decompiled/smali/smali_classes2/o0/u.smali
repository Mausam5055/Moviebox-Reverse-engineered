.class public abstract Lo0/u;
.super Ljava/lang/Object;


# direct methods
.method public static final a(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lo0/t;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final b(J)J
    .locals 5

    const/16 v0, 0x21

    shr-long v1, p0, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    shl-long/2addr p0, v3

    shr-long/2addr p0, v0

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    or-long/2addr p0, v1

    invoke-static {p0, p1}, Lo0/p;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(J)J
    .locals 4

    invoke-static {p0, p1}, Ly/m;->i(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, p1}, Ly/m;->g(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long v0, v0

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lo0/t;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(J)J
    .locals 1

    invoke-static {p0, p1}, Lo0/t;->g(J)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Lo0/t;->f(J)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Ly/n;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method
