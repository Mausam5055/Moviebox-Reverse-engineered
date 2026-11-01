.class public Lcom/transsion/ninegridview/ImageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alreadyShow:I

.field public bigImageUrl:Ljava/lang/String;

.field public imageViewHeight:F

.field public imageViewWidth:F

.field public imageViewX:I

.field public imageViewY:I

.field public thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/ninegridview/ImageInfo;->alreadyShow:I

    return-void
.end method


# virtual methods
.method public getBigImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageViewHeight()F
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    return v0
.end method

.method public getImageViewWidth()F
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    return v0
.end method

.method public getImageViewX()I
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewX:I

    return v0
.end method

.method public getImageViewY()I
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewY:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBigImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageViewHeight(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    return-void
.end method

.method public setImageViewWidth(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    return-void
.end method

.method public setImageViewX(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewX:I

    return-void
.end method

.method public setImageViewY(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewY:I

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo{imageViewY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageViewX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageViewWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", imageViewHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bigImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnailUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
