.class Landroidx/core/view/insets/ProtectionLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/insets/Protection$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/insets/ProtectionLayout;->addProtectionView(Landroid/content/Context;ILandroidx/core/view/insets/Protection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/insets/ProtectionLayout;


# direct methods
.method constructor <init>(Landroidx/core/view/insets/ProtectionLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout$a;->c:Landroidx/core/view/insets/ProtectionLayout;

    iput-object p2, p0, Landroidx/core/view/insets/ProtectionLayout$a;->a:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p3, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->a:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lz0/c;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Lz0/c;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Lz0/c;->b:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Lz0/c;->c:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Lz0/c;->d:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->a:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public e(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public f(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$a;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
