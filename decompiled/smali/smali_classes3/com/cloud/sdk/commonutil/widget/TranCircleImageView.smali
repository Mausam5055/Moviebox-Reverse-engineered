.class public Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;
.super Landroid/widget/ImageView;


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final CENTER:I = 0x1

.field public static final FITXY:I = 0x3

.field public static final TOP:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:Z

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V
    .locals 10

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    invoke-direct {p0, v1, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v1

    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    invoke-direct {p0, v2, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v2

    iget v3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    invoke-direct {p0, v3, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v3

    iget v4, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    invoke-direct {p0, v4, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v4

    iget v5, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    invoke-direct {p0, v5, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v5

    iget v6, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    invoke-direct {p0, v6, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v6

    iget v7, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    invoke-direct {p0, v7, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result v7

    iget v8, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    invoke-direct {p0, v8, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    move-result p4

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v1, 0x1

    aput v2, v8, v1

    const/4 v1, 0x2

    aput v3, v8, v1

    const/4 v1, 0x3

    aput v4, v8, v1

    const/4 v1, 0x4

    aput v5, v8, v1

    const/4 v1, 0x5

    aput v6, v8, v1

    const/4 v1, 0x6

    aput v7, v8, v1

    const/4 v1, 0x7

    aput p4, v8, v1

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, v8, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TranCircleImageView"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v1, v0, p3

    mul-int v2, p2, p1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput p1, v4, v6

    if-ne v1, v2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v5, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    :cond_0
    if-le v1, v2, :cond_1

    div-int/2addr v2, p3

    aput v2, v4, v5

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    div-int/2addr v1, p2

    aput v1, v4, v6

    :cond_2
    :goto_0
    aget p2, v4, v5

    if-le v0, p2, :cond_3

    move p2, v6

    goto :goto_1

    :cond_3
    move p2, v5

    :goto_1
    iget p3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->u:I

    if-eqz p3, :cond_f

    if-eq p3, v6, :cond_a

    if-eq p3, v3, :cond_5

    const/4 p2, 0x3

    if-eq p3, p2, :cond_4

    move p1, v5

    move v0, p1

    move v1, v0

    goto/16 :goto_b

    :cond_4
    move v1, v5

    goto/16 :goto_b

    :cond_5
    if-eqz p2, :cond_6

    aget p3, v4, v5

    sub-int p3, v0, p3

    div-int/2addr p3, v3

    goto :goto_2

    :cond_6
    move p3, v5

    :goto_2
    if-eqz p2, :cond_7

    move v1, v5

    goto :goto_3

    :cond_7
    aget v1, v4, v6

    sub-int v1, p1, v1

    :goto_3
    if-eqz p2, :cond_8

    aget v2, v4, v5

    add-int/2addr v0, v2

    div-int/2addr v0, v3

    goto :goto_4

    :cond_8
    aget v0, v4, v5

    :goto_4
    if-eqz p2, :cond_9

    aget p1, v4, v6

    :cond_9
    :goto_5
    move v5, p3

    goto :goto_b

    :cond_a
    if-eqz p2, :cond_b

    aget p3, v4, v5

    sub-int p3, v0, p3

    div-int/2addr p3, v3

    goto :goto_6

    :cond_b
    move p3, v5

    :goto_6
    if-eqz p2, :cond_c

    move v1, v5

    goto :goto_7

    :cond_c
    aget v1, v4, v6

    sub-int v1, p1, v1

    div-int/2addr v1, v3

    :goto_7
    if-eqz p2, :cond_d

    aget v2, v4, v5

    add-int/2addr v0, v2

    div-int/2addr v0, v3

    goto :goto_8

    :cond_d
    aget v0, v4, v5

    :goto_8
    if-eqz p2, :cond_e

    aget p1, v4, v6

    goto :goto_5

    :cond_e
    aget p2, v4, v6

    add-int/2addr p1, p2

    div-int/2addr p1, v3

    goto :goto_5

    :cond_f
    if-eqz p2, :cond_10

    aget p1, v4, v5

    sub-int p1, v0, p1

    div-int/2addr p1, v3

    goto :goto_9

    :cond_10
    move p1, v5

    :goto_9
    if-eqz p2, :cond_11

    aget p2, v4, v5

    add-int/2addr v0, p2

    div-int/2addr v0, v3

    goto :goto_a

    :cond_11
    aget p2, v4, v5

    move v0, p2

    :goto_a
    aget p2, v4, v6

    move v1, v5

    move v5, p1

    move p1, p2

    :goto_b
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v5, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a:Landroid/content/Context;

    sget-object v1, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_radiusYL:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->d:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topLeftRadiusYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topRightRadiusYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomLeftRadiusYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomRightRadiusYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_scaleTypeYL:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->u:I

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_borderWidthYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_borderSpaceYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_borderColorYL:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->s:I

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topLeftRadius_xYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topLeftRadius_yYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topRightRadius_xYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topRightRadius_yYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomLeftRadius_xYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomLeftRadius_yYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomRightRadius_xYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomRightRadius_yYL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->initData()V

    return-void
.end method

.method private f()V
    .locals 4

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->d:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    move v2, v0

    :cond_0
    iput v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_1

    move v2, v0

    :cond_1
    iput v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_2

    move v2, v0

    :cond_2
    iput v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    :cond_4
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_5

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    :cond_5
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_6

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    :cond_6
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_7

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    :cond_7
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_8

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    :cond_8
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_9

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    :cond_9
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_a

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    :cond_a
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_b

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    :cond_b
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    :cond_c
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    return-void
.end method

.method private g(FF)F
    .locals 0

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initData()V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f()V

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    iget v7, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v9, v3

    int-to-float v10, v5

    sub-int v11, v1, v4

    int-to-float v11, v11

    sub-int v12, v2, v6

    int-to-float v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v9, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v7, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v10, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v7, v10, v9}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    if-eqz v7, :cond_4

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v5, v5

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-int/2addr v2, v6

    int-to-float v2, v2

    invoke-direct {v7, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    sub-float v8, v1, v2

    :cond_1
    invoke-virtual {v7, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {p1, v7, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    iget-object v3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v7, v3, v8}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    iget-object v3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2
    invoke-direct {p0, v0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->d(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TranCircleImageView"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->s:I

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBorderSpace(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setBottomLeftRadius(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius_x(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius_y(F)V

    return-void
.end method

.method public setBottomLeftRadius_x(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    return-void
.end method

.method public setBottomLeftRadius_y(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    return-void
.end method

.method public setBottomRightRadius(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius_x(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius_y(F)V

    return-void
.end method

.method public setBottomRightRadius_x(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    return-void
.end method

.method public setBottomRightRadius_y(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius(F)V

    return-void
.end method

.method public setStyleType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->u:I

    return-void
.end method

.method public setTopLeftRadius(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius_x(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius_y(F)V

    return-void
.end method

.method public setTopLeftRadius_x(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    return-void
.end method

.method public setTopLeftRadius_y(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    return-void
.end method

.method public setTopRightRadius(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius_x(F)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius_y(F)V

    return-void
.end method

.method public setTopRightRadius_x(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    return-void
.end method

.method public setTopRightRadius_y(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    return-void
.end method
