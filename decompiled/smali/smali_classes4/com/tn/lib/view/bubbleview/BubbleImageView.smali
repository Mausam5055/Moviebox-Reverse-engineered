.class public Lcom/tn/lib/view/bubbleview/BubbleImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Bitmap;

.field private h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->getBitmapFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getDrawable res can not be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tn/lib/widget/R$styleable;->BubbleView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowWidth:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->c:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowHeight:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->e:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_angle:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->d:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowPosition:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->f:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowLocation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowCenter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->i:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_0

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int v1, v0, v1

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/2addr v1, v2

    :cond_0
    if-lez v1, :cond_1

    if-gtz v0, :cond_1

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int v0, v1, v0

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/2addr v0, v2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->e(II)V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private e(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->f(IIII)V

    return-void
.end method

.method private f(IIII)V
    .locals 1

    if-le p2, p1, :cond_2

    if-gt p4, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p3, p3

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {v0, p1, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->g:Landroid/graphics/Bitmap;

    :cond_1
    new-instance p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    invoke-direct {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->d:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->e:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->c:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    sget-object p2, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->BITMAP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->f:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w(Landroid/graphics/Bitmap;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-boolean p2, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->i:Z

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method public static getBitmapFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    :try_start_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0, p4}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->dp2px(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, p4}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->dp2px(Landroid/content/Context;I)I

    move-result p0

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p0, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->d()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-gtz p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0, p2, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    if-gtz p2, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->e(II)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->g:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->d()V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->d()V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleImageView;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
