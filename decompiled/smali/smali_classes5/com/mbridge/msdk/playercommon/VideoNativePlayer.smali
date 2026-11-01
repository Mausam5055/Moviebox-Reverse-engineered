.class public Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# static fields
.field public static final INTERVAL_TIME_PLAY_TIME_CD_THREAD:I = 0x3e8

.field public static final INTERVAL_TIME_PLAY_TIME_PROGRESS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VideoNativePlayer"


# instance fields
.field private exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

.field private mBufferTime:I

.field private mBufferTimeoutTimer:Ljava/util/Timer;

.field private mCurrentPosition:J

.field private final mHandler:Landroid/os/Handler;

.field private mHasChaoDi:Z

.field private mHasPrepare:Z

.field private mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mIsAllowLoopPlay:Z

.field private mIsBuffering:Z

.field private mIsComplete:Z

.field private mIsFrontDesk:Z

.field private mIsNeedBufferingTimeout:Z

.field private mIsOpenSound:Z

.field private mIsPlaying:Z

.field private mIsStartPlay:Z

.field private mLoadingView:Landroid/view/View;

.field private mNetUrl:Ljava/lang/String;

.field private mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/Surface;

.field private mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private playProgressMSRunnable:Ljava/lang/Runnable;

.field private playProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    return p0
.end method

.method static synthetic access$202(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayStartOnMainThread(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressOnMainThread(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    return p0
.end method

.method static synthetic access$700(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressMSOnMainThread(JJ)V

    return-void
.end method

.method private cancelBufferTimeoutTimer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private cancelPlayProgressTimer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hideLoading()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private postOnBufferinEndOnMainThread()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnBufferingStarOnMainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayCompletedOnMainThread()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/j;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private postOnPlayProgressMSOnMainThread(JJ)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayProgressOnMainThread(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayStartOnMainThread(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private startBufferingTimer(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    if-nez v0, :cond_0

    const-string p1, "VideoNativePlayer"

    const-string v0, "\u4e0d\u9700\u8981\u7f13\u51b2\u8d85\u65f6\u529f\u80fd"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    iget p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private startPlayProgressTimer()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeSound()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public exoPlayerIsPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurPosition()I
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    long-to-int v0, v0

    return v0
.end method

.method public hasPrepare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsNeedBufferingTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mMaxBufferTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initParameter(Ljava/lang/String;ZZLandroid/view/View;Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .locals 4

    const-string v0, "VideoNativePlayer"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MediaPlayer init error"

    if-eqz v2, :cond_0

    :try_start_1
    const-string p1, "netUrl\u4e3a\u7a7a return"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const-string p1, "loadingView\u4e3a\u7a7a return"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return v1

    :cond_1
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    iput-boolean p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    iput-object p4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return v0
.end method

.method public isPlayIng()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    return v0
.end method

.method public loadingViewIsVisible()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion()V
    .locals 3

    const-string v0, "VideoNativePlayer"

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayCompletedOnMainThread()V

    const-string v1, "======onCompletion"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)Z
    .locals 3

    const-string v0, "VideoNativePlayer"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackParametersChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 3

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Play error, because have a UnexpectedException."

    goto :goto_1

    :cond_1
    const-string v0, "Play error, because have a RendererException."

    goto :goto_1

    :cond_2
    const-string v0, "Play error, because have a SourceException."

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "Play error and ExoPlayer have not message."

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoNativePlayer"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onError(ILjava/lang/String;)Z

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlaybackStateChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 p1, 0x3

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onPlaybackStateChanged : Ended : PLAY ENDED"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    goto :goto_0

    :cond_1
    const-string p1, "onPlaybackStateChanged : READY"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onPrepared()V

    goto :goto_0

    :cond_2
    const-string p2, "onPlaybackStateChanged : Buffering"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    const-string p1, "play buffering tiemout"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "onPlaybackStateChanged : IDLE"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositionDiscontinuity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 4

    const-string v0, "VideoNativePlayer"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onprepare mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mHasPrepare\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "At background, Do not process"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTracksChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public openSound()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    const-string v0, "VideoNativePlayer"

    :try_start_0
    const-string v1, "player pause"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    const-string v1, "pause !mHasPrepare retrun"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iput-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public play()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "VideoNativePlayer"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u6765\u64ad\u653e currentionPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p3

    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPlayUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 2

    const-string v0, "VideoNativePlayer"

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPlayUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public releasePlayer()V
    .locals 3

    const-string v0, "VideoNativePlayer"

    :try_start_0
    const-string v1, "releasePlayer"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->stop()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    return-void
.end method

.method public replaySameSource(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setDataSource(Landroid/content/Context;)V
    .locals 6

    const-string v0, "VideoNativePlayer"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "setDataSource begin"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_6

    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V

    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lcom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "MBridge_ExoPlayer"

    if-nez v3, :cond_4

    :try_start_3
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v5, p1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v5, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    :goto_4
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-boolean v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    :cond_6
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_7
    const-string v2, "mediaplayer prepare timeout"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V

    const-string v2, "setDataSource done"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "set data source error"

    const-string v4, "mediaplayer cannot play"

    if-eqz v2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource error : Is Online source : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    if-nez v2, :cond_9

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource error : Will play online source : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    goto :goto_7

    :cond_9
    invoke-direct {p0, v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 3

    const-string v0, "VideoNativePlayer"

    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFrontDesk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "frontStage"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "backStage"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setSelfVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-void
.end method

.method public setVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-void
.end method

.method public showLoading()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->start(Landroid/view/Surface;)V

    return-void
.end method

.method public start(I)V
    .locals 4

    const-string v0, "VideoNativePlayer"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    const-string p1, "start mHasprepare is false return"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public start(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "VideoNativePlayer"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    const-string p1, "start !mHasPrepare retrun"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    iput-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exoplayer is null : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoNativePlayer"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    const-string v1, "stop !mHasPrepare retrun"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
