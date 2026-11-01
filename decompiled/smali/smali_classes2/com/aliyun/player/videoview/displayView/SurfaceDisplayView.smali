.class public Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;
.super Lcom/aliyun/player/videoview/displayView/IDisplayView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;-><init>(Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method protected mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSurfaceReuse(Z)V
    .locals 0

    return-void
.end method

.method protected snapRenderView()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
