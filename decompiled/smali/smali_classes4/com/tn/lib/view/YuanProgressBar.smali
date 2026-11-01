.class public Lcom/tn/lib/view/YuanProgressBar;
.super Landroidx/appcompat/widget/AppCompatButton;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    const-string v1, "#99ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/YuanProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    const-string v1, "#99ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/YuanProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x64

    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    const-string v0, "#99ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/YuanProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    if-nez v0, :cond_0

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    :cond_0
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->g:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    :cond_2
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    :cond_3
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->b:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    int-to-float v1, v1

    div-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    const-string v3, "#2f9ceb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v5}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_insideColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_circleColor:I

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_yuan_progressColor:I

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_yuanCircleStrokeWidth:I

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_yuanProgressStrokeWidth:I

    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/tn/lib/view/YuanProgressBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x2

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/YuanProgressBar;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    sget-object p4, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p4, p3, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setColorNetDetect()V
    .locals 1

    const-string v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    const-string v0, "#3ECAF2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iput p1, p0, Lcom/tn/lib/view/YuanProgressBar;->b:F

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method
