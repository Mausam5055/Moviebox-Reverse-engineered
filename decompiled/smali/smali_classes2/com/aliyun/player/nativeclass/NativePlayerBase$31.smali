.class Lcom/aliyun/player/nativeclass/NativePlayerBase$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1900(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1900(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->surfaceChanged()V

    return-void
.end method

.method public onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0

    return-void
.end method
