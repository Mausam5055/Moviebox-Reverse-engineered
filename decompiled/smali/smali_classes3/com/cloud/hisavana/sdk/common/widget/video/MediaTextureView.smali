.class public Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;
.super Landroid/view/TextureView;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public adaptVideoSize(II)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoWidth --->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaTextureView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoHeight --->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this.videoWidth --->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this.videoHeight --->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    if-eq v0, p2, :cond_0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    move v5, p2

    move p2, p1

    move p1, v5

    :cond_1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    if-lez v2, :cond_b

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    if-lez v2, :cond_b

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3

    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_2

    div-int v0, v1, v2

    :goto_0
    move v1, p2

    goto :goto_3

    :cond_2
    if-le v1, v3, :cond_8

    div-int v1, v3, v0

    :goto_1
    move v0, p1

    goto :goto_3

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    mul-int v2, p1, v0

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    div-int/2addr v2, v4

    if-ne v1, v3, :cond_4

    if-le v2, p2, :cond_4

    mul-int/2addr v4, p2

    div-int v0, v4, v0

    goto :goto_0

    :cond_4
    move v0, p1

    move v1, v2

    goto :goto_3

    :cond_5
    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    mul-int v2, p2, v1

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    div-int/2addr v2, v4

    if-ne v0, v3, :cond_6

    if-le v2, p1, :cond_6

    mul-int/2addr v4, p1

    div-int v1, v4, v1

    goto :goto_1

    :cond_6
    move v1, p2

    move v0, v2

    goto :goto_3

    :cond_7
    if-gtz p1, :cond_9

    if-lez p2, :cond_8

    goto :goto_2

    :cond_8
    move v0, p1

    goto :goto_0

    :cond_9
    :goto_2
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->b:I

    div-int v1, p1, v0

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->a:I

    div-int v3, p2, v2

    if-lt v1, v3, :cond_a

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    goto :goto_0

    :cond_a
    mul-int/2addr v2, p1

    div-int v1, v2, v0

    goto :goto_1

    :cond_b
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
