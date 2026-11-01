.class public abstract Ly/j;
.super Ljava/lang/Object;


# direct methods
.method public static final a(JJ)Ly/i;
    .locals 5

    new-instance v0, Ly/i;

    invoke-static {p0, p1}, Ly/g;->m(J)F

    move-result v1

    invoke-static {p0, p1}, Ly/g;->n(J)F

    move-result v2

    invoke-static {p0, p1}, Ly/g;->m(J)F

    move-result v3

    invoke-static {p2, p3}, Ly/m;->i(J)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {p0, p1}, Ly/g;->n(J)F

    move-result p0

    invoke-static {p2, p3}, Ly/m;->g(J)F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Ly/i;-><init>(FFFF)V

    return-object v0
.end method
