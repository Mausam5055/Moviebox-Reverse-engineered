.class public Lcom/tn/lib/view/indicator/BannerIndicator;
.super Lcom/tn/lib/view/indicator/BaseIndicator;


# instance fields
.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/indicator/BannerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/indicator/BannerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/indicator/BaseIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tn/lib/view/indicator/BannerIndicator;->d:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

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

    move v12, v2

    :goto_0
    if-ge v12, v0, :cond_5

    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->a()I

    move-result v4

    if-ne v4, v12, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->j()I

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->g()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result v5

    :goto_3
    move v13, v5

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result v5

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_4

    int-to-float v4, v13

    add-float v7, v3, v4

    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result v4

    int-to-float v8, v4

    iget v10, p0, Lcom/tn/lib/view/indicator/BannerIndicator;->d:F

    iget-object v11, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    move v5, v3

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_4
    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v5, v3, v4

    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5
    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->e()I

    move-result v4

    add-int/2addr v13, v4

    int-to-float v4, v13

    add-float/2addr v3, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->d()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
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

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
