.class final Landroidx/compose/ui/platform/n0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/platform/m0;


# instance fields
.field private final a:[F

.field private final b:[I


# direct methods
.method private constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/n0;->a:[F

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/compose/ui/platform/n0;->b:[I

    return-void
.end method

.method public synthetic constructor <init>([FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/n0;-><init>([F)V

    return-void
.end method

.method private final b([FLandroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/n0;->a:[F

    invoke-static {v0, p2}, Landroidx/compose/ui/graphics/r0;->b([FLandroid/graphics/Matrix;)V

    iget-object p2, p0, Landroidx/compose/ui/platform/n0;->a:[F

    invoke-static {p1, p2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->c([F[F)V

    return-void
.end method

.method private final c([FFF)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/n0;->a:[F

    invoke-static {p1, p2, p3, v0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->d([FFF[F)V

    return-void
.end method

.method private final d(Landroid/view/View;[F)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/platform/n0;->d(Landroid/view/View;[F)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-direct {p0, p2, v0, v1}, Landroidx/compose/ui/platform/n0;->c([FFF)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p2, v0, v1}, Landroidx/compose/ui/platform/n0;->c([FFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/n0;->b:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    invoke-direct {p0, p2, v1, v2}, Landroidx/compose/ui/platform/n0;->c([FFF)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-direct {p0, p2, v1, v0}, Landroidx/compose/ui/platform/n0;->c([FFF)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p1}, Landroidx/compose/ui/platform/n0;->b([FLandroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;[F)V
    .locals 0

    invoke-static {p2}, Landroidx/compose/ui/graphics/i4;->h([F)V

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/n0;->d(Landroid/view/View;[F)V

    return-void
.end method
