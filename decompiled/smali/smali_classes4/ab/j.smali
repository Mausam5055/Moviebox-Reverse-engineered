.class public abstract Lab/j;
.super Ljava/lang/Object;


# direct methods
.method static a(I)Lab/e;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lab/f;

    invoke-direct {p0}, Lab/f;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lab/m;

    invoke-direct {p0}, Lab/m;-><init>()V

    return-object p0
.end method

.method static b()Lab/e;
    .locals 1

    new-instance v0, Lab/m;

    invoke-direct {v0}, Lab/m;-><init>()V

    return-object v0
.end method

.method static c()Lab/g;
    .locals 1

    new-instance v0, Lab/g;

    invoke-direct {v0}, Lab/g;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lab/i;

    if-eqz v0, :cond_0

    check-cast p0, Lab/i;

    invoke-virtual {p0, p1}, Lab/i;->c0(F)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lab/i;

    if-eqz v1, :cond_0

    check-cast v0, Lab/i;

    invoke-static {p0, v0}, Lab/j;->f(Landroid/view/View;Lab/i;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;Lab/i;)V
    .locals 1

    invoke-virtual {p1}, Lab/i;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->n(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lab/i;->h0(F)V

    :cond_0
    return-void
.end method
