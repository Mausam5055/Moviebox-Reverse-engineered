.class public abstract synthetic Lo0/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lo0/e;F)I
    .locals 0

    invoke-interface {p0, p1}, Lo0/e;->E0(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Lo0/e;F)F
    .locals 0

    invoke-interface {p0}, Lo0/e;->getDensity()F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Lo0/i;->g(F)F

    move-result p0

    return p0
.end method

.method public static c(Lo0/e;I)F
    .locals 0

    int-to-float p1, p1

    invoke-interface {p0}, Lo0/e;->getDensity()F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Lo0/i;->g(F)F

    move-result p0

    return p0
.end method

.method public static d(Lo0/e;J)F
    .locals 4

    invoke-static {p1, p2}, Lo0/w;->g(J)J

    move-result-wide v0

    sget-object v2, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v2}, Lo0/y$a;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo0/y;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Lo0/n;->J(J)F

    move-result p1

    invoke-interface {p0, p1}, Lo0/e;->E0(F)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only Sp can convert to Px"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lo0/e;F)F
    .locals 0

    invoke-interface {p0}, Lo0/e;->getDensity()F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static f(Lo0/e;J)J
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lo0/l;->d(J)F

    move-result v0

    invoke-interface {p0, v0}, Lo0/e;->E0(F)F

    move-result v0

    invoke-static {p1, p2}, Lo0/l;->c(J)F

    move-result p1

    invoke-interface {p0, p1}, Lo0/e;->E0(F)F

    move-result p0

    invoke-static {v0, p0}, Ly/n;->a(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Ly/m;->b:Ly/m$a;

    invoke-virtual {p0}, Ly/m$a;->a()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static g(Lo0/e;F)J
    .locals 0

    invoke-interface {p0, p1}, Lo0/e;->y0(F)F

    move-result p1

    invoke-interface {p0, p1}, Lo0/n;->H(F)J

    move-result-wide p0

    return-wide p0
.end method
