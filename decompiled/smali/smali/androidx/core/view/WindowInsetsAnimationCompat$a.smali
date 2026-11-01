.class Landroidx/core/view/WindowInsetsAnimationCompat$a;
.super Landroidx/core/view/WindowInsetsAnimationCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$a$a;
    }
.end annotation


# instance fields
.field private final f:Landroid/view/WindowInsetsAnimation;


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/s0;->a(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$a;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$b;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    return-void
.end method

.method public static i(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    invoke-static {}, Landroidx/core/view/u0;->a()V

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getLowerBound()Lz0/c;

    move-result-object v0

    invoke-virtual {v0}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getUpperBound()Lz0/c;

    move-result-object p0

    invoke-virtual {p0}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/view/t0;->a(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/WindowInsetsAnimation$Bounds;)Lz0/c;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/b1;->a(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/WindowInsetsAnimation$Bounds;)Lz0/c;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/c1;->a(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$a$a;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/view/r0;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/core/view/w0;->a(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/core/view/q0;->a(Landroid/view/WindowInsetsAnimation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/core/view/z0;->a(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/core/view/a1;->a(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public e()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/core/view/x0;->a(Landroid/view/WindowInsetsAnimation;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/core/view/v0;->a(Landroid/view/WindowInsetsAnimation;)I

    move-result v0

    return v0
.end method

.method public g(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0, p1}, Landroidx/core/view/d1;->a(Landroid/view/WindowInsetsAnimation;F)V

    return-void
.end method

.method public h(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0, p1}, Landroidx/core/view/y0;->a(Landroid/view/WindowInsetsAnimation;F)V

    return-void
.end method
