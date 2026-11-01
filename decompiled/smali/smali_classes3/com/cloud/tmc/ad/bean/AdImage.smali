.class public Lcom/cloud/tmc/ad/bean/AdImage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adsDTO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field private bgPath:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private filePath:Ljava/lang/String;

.field private h:I

.field private imgUrl:Ljava/lang/String;

.field private isCached:Z

.field private mType:I

.field private mime:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    iput-object p2, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "ad"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public attachView(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public getBgPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->bgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getByteSize()I
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/ad/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getH()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->h:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->w:I

    return v0
.end method

.method public getmType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    return v0
.end method

.method public isAdImageRecycled()Z
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/ad/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    return v0
.end method

.method public setBgPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->bgPath:Ljava/lang/String;

    return-void
.end method

.method public setCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setH(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->h:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    return-void
.end method

.method public setW(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->w:I

    return-void
.end method

.method public setmType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    return-void
.end method
