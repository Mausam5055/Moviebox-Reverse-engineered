.class public Lya/a;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lab/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya/a$b;
    }
.end annotation


# instance fields
.field private a:Lya/a$b;


# direct methods
.method public constructor <init>(Lab/n;)V
    .locals 2

    new-instance v0, Lya/a$b;

    new-instance v1, Lab/i;

    invoke-direct {v1, p1}, Lab/i;-><init>(Lab/n;)V

    invoke-direct {v0, v1}, Lya/a$b;-><init>(Lab/i;)V

    invoke-direct {p0, v0}, Lya/a;-><init>(Lya/a$b;)V

    return-void
.end method

.method private constructor <init>(Lya/a$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lya/a;->a:Lya/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lya/a$b;Lya/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lya/a;-><init>(Lya/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Lya/a;
    .locals 2

    new-instance v0, Lya/a$b;

    iget-object v1, p0, Lya/a;->a:Lya/a$b;

    invoke-direct {v0, v1}, Lya/a$b;-><init>(Lya/a$b;)V

    iput-object v0, p0, Lya/a;->a:Lya/a$b;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-boolean v1, v0, Lya/a$b;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0}, Lab/i;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lya/a;->a()Lya/a;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lya/a;->a:Lya/a$b;

    iget-object v1, v1, Lya/a$b;->a:Lab/i;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {p1}, Lya/b;->e([I)Z

    move-result p1

    iget-object v1, p0, Lya/a;->a:Lya/a$b;

    iget-boolean v3, v1, Lya/a$b;->b:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, v1, Lya/a$b;->b:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lab/n;)V
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->setShapeAppearanceModel(Lab/n;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lya/a;->a:Lya/a$b;

    iget-object v0, v0, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
