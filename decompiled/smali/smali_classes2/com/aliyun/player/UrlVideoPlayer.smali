.class public Lcom/aliyun/player/UrlVideoPlayer;
.super Lcom/aliyun/player/AVPBase;

# interfaces
.implements Lcom/aliyun/player/UrlPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    new-instance v0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;

    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/UrlSource;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    :cond_0
    return-void
.end method
