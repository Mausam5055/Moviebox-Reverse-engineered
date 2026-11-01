.class public Lcom/warkiz/widget/CircleBubbleView;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Landroid/content/Context;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;FIILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->d:Landroid/content/Context;

    iput p2, p0, Lcom/warkiz/widget/CircleBubbleView;->c:F

    iput p3, p0, Lcom/warkiz/widget/CircleBubbleView;->a:I

    iput p4, p0, Lcom/warkiz/widget/CircleBubbleView;->b:I

    invoke-direct {p0, p5}, Lcom/warkiz/widget/CircleBubbleView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->d:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    iget-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->d:Landroid/content/Context;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {p1, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    move-result p1

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    int-to-float p1, p1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->i:F

    iget p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    invoke-direct {p0}, Lcom/warkiz/widget/CircleBubbleView;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->j:Ljava/lang/String;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    div-float/2addr v3, v2

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->i:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    float-to-int p1, p1

    iget p2, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method setProgress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
