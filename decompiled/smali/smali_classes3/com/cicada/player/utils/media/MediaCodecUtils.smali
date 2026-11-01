.class public Lcom/cicada/player/utils/media/MediaCodecUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecUtils"

.field private static allDecoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCodecInfos(Ljava/lang/String;ZLandroid/media/MediaFormat;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cicada/player/utils/media/MediaCodecUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getDeviceDecodecs()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodecInfo;

    const-string v4, "audio/eac3"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v4, "audio/eac3-joc"

    invoke-static {v3, v4}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    move v6, v5

    :goto_2
    if-nez v4, :cond_2

    invoke-static {v3, p0}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v6, v5

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    invoke-static {p1, v7, v4}, Lcom/cicada/player/utils/media/MediaCodecUtils;->isSecureSupport(ZLandroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p2, v7, v4}, Lcom/cicada/player/utils/media/MediaCodecUtils;->isFormatSupport(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_7
    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDeviceDecodecs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static declared-synchronized isDolbyAudioSupport()Z
    .locals 11

    const-class v0, Lcom/cicada/player/utils/media/MediaCodecUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getDeviceDecodecs()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaCodecInfo;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    const-string v10, "audio/ac4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    const-string v10, "audio/eac3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_3

    move v3, v6

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    move v2, v6

    :cond_6
    monitor-exit v0

    return v2

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isFormatSupport(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "audio"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const-string p2, "width"

    invoke-static {p0, p2, v2}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p2

    const-string v0, "height"

    invoke-static {p0, v0, v2}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p0

    if-lez p2, :cond_4

    if-gtz p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/cicada/player/utils/media/MediaCodecUtils;->TAG:Ljava/lang/String;

    const-string p1, "video format not support! videoCapabilities == null"

    invoke-static {p0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    sget-object v2, Lcom/cicada/player/utils/media/MediaCodecUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video format not support! width["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] not in widthRange ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] or height["

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] not in heightRange["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v3, v1

    :goto_1
    return v3

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object p1

    if-nez p1, :cond_6

    sget-object p0, Lcom/cicada/player/utils/media/MediaCodecUtils;->TAG:Ljava/lang/String;

    const-string p1, "audio format not support! audioCapabilities == null"

    invoke-static {p0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    const-string p2, "sample-rate"

    invoke-static {p0, p2, v2}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p2

    const-string v0, "channel-count"

    invoke-static {p0, v0, v2}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p0

    if-eq p2, v2, :cond_8

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v1

    :goto_4
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v4

    if-eq p0, v2, :cond_a

    if-lt v4, p0, :cond_9

    goto :goto_5

    :cond_9
    move v2, v3

    goto :goto_6

    :cond_a
    :goto_5
    move v2, v1

    :goto_6
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    move v1, v3

    :goto_7
    if-nez v1, :cond_c

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio format not support! sampleRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", supportedSampleRates="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getSupportedSampleRates()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", channelCount="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxInputChannelCount="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move v3, v1

    :cond_d
    :goto_8
    return v3
.end method

.method private static isSecureSupport(ZLandroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z
    .locals 1

    const-string p2, "secure-playback"

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
