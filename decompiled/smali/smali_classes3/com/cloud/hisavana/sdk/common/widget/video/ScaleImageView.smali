.class public final Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u0008\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "videoWidth",
        "videoHeight",
        "",
        "setSize",
        "(II)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "d",
        "I",
        "e",
        "",
        "f",
        "Ljava/lang/String;",
        "TAG",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private d:I

.field private e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const-string p1, "ScaleImageView"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    move v6, p2

    move p2, p1

    move p1, v6

    :cond_1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    if-lez v2, :cond_b

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    if-lez v2, :cond_b

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widthSpecMode --->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heightSpecMode --->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    const-string v2, "onMeasure --->1"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widthSpecSize --->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " heightSpecSize--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_2

    div-int/2addr v1, v2

    move v0, v1

    :goto_1
    move v1, p2

    goto :goto_2

    :cond_2
    if-le v1, v3, :cond_3

    div-int/2addr v3, v0

    move v0, p1

    move v1, v3

    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width --->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    const-string v4, "onMeasure --->2"

    invoke-virtual {v0, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    mul-int v2, p1, v0

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    div-int/2addr v2, v4

    if-ne v1, v3, :cond_5

    if-le v2, p2, :cond_5

    mul-int/2addr v4, p2

    div-int v0, v4, v0

    :goto_3
    move v1, p2

    goto :goto_6

    :cond_5
    move v0, p1

    move v1, v2

    goto :goto_6

    :cond_6
    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    const-string v4, "onMeasure --->3"

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    mul-int v2, p2, v1

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    div-int/2addr v2, v4

    if-ne v0, v3, :cond_7

    if-le v2, p1, :cond_7

    mul-int/2addr v4, p1

    div-int v1, v4, v1

    :goto_4
    move v0, p1

    goto :goto_6

    :cond_7
    move v1, p2

    move v0, v2

    goto :goto_6

    :cond_8
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    if-ne v1, v3, :cond_9

    if-le v4, p2, :cond_9

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_5

    :cond_9
    move v1, v2

    move p2, v4

    :goto_5
    if-ne v0, v3, :cond_a

    if-le v1, p1, :cond_a

    mul-int/2addr v4, p1

    div-int v1, v4, v2

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setSize(II)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "    videoHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    if-eq v0, p2, :cond_0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
