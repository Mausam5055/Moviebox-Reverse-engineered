.class public abstract Landroidx/compose/foundation/text/selection/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ly/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly/i;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Ly/i;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/foundation/text/selection/c;->a:Ly/i;

    return-void
.end method

.method public static final a(Ly/i;J)Z
    .locals 3

    invoke-virtual {p0}, Ly/i;->f()F

    move-result v0

    invoke-virtual {p0}, Ly/i;->g()F

    move-result v1

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ly/i;->i()F

    move-result v0

    invoke-virtual {p0}, Ly/i;->c()F

    move-result p0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    cmpg-float p2, v0, p1

    if-gtz p2, :cond_0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
