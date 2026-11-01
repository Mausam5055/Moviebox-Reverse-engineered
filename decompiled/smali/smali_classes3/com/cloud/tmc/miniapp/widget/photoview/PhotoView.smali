.class public Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

.field public OooO0O0:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o()V

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO0O0:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO0O0:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method

.method public getAttacher()Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO0:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o:Z

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00;->OooO00o(FFF)V

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    invoke-static {v1, p1, v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00;->OooO00o(FFF)V

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    invoke-static {p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00;->OooO00o(FFF)V

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0O:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOoo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooO;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;

    return-void
.end method

.method public setOnViewDragListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;

    return-void
.end method

.method public setOnViewTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo00:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    return-void
.end method

.method public setScale(F)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO0O0:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00$OooO00o;->OooO00o:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v1, :cond_2

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix scale type is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo:Z

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    return-void
.end method
