.class Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "MBVideoView"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    long-to-float v5, v3

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->a(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/dycreator/baseview/videoview/listener/VideoViewEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-static {v3}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->a(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/dycreator/baseview/videoview/listener/VideoViewEventListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/mbridge/msdk/dycreator/baseview/videoview/listener/VideoViewEventListener;->onPlayProgress(II)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method
