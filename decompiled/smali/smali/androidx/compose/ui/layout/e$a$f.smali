.class public final Landroidx/compose/ui/layout/e$a$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 2

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v0

    invoke-static {p3, p4}, Ly/m;->i(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result v0

    invoke-static {p3, p4}, Ly/m;->g(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p1}, Landroidx/compose/ui/layout/m0;->a(FF)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/f;->c(JJ)F

    move-result p1

    invoke-static {p1, p1}, Landroidx/compose/ui/layout/m0;->a(FF)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method
