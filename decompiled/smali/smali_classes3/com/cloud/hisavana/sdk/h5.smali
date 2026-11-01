.class public Lcom/cloud/hisavana/sdk/h5;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lcom/cloud/hisavana/sdk/d5;Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v3, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->b:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-gtz p1, :cond_2

    return v0

    :cond_2
    const-wide/16 p1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, v3

    long-to-int p1, v1

    return p1

    :cond_3
    :goto_0
    return v0
.end method
