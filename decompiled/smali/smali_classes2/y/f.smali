.class public abstract Ly/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ly/e;)Ly/i;
    .locals 4

    new-instance v0, Ly/i;

    invoke-virtual {p0}, Ly/e;->b()F

    move-result v1

    invoke-virtual {p0}, Ly/e;->d()F

    move-result v2

    invoke-virtual {p0}, Ly/e;->c()F

    move-result v3

    invoke-virtual {p0}, Ly/e;->a()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ly/i;-><init>(FFFF)V

    return-object v0
.end method
