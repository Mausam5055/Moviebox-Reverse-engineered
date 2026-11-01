.class public final Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgBitmapNoRound$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;->loadImgBitmapNoRound(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\"\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00022\u0010\u0010\t\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgBitmapNoRound$1",
        "Lcom/bumptech/glide/request/target/SimpleTarget;",
        "Landroid/graphics/Bitmap;",
        "onLoadFailed",
        "",
        "errorDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "onResourceReady",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
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
.field final synthetic $listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgBitmapNoRound$1;->$listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgBitmapNoRound$1;->$listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;

    if-eqz p1, :cond_0

    const-string v0, "load failed"

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;->onLoadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgBitmapNoRound$1;->$listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;->onLoadSuccess(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgBitmapNoRound$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
