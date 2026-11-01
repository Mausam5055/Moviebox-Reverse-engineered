.class public Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;
.super Ljava/lang/Object;


# instance fields
.field private mPositionRange:[J

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPositionRange()[J
    .locals 1

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mPositionRange:[J

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setPositionRange([J)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mPositionRange:[J

    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
