.class public Lcom/aliyun/player/videoview/displayView/TextureDisplayView;
.super Lcom/aliyun/player/videoview/displayView/IDisplayView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mReuseSurface:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;-><init>(Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    return p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private adjustPhotoRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    new-instance p1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;

    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method protected mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
    .locals 3

    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setSurfaceReuse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    return-void
.end method

.method protected snapRenderView()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->adjustPhotoRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method
