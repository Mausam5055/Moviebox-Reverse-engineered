.class Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$2;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$2;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player;->getVideoComponent()Lcom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBVideoView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
