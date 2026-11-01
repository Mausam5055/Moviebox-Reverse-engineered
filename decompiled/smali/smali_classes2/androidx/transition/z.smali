.class abstract Landroidx/transition/z;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/transition/c0;

.field static final b:Landroid/util/Property;

.field static final c:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/transition/k0;

    invoke-direct {v0}, Landroidx/transition/k0;-><init>()V

    sput-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/transition/j0;

    invoke-direct {v0}, Landroidx/transition/j0;-><init>()V

    sput-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    :goto_0
    new-instance v0, Landroidx/transition/z$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroidx/transition/z$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/z;->b:Landroid/util/Property;

    new-instance v0, Landroidx/transition/z$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroidx/transition/z$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/z;->c:Landroid/util/Property;

    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0}, Landroidx/transition/c0;->a(Landroid/view/View;)V

    return-void
.end method

.method static b(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0}, Landroidx/transition/c0;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static c(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0}, Landroidx/transition/c0;->c(Landroid/view/View;)V

    return-void
.end method

.method static d(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/c0;->d(Landroid/view/View;IIII)V

    return-void
.end method

.method static e(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/c0;->e(Landroid/view/View;F)V

    return-void
.end method

.method static f(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/c0;->f(Landroid/view/View;I)V

    return-void
.end method

.method static g(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/c0;->g(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static h(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, Landroidx/transition/z;->a:Landroidx/transition/c0;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/c0;->h(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
