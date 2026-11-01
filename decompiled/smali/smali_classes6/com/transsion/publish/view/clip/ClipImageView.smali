.class public Lcom/transsion/publish/view/clip/ClipImageView;
.super Lcom/transsion/publish/view/clip/BaseClipImageView;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;
    }
.end annotation


# static fields
.field public static SCALE_MAX:F = 4.0f

.field private static t:F = 2.0f


# instance fields
.field private d:F

.field private e:Z

.field private final f:[F

.field private g:Landroid/view/ScaleGestureDetector;

.field private final h:Landroid/graphics/Matrix;

.field private i:Landroid/view/GestureDetector;

.field private j:Z

.field private k:I

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/clip/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/clip/BaseClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->e:Z

    const/16 p2, 0x9

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->f:[F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->g:Landroid/view/ScaleGestureDetector;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    const/16 p2, 0x10

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/transsion/publish/view/clip/ClipImageView$a;

    invoke-direct {v0, p0}, Lcom/transsion/publish/view/clip/ClipImageView$a;-><init>(Lcom/transsion/publish/view/clip/ClipImageView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->i:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->g:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/publish/view/clip/ClipImageView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/publish/view/clip/ClipImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->j:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/publish/view/clip/ClipImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/publish/view/clip/ClipImageView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->j:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/transsion/publish/view/clip/ClipImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->g()V

    return-void
.end method

.method static bridge synthetic f()F
    .locals 1

    sget v0, Lcom/transsion/publish/view/clip/ClipImageView;->t:F

    return v0
.end method

.method private g()V
    .locals 10

    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v3, v5

    iget v7, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v8, v7, 0x2

    sub-int v8, v1, v8

    int-to-double v8, v8

    cmpl-double v3, v3, v8

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    neg-float v3, v3

    int-to-float v8, v7

    add-float/2addr v3, v8

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-int v9, v1, v7

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    sub-int/2addr v1, v7

    int-to-float v1, v1

    sub-float v3, v1, v8

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v7, v1

    add-double/2addr v7, v5

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    mul-int/lit8 v5, v1, 0x2

    sub-int v5, v2, v5

    int-to-double v5, v5

    cmpl-double v5, v7, v5

    if-ltz v5, :cond_4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    int-to-float v6, v1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    neg-float v4, v5

    int-to-float v5, v1

    add-float/2addr v4, v5

    :cond_3
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-int v5, v2, v1

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    sub-int/2addr v2, v1

    int-to-float v1, v2

    sub-float v4, v1, v0

    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v1
.end method

.method private h(FF)Z
    .locals 2

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->k:I

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/publish/view/clip/ClipImageView;->clip(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public clip(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_0

    iget p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v0, p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getScale()F
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
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

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->q:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->q:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->r:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sput v6, Lcom/transsion/publish/view/clip/ClipImageView;->t:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    sput v6, Lcom/transsion/publish/view/clip/ClipImageView;->SCALE_MAX:F

    iget-object v6, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    sub-float/2addr v2, v0

    div-float/2addr v2, v5

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->e:Z

    :cond_2
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    sget v2, Lcom/transsion/publish/view/clip/ClipImageView;->SCALE_MAX:F

    cmpg-float v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_1

    cmpl-float v4, v1, v5

    if-gtz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    cmpg-float v4, v1, v5

    if-gez v4, :cond_5

    :cond_2
    mul-float v4, v1, v0

    iget v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    div-float v1, v5, v0

    :cond_3
    mul-float v4, v1, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    div-float v1, v2, v0

    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->g()V

    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->i:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->g:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->o:I

    if-eq p1, v3, :cond_2

    iput-boolean v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    iput v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->l:F

    iput v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->m:F

    :cond_2
    iput p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->o:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_8

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->l:F

    sub-float p1, v4, p1

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->m:F

    sub-float v1, v5, v1

    iget-boolean v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    if-nez v3, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/transsion/publish/view/clip/ClipImageView;->h(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    :cond_4
    iget-boolean v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/2addr v8, p2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    move p1, v2

    :cond_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    mul-int/2addr v7, p2

    sub-int/2addr v6, v7

    int-to-float p2, v6

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    iget-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->g()V

    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_7
    iput v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->l:F

    iput v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->m:F

    goto :goto_2

    :cond_8
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->o:I

    :goto_2
    return v0
.end method

.method public setCropWH(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->q:I

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->r:I

    return-void
.end method
