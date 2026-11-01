.class public Lcom/aliyun/player/nativeclass/PlayerConfig;
.super Ljava/lang/Object;


# instance fields
.field public mClearFrameWhenStop:Z

.field private mCustomHeaders:[Ljava/lang/String;

.field public mDisableAudio:Z

.field public mDisableVideo:Z

.field public mEnableHttpDns:I

.field public mEnableLocalCache:Z

.field public mEnableSEI:Z

.field public mEnableVideoBufferRender:Z

.field public mEnableVideoTunnelRender:Z

.field public mHighBufferDuration:I

.field public mHttpProxy:Ljava/lang/String;

.field public mLiveStartIndex:I

.field public mMaxBackwardBufferDurationMs:J

.field public mMaxBufferDuration:I

.field public mMaxDelayTime:I

.field public mMaxProbeSize:I

.field public mNetworkRetryCount:I

.field public mNetworkTimeout:I

.field public mPositionTimerIntervalMs:I

.field public mPreferAudio:Z

.field public mReferrer:Ljava/lang/String;

.field public mStartBufferDuration:I

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHttpProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mReferrer:Ljava/lang/String;

    const/16 v1, 0x3a98

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    const/16 v1, 0x1388

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxDelayTime:I

    const v1, 0xc350

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBufferDuration:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHighBufferDuration:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mStartBufferDuration:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxProbeSize:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableVideoTunnelRender:Z

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableVideoBufferRender:Z

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableSEI:Z

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mUserAgent:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkRetryCount:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mLiveStartIndex:I

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableAudio:Z

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableVideo:Z

    iput v1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mPositionTimerIntervalMs:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBackwardBufferDurationMs:J

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mPreferAudio:Z

    iput-boolean v3, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableLocalCache:Z

    iput v2, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableHttpDns:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mCustomHeaders:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCustomHeaders()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mCustomHeaders:[Ljava/lang/String;

    return-object v0
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mCustomHeaders:[Ljava/lang/String;

    return-void
.end method
