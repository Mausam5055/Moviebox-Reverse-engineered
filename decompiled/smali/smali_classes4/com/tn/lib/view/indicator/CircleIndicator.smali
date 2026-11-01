.class public Lcom/tn/lib/view/indicator/CircleIndicator;
.super Lcom/tn/lib/view/indicator/BaseIndicator;


# instance fields
.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/indicator/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/indicator/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/indicator/BaseIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->e:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_5

    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->a()I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Lcom/tn/lib/view/indicator/a;->j()I

    move-result v7

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/tn/lib/view/indicator/a;->g()I

    move-result v7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result v6

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result v6

    :goto_3
    if-eqz v5, :cond_4

    iget v5, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->e:I

    goto :goto_4

    :cond_4
    iget v5, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    :goto_4
    int-to-float v5, v5

    add-float v7, v3, v5

    iget v8, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->f:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->e()I

    move-result v5

    add-int/2addr v6, v5

    int-to-float v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->d()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->e:I

    iget v1, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->f:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p2}, Lcom/tn/lib/view/indicator/a;->e()I

    move-result p2

    mul-int/2addr p2, p1

    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result p1

    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
