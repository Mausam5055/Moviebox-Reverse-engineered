.class public Lcom/cloud/hisavana/sdk/i5;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lcom/cloud/hisavana/sdk/d5;Landroid/view/View;)I
    .locals 7

    const/4 v0, 0x2

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-long v5, p2

    mul-long/2addr v3, v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->b:Ljava/lang/String;

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2

    return v0

    :cond_2
    iget p1, p1, Lcom/cloud/hisavana/sdk/d5;->b:I

    int-to-long p1, p1

    cmp-long p1, v1, p1

    if-ltz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method
