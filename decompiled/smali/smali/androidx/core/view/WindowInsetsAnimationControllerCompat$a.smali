.class Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;
.super Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0, p1}, Landroidx/core/view/f1;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/k1;->a(Landroid/view/WindowInsetsAnimationController;)F

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/j1;->a(Landroid/view/WindowInsetsAnimationController;)F

    move-result v0

    return v0
.end method

.method public d()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/l1;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/g1;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz0/c;->f(Landroid/graphics/Insets;)Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/h1;->a(Landroid/view/WindowInsetsAnimationController;)I

    move-result v0

    return v0
.end method

.method h()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/m1;->a(Landroid/view/WindowInsetsAnimationController;)Z

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/i1;->a(Landroid/view/WindowInsetsAnimationController;)Z

    move-result v0

    return v0
.end method

.method public j(Lz0/c;FF)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lz0/c;->g()Landroid/graphics/Insets;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/n1;->a(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FF)V

    return-void
.end method
