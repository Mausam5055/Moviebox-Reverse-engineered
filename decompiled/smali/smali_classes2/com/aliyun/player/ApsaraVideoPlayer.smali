.class Lcom/aliyun/player/ApsaraVideoPlayer;
.super Lcom/aliyun/player/UrlVideoPlayer;

# interfaces
.implements Lcom/aliyun/player/AliPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;
    }
.end annotation


# instance fields
.field private mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

.field private mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/UrlVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    new-instance p1, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;

    invoke-direct {p1, p0}, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;-><init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V

    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object p0

    return-object p0
.end method

.method private onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    return-object p1
.end method

.method private onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    return-object p1
.end method


# virtual methods
.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    new-instance v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-nez p1, :cond_0

    new-instance p1, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;

    invoke-direct {p1, p0}, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;-><init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V

    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V

    return-object v0
.end method

.method public invokeComponent(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->invokeComponent(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveSts;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/LiveSts;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidAuth;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidMps;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidMps;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidSts;)V

    :cond_0
    return-void
.end method

.method public setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    return-void
.end method

.method public updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V

    :cond_0
    return-void
.end method

.method public updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V

    :cond_0
    return-void
.end method
