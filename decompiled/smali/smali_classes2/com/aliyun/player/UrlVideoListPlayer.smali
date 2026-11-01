.class public Lcom/aliyun/player/UrlVideoListPlayer;
.super Lcom/aliyun/player/AVPLBase;

# interfaces
.implements Lcom/aliyun/player/UrlListPlayer;
.implements Lcom/aliyun/player/UrlPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePlayerBase_UrlVideoListPlayer"


# instance fields
.field private mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPLBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    return-void
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_UrlVideoListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->addUrl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected createListPlayer(Landroid/content/Context;Ljava/lang/String;J)Lcom/aliyun/player/nativeclass/JniListPlayerBase;
    .locals 0

    new-instance p2, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    invoke-direct {p2, p1, p3, p4}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;-><init>(Landroid/content/Context;J)V

    return-object p2
.end method

.method protected getNativePlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/IPlayer;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aliyun/player/UrlVideoPlayer;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/player/UrlVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    return-object p1
.end method

.method public moveTo(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_UrlVideoListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->moveTo(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveToNext()Z
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    if-eqz v1, :cond_0

    const-string v1, "NativePlayerBase_UrlVideoListPlayer"

    const-string v2, "moveToNext  "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->moveToNext()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPrev()Z
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    if-eqz v1, :cond_0

    const-string v1, "NativePlayerBase_UrlVideoListPlayer"

    const-string v2, "moveToPrev  "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->moveToPrev()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/UrlPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/UrlPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/UrlSource;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/UrlPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/UrlPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    :cond_0
    return-void
.end method
