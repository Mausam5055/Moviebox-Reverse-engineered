.class public final Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2",
        "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;",
        "onLoadFailed",
        "",
        "errMsg",
        "",
        "onLoadSuccess",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;->this$0:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;->this$0:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

    const-string v0, "load image failed: I10002"

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->access$notifyError(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;->this$0:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->getFrameLayout()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;->this$0:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;

    invoke-static {p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->access$notifyLoad(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V

    return-void
.end method
