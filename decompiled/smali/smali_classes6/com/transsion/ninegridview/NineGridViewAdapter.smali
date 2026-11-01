.class public abstract Lcom/transsion/ninegridview/NineGridViewAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected context:Landroid/content/Context;

.field private imageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->imageInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Lcom/transsion/ninegridview/NineGridViewWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/ninegridview/NineGridViewWrapper;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p1, Lcom/transsion/ninegridview/R$drawable;->ic_default_color:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-object v0
.end method

.method public getImageInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->imageInfo:Ljava/util/List;

    return-object v0
.end method

.method protected onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridView;ILjava/util/List;)V
    .locals 0
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

    return-void
.end method

.method protected onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridViewNew;ILjava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public setImageInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridViewAdapter;->imageInfo:Ljava/util/List;

    return-void
.end method
