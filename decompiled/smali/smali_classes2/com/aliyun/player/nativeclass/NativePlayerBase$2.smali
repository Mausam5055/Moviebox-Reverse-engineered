.class Lcom/aliyun/player/nativeclass/NativePlayerBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->snapShot()V
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

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    move-result-object v3

    new-instance v4, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase$2;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
