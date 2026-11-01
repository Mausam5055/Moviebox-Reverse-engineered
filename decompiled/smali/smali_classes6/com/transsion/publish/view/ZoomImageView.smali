.class public Lcom/transsion/publish/view/ZoomImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Matrix;

.field private i:Landroid/view/ScaleGestureDetector;

.field private j:Landroid/view/GestureDetector;

.field private k:Z

.field private l:Landroid/animation/ValueAnimator;

.field private m:Landroid/widget/OverScroller;

.field private n:I

.field private o:I

.field private p:Landroid/animation/ValueAnimator;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/publish/view/ZoomImageView;->d:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/publish/view/ZoomImageView;->k:Z

    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->m:Landroid/widget/OverScroller;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/transsion/publish/view/ZoomImageView$a;

    invoke-direct {p3, p0}, Lcom/transsion/publish/view/ZoomImageView$a;-><init>(Lcom/transsion/publish/view/ZoomImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->i:Landroid/view/ScaleGestureDetector;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/transsion/publish/view/ZoomImageView$b;

    invoke-direct {p3, p0}, Lcom/transsion/publish/view/ZoomImageView$b;-><init>(Lcom/transsion/publish/view/ZoomImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->j:Landroid/view/GestureDetector;

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/publish/view/ZoomImageView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/publish/view/ZoomImageView;->n:I

    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/publish/view/ZoomImageView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/publish/view/ZoomImageView;->o:I

    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/publish/view/ZoomImageView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->m:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->p:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/publish/view/ZoomImageView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/ZoomImageView;->n:I

    return-void
.end method

.method private getDoubleDrowScale()F
    .locals 3

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    :cond_0
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    :cond_1
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    :cond_2
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->k:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->k:Z

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    :goto_1
    return v1
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v1
.end method

.method private getScale()F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static bridge synthetic h(Lcom/transsion/publish/view/ZoomImageView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/ZoomImageView;->o:I

    return-void
.end method

.method static bridge synthetic i(Lcom/transsion/publish/view/ZoomImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->p:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic k(Lcom/transsion/publish/view/ZoomImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    move-result p0

    return p0
.end method

.method static bridge synthetic l(Lcom/transsion/publish/view/ZoomImageView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/ZoomImageView;->o(FF)V

    return-void
.end method

.method static bridge synthetic m(Lcom/transsion/publish/view/ZoomImageView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/ZoomImageView;->p(FF)V

    return-void
.end method

.method static bridge synthetic n(Lcom/transsion/publish/view/ZoomImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->q()V

    return-void
.end method

.method private o(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getDoubleDrowScale()F

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V

    return-void
.end method

.method private p(FF)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    move p1, v2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    move p2, v2

    :cond_2
    cmpl-float v0, p1, v2

    if-nez v0, :cond_3

    cmpl-float v0, p2, v2

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->q()V

    return-void
.end method

.method private q()V
    .locals 12

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v8, 0x0

    cmpl-float v9, v5, v8

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    if-lez v9, :cond_2

    int-to-float v1, v1

    cmpl-float v6, v3, v1

    if-lez v6, :cond_1

    neg-float v1, v5

    goto :goto_0

    :cond_1
    mul-float/2addr v1, v11

    div-float/2addr v1, v10

    mul-float/2addr v3, v11

    div-float/2addr v3, v10

    add-float/2addr v3, v5

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    cmpg-float v9, v6, v1

    if-gez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_1

    sub-float/2addr v1, v6

    goto :goto_0

    :cond_3
    move v1, v8

    :goto_0
    cmpl-float v3, v7, v8

    if-lez v3, :cond_5

    int-to-float v0, v2

    cmpl-float v2, v4, v0

    if-lez v2, :cond_4

    neg-float v8, v7

    goto :goto_1

    :cond_4
    mul-float/2addr v0, v11

    div-float/2addr v0, v10

    mul-float/2addr v4, v11

    div-float/2addr v4, v10

    add-float/2addr v7, v4

    sub-float v8, v0, v7

    goto :goto_1

    :cond_5
    int-to-float v2, v2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_7

    cmpl-float v3, v4, v2

    if-lez v3, :cond_6

    sub-float v8, v2, v0

    goto :goto_1

    :cond_6
    mul-float/2addr v2, v11

    div-float/2addr v2, v10

    mul-float/2addr v4, v11

    div-float/2addr v4, v10

    add-float/2addr v7, v4

    sub-float v8, v2, v7

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private r(FFF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/publish/view/ZoomImageView$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/publish/view/ZoomImageView$c;-><init>(Lcom/transsion/publish/view/ZoomImageView;FF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-lez p1, :cond_2

    iget p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public canScrollVertically(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-lez p1, :cond_2

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->top:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->d:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v3, v0, :cond_1

    if-gt v2, v1, :cond_1

    int-to-float v5, v0

    mul-float/2addr v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-gt v3, v0, :cond_2

    if-le v2, v1, :cond_2

    int-to-float v5, v1

    mul-float/2addr v5, v4

    int-to-float v6, v2

    div-float/2addr v5, v6

    :cond_2
    if-gt v3, v0, :cond_3

    if-le v2, v1, :cond_4

    :cond_3
    if-lt v3, v0, :cond_5

    if-lt v2, v1, :cond_5

    :cond_4
    int-to-float v5, v0

    mul-float/2addr v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_5
    iput v5, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    iput v7, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v6

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->d:Z

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->i:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public scale(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->q()V

    return-void
.end method

.method public scaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->q:Landroid/view/View$OnClickListener;

    return-void
.end method
