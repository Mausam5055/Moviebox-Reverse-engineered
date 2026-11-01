.class public Lcom/tn/lib/view/CircleProgressBar;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tn/lib/view/CircleProgressBar;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tn/lib/view/CircleProgressBar;->k:I

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/tn/lib/view/CircleProgressBar;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressRadius:I

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressStrokesWidth:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/CircleProgressBar;->h:F

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressBgColor:I

    const v0, 0xeeeeee

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/CircleProgressBar;->d:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressRingsColor:I

    const v0, 0xff5abf

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/CircleProgressBar;->e:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressTextsColor:I

    const v0, 0xffffff

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/CircleProgressBar;->f:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressMax:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/CircleProgressBar;->i:I

    sget p2, Lcom/tn/lib/widget/R$styleable;->CircleProgressbar_progressCurrent:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/tn/lib/view/CircleProgressBar;->j:I

    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tn/lib/view/CircleProgressBar;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/tn/lib/view/CircleProgressBar;->h:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    iget v4, p0, Lcom/tn/lib/view/CircleProgressBar;->e:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tn/lib/view/CircleProgressBar;->h:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/CircleProgressBar;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    iget-object v3, p0, Lcom/tn/lib/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tn/lib/view/CircleProgressBar;->j:I

    if-ltz v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/tn/lib/view/CircleProgressBar;->g:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/tn/lib/view/CircleProgressBar;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/CircleProgressBar;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v4, v1, v2

    iget-object v6, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/CircleProgressBar;->i:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/CircleProgressBar;->j:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRingColor(I)V
    .locals 1

    iput p1, p0, Lcom/tn/lib/view/CircleProgressBar;->e:I

    iget-object v0, p0, Lcom/tn/lib/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
