.class public Lcom/transsion/baseui/widget/i;
.super Landroid/view/ViewOutlineProvider;


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/baseui/widget/i;->b:I

    iput p1, p0, Lcom/transsion/baseui/widget/i;->a:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lcom/transsion/baseui/widget/i;->b:I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-direct {v1, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/high16 v5, -0x40000000    # -2.0f

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    mul-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {v1, v2, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-direct {v1, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    mul-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {v1, v4, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget p1, p0, Lcom/transsion/baseui/widget/i;->a:F

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
