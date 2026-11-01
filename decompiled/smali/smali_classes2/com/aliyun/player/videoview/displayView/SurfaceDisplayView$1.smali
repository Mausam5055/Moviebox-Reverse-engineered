.class Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;


# direct methods
.method constructor <init>(Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "surfaceChanged "

    invoke-static {p1, p2}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object p1, p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceSizeChanged()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceCreated(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "surfaceDestroyed "

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object p1, p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceDestroy()V

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "surfaceRedrawNeeded "

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
