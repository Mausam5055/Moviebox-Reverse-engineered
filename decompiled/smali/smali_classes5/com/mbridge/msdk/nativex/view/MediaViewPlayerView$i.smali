.class Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_5

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    goto :goto_5

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_5

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaViewPlayerView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->isPlayIng()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$i;->a:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "MediaViewPlayerView"

    const-string p2, "onSurfaceTextureSizeChanged "

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
