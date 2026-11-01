.class Landroidx/core/view/insets/f$a;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/insets/f;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroidx/core/view/insets/f;


# direct methods
.method constructor <init>(Landroidx/core/view/insets/f;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/insets/f$a;->b:Landroidx/core/view/insets/f;

    iput-object p3, p0, Landroidx/core/view/insets/f$a;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Landroidx/core/view/insets/f$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/core/view/insets/f$a;->b:Landroidx/core/view/insets/f;

    invoke-static {v0}, Landroidx/core/view/insets/f;->c(Landroidx/core/view/insets/f;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/core/view/insets/f$a;->b:Landroidx/core/view/insets/f;

    invoke-static {v0, p1}, Landroidx/core/view/insets/f;->d(Landroidx/core/view/insets/f;I)I

    iget-object v0, p0, Landroidx/core/view/insets/f$a;->b:Landroidx/core/view/insets/f;

    invoke-static {v0}, Landroidx/core/view/insets/f;->e(Landroidx/core/view/insets/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/core/view/insets/f$a;->b:Landroidx/core/view/insets/f;

    invoke-static {v1}, Landroidx/core/view/insets/f;->e(Landroidx/core/view/insets/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/insets/f$c;

    invoke-interface {v1, p1}, Landroidx/core/view/insets/f$c;->e(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
