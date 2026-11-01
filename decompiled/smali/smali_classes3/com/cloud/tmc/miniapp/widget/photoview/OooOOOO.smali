.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;,
        Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;
    }
.end annotation


# instance fields
.field public final OooO:Landroid/widget/ImageView;

.field public OooO00o:Landroid/view/animation/Interpolator;

.field public OooO0O0:I

.field public OooO0OO:F

.field public OooO0Oo:F

.field public OooO0o:Z

.field public OooO0o0:F

.field public OooO0oO:Z

.field public OooO0oo:Z

.field public OooOO0:Landroid/view/GestureDetector;

.field public OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

.field public final OooOO0o:Landroid/graphics/Matrix;

.field public final OooOOO:Landroid/graphics/Matrix;

.field public final OooOOO0:Landroid/graphics/Matrix;

.field public final OooOOOO:Landroid/graphics/RectF;

.field public final OooOOOo:[F

.field public OooOOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO;

.field public OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

.field public OooOOoo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;

.field public OooOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;

.field public OooOo0:Landroid/view/View$OnClickListener;

.field public OooOo00:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;

.field public OooOo0O:Landroid/view/View$OnLongClickListener;

.field public OooOo0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;

.field public OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

.field public OooOoO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;

.field public OooOoOO:I

.field public OooOoo:Z

.field public OooOoo0:I

.field public OooOooO:Landroid/widget/ImageView$ScaleType;

.field public OooOooo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oo:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO0:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOO:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOo:[F

    const/4 v1, 0x2

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0:Landroid/view/GestureDetector;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/widget/ImageView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final OooO00o(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOO:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOO:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOO:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final OooO00o()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;->OooO00o(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public OooO00o(FFFZ)V
    .locals 7

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    new-instance v6, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;FFFF)V

    invoke-virtual {p4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final OooO00o(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-int v0, v4

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0o;->OooO00o:[I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o()V

    return-void
.end method

.method public final OooO0O0(Landroid/widget/ImageView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final OooO0O0()Z
    .locals 13

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v5, v2, v4

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-gtz v5, :cond_3

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0o;->OooO00o:[I

    iget-object v12, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v5, v5, v12

    if-eq v5, v10, :cond_2

    if-eq v5, v8, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    :goto_1
    iput v10, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v2, v11

    if-lez v5, :cond_4

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    neg-float v4, v2

    goto :goto_2

    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_5

    iput v9, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    sub-float/2addr v4, v2

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    move v4, v11

    :goto_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_8

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0o;->OooO00o:[I

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v10, :cond_7

    if-eq v1, v8, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v11, v2

    goto :goto_4

    :cond_6
    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v11, v0

    :goto_4
    iput v10, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    goto :goto_5

    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v11

    if-lez v5, :cond_9

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    neg-float v11, v3

    goto :goto_5

    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v11, v2, v0

    iput v9, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    goto :goto_5

    :cond_a
    iput v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    :goto_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {v0, v11, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method public OooO0OO()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0()Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0Oo()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO0:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO0:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO0:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final OooO0o()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;->OooO00o(Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0()Z

    return-void
.end method

.method public OooO0o0()F
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOo:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOo:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOo:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOOo:[F

    const/4 v4, 0x3

    aget v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public OooO0oO()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o()V

    :goto_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v0

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v5

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move p1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v0

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v5

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    invoke-virtual {p1, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    if-eqz v0, :cond_8

    iget-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    :try_start_0
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move p1, v2

    goto :goto_5

    :cond_7
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO:Z

    move p1, v2

    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    move p1, v2

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-le p2, v2, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oo:Z

    move v1, p1

    :cond_b
    return v1
.end method
