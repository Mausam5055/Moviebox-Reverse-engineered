.class public abstract Lcom/aliyun/player/videoview/displayView/IDisplayView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildView:Landroid/view/View;

.field private mDirectRender:Z

.field private mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

.field protected mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

.field private final mParent:Landroid/view/ViewGroup;

.field private mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mVideoHeight:I

.field private mVideoRotate:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    iput-boolean v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    sget-object p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new IDisplayView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->updateViewParams()V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    return-object p0
.end method

.method static synthetic access$400(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    return-object p0
.end method

.method static synthetic access$800(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private saveToSdcard(Landroid/graphics/Bitmap;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    sget-object p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    :cond_0
    return-void
.end method

.method private setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    :cond_0
    return-void
.end method

.method private setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    :cond_0
    return-void
.end method

.method private updateViewParams()V
    .locals 8

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, "updateViewParams  "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eqz v1, :cond_c

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v0}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    float-to-int v0, v4

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_5
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    if-ne v0, v4, :cond_6

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    mul-int v4, v0, v3

    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    mul-int v7, v1, v6

    if-le v4, v7, :cond_7

    :goto_0
    int-to-float v1, v3

    mul-float/2addr v1, v5

    int-to-float v0, v0

    mul-float/2addr v1, v0

    int-to-float v0, v6

    div-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_2

    :cond_7
    mul-int v4, v0, v3

    mul-int v7, v1, v6

    if-ge v4, v7, :cond_a

    :goto_1
    int-to-float v3, v1

    mul-float/2addr v3, v5

    int-to-float v4, v6

    mul-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-int v3, v3

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    mul-int v4, v0, v3

    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    mul-int v7, v1, v6

    if-ge v4, v7, :cond_9

    goto :goto_0

    :cond_9
    mul-int v4, v0, v3

    mul-int v7, v1, v6

    if-le v4, v7, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-void

    :cond_c
    :goto_3
    const-string v1, "updateViewParams \uff0cunknow parent height and width "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_4
    const-string v1, "updateViewParams \uff0cunknow videoheight and width "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attachView()V
    .locals 2

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, " attachView"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachView()V
    .locals 2

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, " detachView"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract getRenderView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public initView()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    return-void
.end method

.method protected abstract mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
.end method

.method public parentSizeChanged()V
    .locals 2

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, "parentSizeChanged  "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$1;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirrorMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    new-instance v1, Lcom/aliyun/player/videoview/displayView/IDisplayView$5;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$5;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setOnViewStatusListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    return-void
.end method

.method public setRenderFlag(Z)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderFlag  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    new-instance p1, Lcom/aliyun/player/videoview/displayView/IDisplayView$2;

    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$2;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotateMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V

    invoke-direct {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->updateViewParams()V

    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScaleMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    new-instance p1, Lcom/aliyun/player/videoview/displayView/IDisplayView$4;

    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$4;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract setSurfaceReuse(Z)V
.end method

.method public setVideoSize(III)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoSize  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \uff0c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    iput p2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    iput p3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    new-instance p1, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;

    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract snapRenderView()Landroid/graphics/Bitmap;
.end method

.method public snapShot()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->snapRenderView()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
