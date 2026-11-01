.class public Lcom/bytedance/sdk/openadsdk/core/widget/Ym;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;


# instance fields
.field public Sj:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->Sj:F

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->Sj:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, -0x2

    if-ne v2, v6, :cond_0

    int-to-float p1, p2

    mul-float/2addr p1, v4

    float-to-int p1, p1

    move v0, v5

    goto :goto_0

    :cond_0
    if-ne v3, v6, :cond_1

    int-to-float p2, p1

    div-float/2addr p2, v4

    float-to-int p2, p2

    move v1, v5

    :cond_1
    :goto_0
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->onMeasure(II)V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->Sj:F

    return-void
.end method
