.class public Lcom/bytedance/sdk/openadsdk/TKC/Sj;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;


# instance fields
.field private EjP:I

.field private Sj:Landroid/graphics/Paint;

.field private TKC:Z

.field private sP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj()V

    return-void
.end method

.method private Sj(FLjava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private Sj()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->sP:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj:Landroid/graphics/Paint;

    return-void
.end method

.method private Sj(Ljava/lang/String;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->TKC:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj(FLjava/lang/String;)F

    move-result v1

    :goto_0
    int-to-float v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->sP:F

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj(FLjava/lang/String;)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->TKC:Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->Sj(Ljava/lang/String;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->EjP:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->EjP:I

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->EjP:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->EjP:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Sj;->sP:F

    return-void
.end method
