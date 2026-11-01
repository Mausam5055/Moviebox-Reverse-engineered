.class public abstract Lo0/s;
.super Ljava/lang/Object;


# direct methods
.method public static final a(JJ)Lo0/r;
    .locals 5

    new-instance v0, Lo0/r;

    invoke-static {p0, p1}, Lo0/p;->h(J)I

    move-result v1

    invoke-static {p0, p1}, Lo0/p;->i(J)I

    move-result v2

    invoke-static {p0, p1}, Lo0/p;->h(J)I

    move-result v3

    invoke-static {p2, p3}, Lo0/t;->g(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p0, p1}, Lo0/p;->i(J)I

    move-result p0

    invoke-static {p2, p3}, Lo0/t;->f(J)I

    move-result p1

    add-int/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lo0/r;-><init>(IIII)V

    return-object v0
.end method

.method public static final b(Ly/i;)Lo0/r;
    .locals 4

    new-instance v0, Lo0/r;

    invoke-virtual {p0}, Ly/i;->f()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Ly/i;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Ly/i;->g()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Ly/i;->c()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lo0/r;-><init>(IIII)V

    return-object v0
.end method
