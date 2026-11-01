.class public Lcom/aliyun/player/externalplayer/MediaPlayer;
.super Lcom/aliyun/player/ApasaraExternalPlayer;


# static fields
.field private static final PLAYER_NAME:Ljava/lang/String; = "MediaPlayer"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"


# instance fields
.field private final TIMER_WHAT_HALF_SECOND:I

.field private isMute:Z

.field private lastVolume:F

.field private mAutoPlay:Z

.field private mBufferPosition:J

.field private mContext:Landroid/content/Context;

.field private mCustomHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field private mLoop:Z

.field private mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

.field private mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

.field private mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

.field private mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

.field private mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

.field private mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

.field private mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

.field private mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

.field private mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

.field private mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

.field private mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

.field private mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

.field private mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

.field private mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

.field private mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

.field private mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

.field private mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

.field private mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

.field private mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

.field private mRefer:Ljava/lang/String;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mSeekAccurate:Z

.field private mSeekPos:J

.field private mSpeed:F

.field private mSystemMediaPlayer:Landroid/media/MediaPlayer;

.field private mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private timer:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->TIMER_WHAT_HALF_SECOND:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V
    .locals 4

    invoke-direct {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;-><init>()V

    const/16 p2, 0x3e8

    iput p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->TIMER_WHAT_HALF_SECOND:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$1;

    invoke-direct {p2, p0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer$1;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$2;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$2;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$3;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$3;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$4;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$4;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$5;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$5;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$6;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$6;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$7;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$7;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$8;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$8;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$9;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$9;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/aliyun/player/externalplayer/MediaPlayer;[Landroid/media/MediaPlayer$TrackInfo;)[Landroid/media/MediaPlayer$TrackInfo;
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->notifyStreamGet()V

    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/aliyun/player/externalplayer/MediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->sendHalfSecondTimer()V

    return-void
.end method

.method static synthetic access$402(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    return-object p0
.end method

.method private changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;->onStatusChanged(II)V

    :cond_0
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->sendHalfSecondTimer()V

    return-void
.end method

.method private convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 2

    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/TrackInfo;-><init>()V

    iput p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->index:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method private notifyStreamGet()V
    .locals 5

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aliyun/player/nativeclass/MediaInfo;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/MediaInfo;-><init>()V

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/aliyun/player/nativeclass/TrackInfo;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-direct {p0, v3, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/MediaInfo;->setTrackInfos([Lcom/aliyun/player/nativeclass/TrackInfo;)V

    invoke-virtual {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/MediaInfo;->setDuration(I)V

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    invoke-interface {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;->OnStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    :cond_1
    return-void
.end method

.method private sendHalfSecondTimer()V
    .locals 4

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private updateDataSource()V
    .locals 5

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "Referer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/aliyun/player/bean/ErrorCode;->ERROR_GENERAL_EIO:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v2}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set dataSource error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;->onError(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addCustomHttpHeader(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCustomHttpHeader() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExtSubtitle() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public captureScreen()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "captureScreen() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public create(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;
    .locals 1

    new-instance v0, Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V

    return-object v0
.end method

.method public enterBackGround(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterBackGround() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBufferPosition()J
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getBufferPosition() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    return-wide v0
.end method

.method public getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentStreamIndex() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-ne p1, v1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1

    return p1

    :cond_5
    return v2
.end method

.method public getCurrentStreamInfo(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentStreamInfo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDecoderType()Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getDecoderType() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    const-string v0, "MediaPlayer"

    const-string v1, "getDuration() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3
    return-wide v2
.end method

.method public getMasterClockPts()J
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getMasterClockPts() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getMirrorMode() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaPlayer"

    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOption() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayerStatus()Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getPlayerStatus() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object v0
.end method

.method public getPlayingPosition()J
    .locals 5

    const-string v0, "MediaPlayer"

    const-string v1, "getPlayingPosition() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3
    return-wide v2
.end method

.method public getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyInt() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyLong() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyString() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getRotateMode() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getScaleMode() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object v0
.end method

.method public getSpeed()F
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getSpeed() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    return v0
.end method

.method public getVideoDecodeFps()F
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getVideoDecodeFps() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoHeight()I
    .locals 3

    const-string v0, "MediaPlayer"

    const-string v1, "getVideoHeight() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public getVideoRenderFps()F
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getVideoRenderFps() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoRotation()I
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getVideoRotation() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    const-string v0, "MediaPlayer"

    const-string v1, "getVideoWidth() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public getVolume()F
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "getVolume() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    return v0
.end method

.method public invokeComponent(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeComponent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isAutoPlay()Z
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "isAutoPlay() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    return v0
.end method

.method public isLooping()Z
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "isLooping() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMute()Z
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "isMute() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    return v0
.end method

.method public isSupport(Lcom/aliyun/player/nativeclass/Options;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/aliyun/player/nativeclass/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaPlayer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public mute(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mute() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "pause() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    :cond_2
    return-void
.end method

.method public prepare()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "prepare() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->updateDataSource()V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setSpeed(F)V

    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setLooping(Z)V

    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->mute(Z)V

    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setVolume(F)V

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_0
    return-void
.end method

.method public reLoad()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "reLoad() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "release() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public removeAllCustomHttpHeader()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "removeAllCustomHttpHeader() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , accurate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    iput-boolean p3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    if-eqz p3, :cond_2

    const/4 p3, 0x3

    invoke-static {v0, p1, p2, p3}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    goto :goto_1

    :cond_2
    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_1
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;->onSeekStart(Z)V

    :cond_3
    return-void
.end method

.method public selectExtSubtitle(IZ)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectExtSubtitle() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , bSelect = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayer"

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoPlay(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPlay() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    :cond_0
    return-void
.end method

.method public setDecoderType(Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDecoderType() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDrmCallback(Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    return-void
.end method

.method public setDropBufferThreshold(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDropBufferThreshold() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLooping() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirrorMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnAutoPlayStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    return-void
.end method

.method public setOnBufferPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    return-void
.end method

.method public setOnCaptureScreenListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    return-void
.end method

.method public setOnEventListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    return-void
.end method

.method public setOnFirstFrameRenderListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    return-void
.end method

.method public setOnLoadStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    return-void
.end method

.method public setOnLoopingStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    return-void
.end method

.method public setOnPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    return-void
.end method

.method public setOnStatusChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    return-void
.end method

.method public setOnStreamInfoGetListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    return-void
.end method

.method public setOnStreamSwitchSucListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    return-void
.end method

.method public setOnSubtitleListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOption() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayer"

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRefer() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRotateMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScaleMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeed() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimeout() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserAgent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public setVideoBackgroundColor(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoBackgroundColor() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayer"

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "start() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "MediaPlayer"

    const-string v1, "stop() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    :cond_2
    return-void
.end method

.method public switchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchStream() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    if-nez v0, :cond_2

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_6
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1

    :cond_7
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object p1
.end method
