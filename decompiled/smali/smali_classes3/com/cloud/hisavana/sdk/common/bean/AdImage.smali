.class public Lcom/cloud/hisavana/sdk/common/bean/AdImage;
.super Ljava/lang/Object;


# static fields
.field private static allowBlurBackground:Z


# instance fields
.field private bgPath:Ljava/lang/String;

.field private blurBgBitmap:Landroid/graphics/Bitmap;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private filePath:Ljava/lang/String;

.field private h:I

.field private imgUrl:Ljava/lang/String;

.field private isCached:Z

.field private mType:I

.field private mime:I

.field private needBlurBackground:Z

.field public preCache:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->needBlurBackground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->preCache:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mType:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->needBlurBackground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->preCache:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mType:I

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mime:I

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->needBlurBackground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->preCache:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mType:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mime:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

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

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static setAllowBlurBackground(Z)V
    .locals 0

    sput-boolean p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->allowBlurBackground:Z

    return-void
.end method


# virtual methods
.method public attachView(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ll7/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->allowBlurBackground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->needBlurBackground:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;-><init>(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->blurBgBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getBgPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->bgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getByteSize()I
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getH()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->h:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mime:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->w:I

    return v0
.end method

.method public getmType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mType:I

    return v0
.end method

.method public isAdImageRecycled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    return v0
.end method

.method public isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached:Z

    return v0
.end method

.method public setBgPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->bgPath:Ljava/lang/String;

    return-void
.end method

.method public setCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached:Z

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setH(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->h:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mime:I

    return-void
.end method

.method public setNeedBlurBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->needBlurBackground:Z

    return-void
.end method

.method public setW(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->w:I

    return-void
.end method

.method public setmType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->mType:I

    return-void
.end method
