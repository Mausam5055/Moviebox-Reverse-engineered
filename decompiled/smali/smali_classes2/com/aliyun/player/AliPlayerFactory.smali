.class public Lcom/aliyun/player/AliPlayerFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;,
        Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;,
        Lcom/aliyun/player/AliPlayerFactory$BlackType;
    }
.end annotation


# static fields
.field private static sInnerBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    invoke-static {}, Lcom/aliyun/player/AliPlayerFactory;->initInnerBlackList()V

    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/aliyun/player/AliPlayerFactory;->addBlackList(Lcom/aliyun/player/AliPlayerFactory$BlackType;Ljava/util/List;)V

    new-instance v0, Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>()V

    invoke-static {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->registerExternalPlayer(Lcom/aliyun/player/ApasaraExternalPlayer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlackDevice(Lcom/aliyun/player/AliPlayerFactory$BlackType;Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_HEVC:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    if-ne p0, v1, :cond_2

    :cond_1
    iget-object p1, p1, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setBlackType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static addBlackList(Lcom/aliyun/player/AliPlayerFactory$BlackType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/player/AliPlayerFactory$BlackType;",
            "Ljava/util/List<",
            "Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->addBlackDevice(Lcom/aliyun/player/AliPlayerFactory$BlackType;Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createAliListPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliListPlayer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliListPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliListPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createAliListPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliListPlayer;
    .locals 1

    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->preInitService(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/aliyun/player/ApsaraVideoListPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraVideoListPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAliLiveShiftPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliLiveShiftPlayer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliLiveShiftPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliLiveShiftPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createAliLiveShiftPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliLiveShiftPlayer;
    .locals 1

    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->preInitService(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createAliPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliPlayer;
    .locals 1

    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->preInitService(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeviceUUID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initInnerBlackList()V
    .locals 2

    new-instance v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    invoke-direct {v0}, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;-><init>()V

    const-string v1, "Lenovo K320t"

    iput-object v1, v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;->model:Ljava/lang/String;

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isFeatureSupport(Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;)Z
    .locals 1

    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;->FeatureDolbyAudio:Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/cicada/player/utils/media/MediaCodecUtils;->isDolbyAudioSupport()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setConvertURLCallback(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setConvertURLCb(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V

    return-void
.end method
