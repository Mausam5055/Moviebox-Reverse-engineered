.class public abstract Landroidx/compose/ui/viewinterop/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/viewinterop/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/viewinterop/c$a;

    invoke-direct {v0}, Landroidx/compose/ui/viewinterop/c$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/viewinterop/c;->a:Landroidx/compose/ui/viewinterop/c$a;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/viewinterop/c$a;
    .locals 1

    sget-object v0, Landroidx/compose/ui/viewinterop/c;->a:Landroidx/compose/ui/viewinterop/c$a;

    return-object v0
.end method

.method public static final synthetic b(Landroid/view/View;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/viewinterop/c;->f(Landroid/view/View;Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public static final synthetic c(I)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/c;->g(I)F

    move-result p0

    return p0
.end method

.method public static final synthetic d(F)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/c;->h(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic e(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/c;->i(I)I

    move-result p0

    return p0
.end method

.method private static final f(Landroid/view/View;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->o()Landroidx/compose/ui/layout/l;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/layout/m;->e(Landroidx/compose/ui/layout/l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, v1}, Ly/g;->n(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private static final g(I)F
    .locals 1

    int-to-float p0, p0

    const/4 v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0
.end method

.method private static final h(F)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private static final i(I)I
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/ui/input/nestedscroll/e;->a:Landroidx/compose/ui/input/nestedscroll/e$a;

    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/e$a;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/input/nestedscroll/e;->a:Landroidx/compose/ui/input/nestedscroll/e$a;

    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/e$a;->a()I

    move-result p0

    :goto_0
    return p0
.end method
