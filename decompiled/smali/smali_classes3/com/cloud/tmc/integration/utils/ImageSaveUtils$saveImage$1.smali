.class public final Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/ImageSaveUtils;->saveImage(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;Landroid/graphics/Bitmap$CompressFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
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
.field final synthetic $saveImgCallback:Lcom/cloud/tmc/integration/callback/ISaveImgCallback;

.field final synthetic $src:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;->$src:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;->$saveImgCallback:Lcom/cloud/tmc/integration/callback/ISaveImgCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;->$saveImgCallback:Lcom/cloud/tmc/integration/callback/ISaveImgCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const-string v2, "no Permission"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/callback/ISaveImgCallback;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;->$src:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "MiniApp"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;->$saveImgCallback:Lcom/cloud/tmc/integration/callback/ISaveImgCallback;

    if-eqz v0, :cond_0

    const-string v1, "Image File NULL"

    invoke-interface {v0, v3, v1}, Lcom/cloud/tmc/integration/callback/ISaveImgCallback;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;->$saveImgCallback:Lcom/cloud/tmc/integration/callback/ISaveImgCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/callback/ISaveImgCallback;->onSuccess(Ljava/io/File;)V

    :cond_2
    return-void
.end method
