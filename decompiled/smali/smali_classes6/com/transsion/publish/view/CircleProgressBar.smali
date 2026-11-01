.class public Lcom/transsion/publish/view/CircleProgressBar;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->i:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/transsion/publish/view/CircleProgressBar;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/transsion/publish/R$styleable;->CircleProgressbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$styleable;->CircleProgressbar_ra:I

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/publish/view/CircleProgressBar;->e:F

    sget p2, Lcom/transsion/publish/R$styleable;->CircleProgressbar_strokesWidth:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/publish/view/CircleProgressBar;->f:F

    sget p2, Lcom/transsion/publish/R$styleable;->CircleProgressbar_ringsColor:I

    const/high16 v0, 0xff0000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/publish/view/CircleProgressBar;->c:I

    sget p2, Lcom/transsion/publish/R$styleable;->CircleProgressbar_textsColor:I

    const v0, 0xffffff

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/publish/view/CircleProgressBar;->d:I

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/publish/view/CircleProgressBar;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/publish/view/CircleProgressBar;->f:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/publish/view/CircleProgressBar;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/publish/view/CircleProgressBar;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->h:I

    if-ltz v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/publish/view/CircleProgressBar;->e:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/publish/view/CircleProgressBar;->e:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/publish/view/CircleProgressBar;->e:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/publish/view/CircleProgressBar;->e:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/transsion/publish/view/CircleProgressBar;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/publish/view/CircleProgressBar;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v4, v1, v2

    iget-object v6, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/CircleProgressBar;->h:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRingColor(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/publish/view/CircleProgressBar;->c:I

    iget-object v0, p0, Lcom/transsion/publish/view/CircleProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
