.class public final Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1;
.super Landroidx/vectordrawable/graphics/drawable/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1",
        "Landroidx/vectordrawable/graphics/drawable/b;",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "",
        "onAnimationEnd",
        "(Landroid/graphics/drawable/Drawable;)V",
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
.field final synthetic $onAnimationEnd:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_run:Lcom/bumptech/glide/load/resource/gif/GifDrawable;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1;->$onAnimationEnd:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1;->$this_run:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/b;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1;->$onAnimationEnd:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1;->$this_run:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/b;)Z

    return-void
.end method
