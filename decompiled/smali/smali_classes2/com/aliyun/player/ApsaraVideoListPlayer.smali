.class Lcom/aliyun/player/ApsaraVideoListPlayer;
.super Lcom/aliyun/player/UrlVideoListPlayer;

# interfaces
.implements Lcom/aliyun/player/AliListPlayer;
.implements Lcom/aliyun/player/AliPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePlayerBase_ApsaraVideListPlayer"


# instance fields
.field private mSaasVideoPlayer:Lcom/aliyun/player/ApsaraVideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/UrlVideoListPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoListPlayer;->mSaasVideoPlayer:Lcom/aliyun/player/ApsaraVideoPlayer;

    return-void
.end method


# virtual methods
.method public addVid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->addVid(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected createListPlayer(Landroid/content/Context;Ljava/lang/String;J)Lcom/aliyun/player/nativeclass/JniListPlayerBase;
    .locals 0

    new-instance p2, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-direct {p2, p1, p3, p4}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;-><init>(Landroid/content/Context;J)V

    return-object p2
.end method

.method protected getNativePlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/IPlayer;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoListPlayer;->mSaasVideoPlayer:Lcom/aliyun/player/ApsaraVideoPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/player/ApsaraVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraVideoListPlayer;->mSaasVideoPlayer:Lcom/aliyun/player/ApsaraVideoPlayer;

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/ApsaraVideoListPlayer;->mSaasVideoPlayer:Lcom/aliyun/player/ApsaraVideoPlayer;

    return-object p1
.end method

.method public invokeComponent(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->invokeComponent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo sts uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveToNext(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "moveToNext sts "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveToNext(Lcom/aliyun/player/source/StsInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "moveToPrev sts "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveSts;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->setDataSource(Lcom/aliyun/player/source/LiveSts;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->setDataSource(Lcom/aliyun/player/source/VidAuth;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidMps;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->setDataSource(Lcom/aliyun/player/source/VidMps;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->setDataSource(Lcom/aliyun/player/source/VidSts;)V

    :cond_0
    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefinition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->setDefinition(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    invoke-super {p0}, Lcom/aliyun/player/AVPLBase;->stop()V

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->stop()V

    :cond_0
    return-void
.end method

.method public updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V

    :cond_0
    return-void
.end method

.method public updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V

    :cond_0
    return-void
.end method
