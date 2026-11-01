.class public final Landroidx/compose/foundation/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/a5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/g;
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
.method public a(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4;
    .locals 3

    invoke-static {}, Landroidx/compose/foundation/g;->b()F

    move-result p3

    invoke-interface {p4, p3}, Lo0/e;->c0(F)I

    move-result p3

    int-to-float p3, p3

    new-instance p4, Landroidx/compose/ui/graphics/k4$b;

    new-instance v0, Ly/i;

    neg-float v1, p3

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v2

    add-float/2addr v2, p3

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p2, v2, p1}, Ly/i;-><init>(FFFF)V

    invoke-direct {p4, v0}, Landroidx/compose/ui/graphics/k4$b;-><init>(Ly/i;)V

    return-object p4
.end method
