.class public Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

.field private mNativeInstance:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnPrepared(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSeekEnd(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnPositionUpdate(JJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnBufferPositionUpdate(JJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnVideoSizeChanged(JII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnStatusChanged(JII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnVideoRendered(JJJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnErrorCallback(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnEventCallback(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnStreamInfoGet(JLcom/aliyun/player/nativeclass/MediaInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JILcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnStreamSwitchSuc(JILcom/aliyun/player/nativeclass/TrackInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoopingStart(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnCaptureScreen(JII[B)V

    return-void
.end method

.method static synthetic access$2100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSubtitleExtAdd(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSubtitleShow(JJ[B)V

    return-void
.end method

.method static synthetic access$2300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSubtitleHide(JJ[B)V

    return-void
.end method

.method static synthetic access$2400(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLjava/lang/String;[B)[B
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeRequestProvision(JLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLjava/lang/String;[B)[B
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeRequestKey(JLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnCompletion(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnFirstFrameShow(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoadingStart(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoadingProgress(JJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoadingEnd(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnAutoPlayStart(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSeeking(JZ)V

    return-void
.end method

.method private getCurrentStreamIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-nez p1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I

    move-result p1

    return p1
.end method

.method private getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private invokeComponent(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->invokeComponent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static isSupport(Lcom/aliyun/player/nativeclass/Options;)Z
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    invoke-static {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;->isSupportExternal(Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private native nativeOnAutoPlayStart(J)V
.end method

.method private native nativeOnBufferPositionUpdate(JJ)V
.end method

.method private native nativeOnCaptureScreen(JII[B)V
.end method

.method private native nativeOnCompletion(J)V
.end method

.method private native nativeOnErrorCallback(JJLjava/lang/String;)V
.end method

.method private native nativeOnEventCallback(JJLjava/lang/String;)V
.end method

.method private native nativeOnFirstFrameShow(J)V
.end method

.method private native nativeOnLoadingEnd(J)V
.end method

.method private native nativeOnLoadingProgress(JJ)V
.end method

.method private native nativeOnLoadingStart(J)V
.end method

.method private native nativeOnLoopingStart(J)V
.end method

.method private native nativeOnPositionUpdate(JJ)V
.end method

.method private native nativeOnPrepared(J)V
.end method

.method private native nativeOnSeekEnd(JZ)V
.end method

.method private native nativeOnSeeking(JZ)V
.end method

.method private native nativeOnStatusChanged(JII)V
.end method

.method private native nativeOnStreamInfoGet(JLcom/aliyun/player/nativeclass/MediaInfo;)V
.end method

.method private native nativeOnStreamSwitchSuc(JILcom/aliyun/player/nativeclass/TrackInfo;)V
.end method

.method private native nativeOnSubtitleExtAdd(JJLjava/lang/String;)V
.end method

.method private native nativeOnSubtitleHide(JJ[B)V
.end method

.method private native nativeOnSubtitleShow(JJ[B)V
.end method

.method private native nativeOnVideoRendered(JJJ)V
.end method

.method private native nativeOnVideoSizeChanged(JII)V
.end method

.method private native nativeRequestKey(JLjava/lang/String;[B)[B
.end method

.method private native nativeRequestProvision(JLjava/lang/String;[B)[B
.end method

.method private selectExtSubtitle(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->selectExtSubtitle(IZ)I

    move-result p1

    return p1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private setDecoderType(I)V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_SOFTWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    if-nez p1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDecoderType(Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;)V

    return-void
.end method

.method private setMirrorMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    return-void
.end method

.method private setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setRotateMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_1

    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    goto :goto_0

    :cond_2
    const/16 v2, 0x10e

    if-ne p1, v2, :cond_3

    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    return-void
.end method

.method private setScaleMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    return-void
.end method


# virtual methods
.method SwitchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->switchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    move-result-object p1

    return-object p1
.end method

.method public callRbPvD(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return p2

    :cond_0
    const-string v0, "IsMute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->isMute()Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "isLooping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->isLooping()Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "IsAutoPlay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->isAutoPlay()Z

    move-result p1

    return p1

    :cond_3
    return p2
.end method

.method public callRfPvD(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return p2

    :cond_0
    const-string v0, "GetVideoRenderFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoRenderFps()F

    move-result p1

    return p1

    :cond_1
    const-string v0, "GetVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVolume()F

    move-result p1

    return p1

    :cond_2
    const-string v0, "getSpeed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getSpeed()F

    move-result p1

    return p1

    :cond_3
    const-string v0, "GetVideoDecodeFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoDecodeFps()F

    move-result p1

    return p1

    :cond_4
    return p2
.end method

.method public callRiPiD(Ljava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return p3

    :cond_0
    const-string v0, "GetCurrentStreamIndex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->getCurrentStreamIndex(I)I

    move-result p1

    return p1

    :cond_1
    const-string v0, "SwitchStream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->SwitchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->getValue()I

    move-result p1

    return p1

    :cond_2
    return p3
.end method

.method public callRiPvD(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return p2

    :cond_0
    const-string v0, "Stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->stop()V

    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "GetScaleMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result p1

    return p1

    :cond_2
    const-string v0, "GetRotateMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result p1

    return p1

    :cond_3
    const-string v0, "GetMirrorMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result p1

    return p1

    :cond_4
    const-string v0, "GetDecoderType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getDecoderType()Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->getValue()I

    move-result p1

    return p1

    :cond_5
    const-string v0, "getVideoWidth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoWidth()I

    move-result p1

    return p1

    :cond_6
    const-string v0, "getVideoHeight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoHeight()I

    move-result p1

    return p1

    :cond_7
    const-string v0, "GetVideoRotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoRotation()I

    move-result p1

    return p1

    :cond_8
    return p2
.end method

.method public callRlPvD(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    const-string v0, "GetDuration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getDuration()J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-string v0, "GetPlayingPosition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPlayingPosition()J

    move-result-wide p1

    return-wide p1

    :cond_2
    const-string v0, "GetBufferPosition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getBufferPosition()J

    move-result-wide p1

    return-wide p1

    :cond_3
    const-string v0, "GetMasterClockPts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getMasterClockPts()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide p2
.end method

.method public callRoPi(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "GetCurrentStreamInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->getCurrentStreamInfo(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "getName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public callRvPf(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SetVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setVolume(F)V

    :cond_1
    const-string v0, "setSpeed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setSpeed(F)V

    :cond_2
    return-void
.end method

.method public callRvPi(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SetVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setVolume(F)V

    goto :goto_0

    :cond_1
    const-string v0, "SetScaleMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setScaleMode(I)V

    goto :goto_0

    :cond_2
    const-string v0, "SetRotateMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setRotateMode(I)V

    goto :goto_0

    :cond_3
    const-string v0, "SetMirrorMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setMirrorMode(I)V

    goto :goto_0

    :cond_4
    const-string v0, "SetTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setTimeout(I)V

    goto :goto_0

    :cond_5
    const-string v0, "SetDropBufferThreshold"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDropBufferThreshold(I)V

    goto :goto_0

    :cond_6
    const-string v0, "SetDecoderType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setDecoderType(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public callRvPlb(Ljava/lang/String;JZ)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SeekTo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2, p3, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->seekTo(JZ)V

    goto :goto_0

    :cond_1
    const-string v0, "SetVideoBackgroundColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2, p3}, Lcom/aliyun/player/ApasaraExternalPlayer;->setVideoBackgroundColor(J)V

    goto :goto_0

    :cond_2
    const-string v0, "Mute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->mute(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "EnterBackGround"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->enterBackGround(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "SetLooping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->setLooping(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "SetAutoPlay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->setAutoPlay(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "selectExtSubtitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    long-to-int p2, p2

    invoke-virtual {p1, p2, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->selectExtSubtitle(IZ)I

    :cond_7
    :goto_0
    return-void
.end method

.method public callRvPo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SetView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public callRvPs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SetDataSource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "addExtSubtitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->addExtSubtitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "AddCustomHttpHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->addCustomHttpHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "SetUserAgent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setUserAgent(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "SetRefer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setRefer(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public callRvPv(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Release"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->release()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    goto :goto_0

    :cond_1
    const-string v0, "Prepare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->prepare()V

    goto :goto_0

    :cond_2
    const-string v0, "Start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->start()V

    goto :goto_0

    :cond_3
    const-string v0, "Pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->pause()V

    goto :goto_0

    :cond_4
    const-string v0, "CaptureScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->captureScreen()V

    goto :goto_0

    :cond_5
    const-string v0, "reLoad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->reLoad()V

    goto :goto_0

    :cond_6
    const-string v0, "RemoveAllCustomHttpHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->removeAllCustomHttpHeader()V

    :cond_7
    :goto_0
    return-void
.end method

.method public create(JLcom/aliyun/player/nativeclass/Options;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    invoke-static {p3}, Lcom/aliyun/player/ApasaraExternalPlayer;->isSupportExternal(Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/aliyun/player/ApasaraExternalPlayer;->create(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;

    move-result-object p3

    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    :cond_0
    iget-object p3, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez p3, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    new-instance p1, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$1;

    invoke-direct {p1, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$1;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p3, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnPreparedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$2;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$2;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnLoopingStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$3;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$3;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnCompletionListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$4;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$4;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnFirstFrameRenderListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnLoadStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$6;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$6;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnAutoPlayStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnSeekStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$9;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$9;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnBufferPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$10;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$10;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$11;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$11;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnStatusChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnVideoRenderedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnErrorListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$14;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$14;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnEventListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnStreamInfoGetListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnStreamSwitchSucListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnCaptureScreenListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnSubtitleListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance p2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$19;

    invoke-direct {p2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$19;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDrmCallback(Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;)V

    return-void
.end method

.method public getCurrentStreamInfo(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-nez p1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getCurrentStreamInfo(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
