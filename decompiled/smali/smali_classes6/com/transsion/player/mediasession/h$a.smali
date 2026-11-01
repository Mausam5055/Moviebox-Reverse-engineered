.class public final Lcom/transsion/player/mediasession/h$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/mediasession/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-static {v0}, Lcom/transsion/player/mediasession/h;->a(Lcom/transsion/player/mediasession/h;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> loadAlbum --> onLoadCleared() ---> \u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-static {v0}, Lcom/transsion/player/mediasession/h;->a(Lcom/transsion/player/mediasession/h;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadAlbum --> onLoadFailed() ---> \u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/player/R$mipmap;->player_ic_notification_icon:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/player/mediasession/h;->g(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/transsion/player/mediasession/h;->f()Lcom/transsion/player/mediasession/MediaService;

    move-result-object p1

    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v1

    invoke-static {}, Lcom/transsion/player/mediasession/h;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/transsion/player/mediasession/h;->d()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/transsion/player/mediasession/h;->o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/player/mediasession/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/transsion/player/mediasession/h;->g(Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-static {}, Lcom/transsion/player/mediasession/h;->f()Lcom/transsion/player/mediasession/MediaService;

    move-result-object p2

    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    invoke-static {}, Lcom/transsion/player/mediasession/h;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/transsion/player/mediasession/h;->d()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsion/player/mediasession/h;->o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/mediasession/h$a;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
