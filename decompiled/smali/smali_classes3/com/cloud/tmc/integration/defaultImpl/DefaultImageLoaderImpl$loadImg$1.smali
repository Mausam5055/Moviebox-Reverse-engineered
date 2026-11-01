.class public final Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImg$1;
.super Lcom/bumptech/glide/request/target/CustomViewTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomViewTarget<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0014J\"\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00032\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0003\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImg$1",
        "Lcom/bumptech/glide/request/target/CustomViewTarget;",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/drawable/Drawable;",
        "onLoadFailed",
        "",
        "errorDrawable",
        "onResourceCleared",
        "placeholder",
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
.field final synthetic $listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImg$1;->$listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImg$1;->$listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;

    if-eqz p1, :cond_0

    const-string v0, "error"

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;->onLoadFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "[DefaultImageLoaderImpl]: loadImg"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResourceCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImg$1;->$listener:Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;->onLoadSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "[DefaultImageLoaderImpl]: loadImg"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImg$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
