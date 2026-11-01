.class public Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;
.super Lcom/journeyapps/barcodescanner/ViewfinderView;


# static fields
.field public static final INT_ANIMATION_DELAY:J = 0xcL


# instance fields
.field public mBitmapPaint:Landroid/graphics/Paint;

.field public mLineColor:I

.field public mLineDepth:F

.field public mLineRate:F

.field public mLinearGradient:Landroid/graphics/LinearGradient;

.field public mPositions:[F

.field public mScanFrameHeight:F

.field public mScanFrameWidth:F

.field public mScanLineColor:[I

.field public mScanLineDepth:F

.field public mScanLineDy:F

.field public mScanLinePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->b(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLinePosition:I

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->b(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineDepth:F

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->b(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineDy:F

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mPositions:[F

    const/16 v0, -0x100

    filled-new-array {v1, v0, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineColor:[I

    sget-object v1, Lcom/transsion/transfer/R$styleable;->CustomViewfinderView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/transfer/R$styleable;->CustomViewfinderView_lineColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineColor:I

    iget-object p2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineColor:[I

    sget v1, Lcom/transsion/transfer/R$styleable;->CustomViewfinderView_cornerColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    sget p2, Lcom/transsion/transfer/R$styleable;->CustomViewfinderView_scanFrameWidth:I

    const/16 v0, 0xa0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanFrameWidth:F

    sget p2, Lcom/transsion/transfer/R$styleable;->CustomViewfinderView_scanFrameHeight:I

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->b(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanFrameHeight:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Lcom/journeyapps/barcodescanner/CameraPreview;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lxe/q;

    iget v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanFrameWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanFrameHeight:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lxe/q;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->setFramingRectSize(Lxe/q;)V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->getPreviewSize()Lxe/q;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->m:Lxe/q;

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->a()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->m:Lxe/q;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->d:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->c:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget-object v9, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v6, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v7, v3

    int-to-float v9, v2

    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    add-float v6, v1, v2

    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    int-to-float v1, v1

    iget v5, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    add-float/2addr v5, v1

    int-to-float v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v6, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v6

    add-float v6, v1, v2

    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v3

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    sub-float v5, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    int-to-float v7, v1

    int-to-float v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v3

    add-float v8, v1, v2

    iget-object v9, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v4, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    sub-float v4, v2, v4

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v4

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    add-float v5, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v3

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    sub-float v5, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineDepth:F

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLinePosition:I

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineDy:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLinePosition:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v1, v3, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLinePosition:I

    :cond_3
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLinePosition:I

    add-int v6, v3, v5

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-int/2addr v3, v5

    int-to-float v8, v3

    iget-object v9, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineColor:[I

    iget-object v10, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mPositions:[F

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLinePosition:I

    add-int v5, v1, v3

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/transfer/wifi/ui/CustomViewfinderView;->mScanLineDepth:F

    add-float v7, v1, v3

    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, p1, -0x6

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, p1, -0x6

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, p1, 0x6

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, p1, 0x6

    const-wide/16 v2, 0xc

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    :cond_4
    :goto_2
    return-void
.end method
