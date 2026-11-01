.class public abstract Lo0/q;
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

    invoke-static {p0, p1}, Lo0/p;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final b(JJ)J
    .locals 2

    invoke-static {p0, p1}, Ly/g;->m(J)F

    move-result v0

    invoke-static {p2, p3}, Lo0/p;->h(J)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {p0, p1}, Ly/g;->n(J)F

    move-result p0

    invoke-static {p2, p3}, Lo0/p;->i(J)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, Ly/h;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(JJ)J
    .locals 2

    invoke-static {p0, p1}, Ly/g;->m(J)F

    move-result v0

    invoke-static {p2, p3}, Lo0/p;->h(J)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {p0, p1}, Ly/g;->n(J)F

    move-result p0

    invoke-static {p2, p3}, Lo0/p;->i(J)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Ly/h;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(J)J
    .locals 4

    invoke-static {p0, p1}, Ly/g;->m(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, p1}, Ly/g;->n(J)F

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

    invoke-static {p0, p1}, Lo0/p;->c(J)J

    move-result-wide p0

    return-wide p0
.end method
