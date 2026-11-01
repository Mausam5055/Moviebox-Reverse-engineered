.class Lcom/google/firebase/services$CenterCropDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "services.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x28
    name = "CenterCropDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:F

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FII)V
    .locals 1

    .line 513
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRect:Landroid/graphics/RectF;

    .line 514
    iput-object p1, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 515
    iput p2, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRadius:F

    .line 516
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/services$CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    .line 517
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 518
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 519
    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 520
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/google/firebase/services$CenterCropDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 526
    nop

    .line 527
    const/4 v1, 0x0

    int-to-float v1, v1

    .line 528
    iget-object v2, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 530
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    mul-float v0, v0, v4

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 533
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    mul-float v0, v0, v4

    move v3, v2

    move v2, v0

    move v0, v1

    .line 535
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 536
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 537
    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 538
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 539
    invoke-virtual {v0, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 540
    iget-object v2, p0, Lcom/google/firebase/services$CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 541
    iget-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRadius:F

    iget-object v3, p0, Lcom/google/firebase/services$CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 542
    iget-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 544
    iget-object v1, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 545
    iget-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/firebase/services$CenterCropDrawable;->mRadius:F

    iget-object v2, p0, Lcom/google/firebase/services$CenterCropDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 550
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/firebase/services$CenterCropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
