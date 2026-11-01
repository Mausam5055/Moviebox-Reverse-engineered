.class public Lcom/transsion/ninegridview/preview/NineGridViewClickAdapter;
.super Lcom/transsion/ninegridview/NineGridViewAdapter;


# instance fields
.field private statusHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/transsion/ninegridview/NineGridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p1

    iput p1, p0, Lcom/transsion/ninegridview/preview/NineGridViewClickAdapter;->statusHeight:I

    return-void
.end method


# virtual methods
.method public getStatusHeight(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridView;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ninegridview/NineGridView;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ninegridview/ImageInfo;

    invoke-virtual {p2}, Lcom/transsion/ninegridview/NineGridView;->getMaxSize()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ninegridview/NineGridView;->getMaxSize()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v5, v0

    iput v3, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewX:I

    aget v3, v5, v4

    iget v4, p0, Lcom/transsion/ninegridview/preview/NineGridViewClickAdapter;->statusHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewY:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IMAGE_INFO"

    check-cast p4, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p4, "CURRENT_ITEM"

    invoke-virtual {v0, p4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridViewNew;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ninegridview/NineGridViewNew;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ninegridview/ImageInfo;

    invoke-virtual {p2}, Lcom/transsion/ninegridview/NineGridViewNew;->getMaxSize()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ninegridview/NineGridViewNew;->getMaxSize()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v5, v0

    iput v3, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewX:I

    aget v3, v5, v4

    iget v4, p0, Lcom/transsion/ninegridview/preview/NineGridViewClickAdapter;->statusHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ninegridview/ImageInfo;->imageViewY:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IMAGE_INFO"

    check-cast p4, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p4, "CURRENT_ITEM"

    invoke-virtual {v0, p4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
