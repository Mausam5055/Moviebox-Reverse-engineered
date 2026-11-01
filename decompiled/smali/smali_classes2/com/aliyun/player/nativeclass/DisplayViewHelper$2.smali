.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field final synthetic val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceCreated(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onSurfaceCreated()V

    :cond_1
    return-void
.end method

.method public onSurfaceDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onSurfaceDestroy()V

    :cond_1
    return-void
.end method

.method public onSurfaceSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceSizeChanged()V

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onSurfaceSizeChanged()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0

    return-void
.end method
