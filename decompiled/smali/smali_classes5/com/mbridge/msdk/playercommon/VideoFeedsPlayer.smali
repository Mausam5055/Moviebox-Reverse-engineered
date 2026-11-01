.class public Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# static fields
.field public static final INTERVAL_TIME_PLAY_TIME_CD_THREAD:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "VideoFeedsPlayer"


# instance fields
.field private exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

.field private isStart:Z

.field private mBufferTime:I

.field private mBufferTimeoutTimer:Ljava/util/Timer;

.field private mCurrentPosition:J

.field private mFullScreenLoadingView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPrepare:Z

.field private volatile mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mIsBuffering:Z

.field private mIsComplete:Z

.field private mIsFrontDesk:Z

.field private mIsNeedBufferingTimeout:Z

.field private mIsPlaying:Z

.field private mIsSilent:Z

.field private mLoadingView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private volatile mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private playProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isStart:Z

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$1;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->playProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayProgressOnMainThread(II)V

    return-void
.end method

.method static synthetic access$302(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    return p0
.end method

.method static synthetic access$500(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    return-void
.end method

.method static synthetic access$600(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    return p0
.end method

.method static synthetic access$800(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferingTimeOutOnMainThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mFullScreenLoadingView:Landroid/view/View;

    return-object p0
.end method

.method private cancelBufferTimeoutTimer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private cancelPlayProgressTimer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hideLoading()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$5;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$5;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private postOnBufferinEndOnMainThread()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$9;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$9;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnBufferingStarOnMainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$8;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$8;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnBufferingTimeOutOnMainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayCompletedOnMainThread()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$13;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$13;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$11;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$11;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    const/16 v1, 0x5e

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/j;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private postOnPlayProgressOnMainThread(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayStartOnMainThread(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$10;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private startBufferIngTimer(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    if-nez v0, :cond_0

    const-string p1, "VideoFeedsPlayer"

    const-string v0, "\u4e0d\u9700\u8981\u7f13\u51b2\u8d85\u65f6\u529f\u80fd"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelBufferTimeoutTimer()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    iget p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private startPlayProgressTimer()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelPlayProgressTimer()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeSound()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsSilent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public exoPlayerIsPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

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

.method public fullScreenLoadingViewisVisible()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mFullScreenLoadingView:Landroid/view/View;

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

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurPosition()I
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public halfLoadingViewisVisible()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

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

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrepare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsNeedBufferingTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mMaxBufferTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initPlayer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "loadingView is NULL"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MediaPlayer init error"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance p4, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p4}, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p2, p4, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lcom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance p4, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;

    const-string v2, "MBridge_ExoPlayer"

    invoke-direct {p4, p1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return v1
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    return v0
.end method

.method public isPlayIng()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

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

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSilent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsSilent:Z

    return v0
.end method

.method public justSeekTo(I)V
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    int-to-long v1, p1

    :try_start_0
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez p1, :cond_0

    const-string p1, "seekTo return mHasPrepare false"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 0

    return-void
.end method

.method public onCompletion()V
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayCompletedOnMainThread()V

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
    .locals 4

    const-string v0, "VideoFeedsPlayer"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    if-nez p1, :cond_0

    const-string p1, "MIX 3"

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->s()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Xiaomi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
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

    const-string v0, "VideoFeedsPlayer"

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

    const-string v2, "VideoFeedsPlayer"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->onError(ILjava/lang/String;)Z

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

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onPlaybackStateChanged : Ended : PLAY ENDED"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelPlayProgressTimer()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->onCompletion()V

    goto :goto_0

    :cond_1
    const-string p1, "onPlaybackStateChanged : READY"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferinEndOnMainThread()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->onPrepared()V

    goto :goto_0

    :cond_2
    const-string p2, "onPlaybackStateChanged : Buffering"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    const-string p1, "play buffering tiemout"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "onPlaybackStateChanged : IDLE"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 6

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    iget-boolean v3, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isStart:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayStartOnMainThread(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayStarted()\uff0cgetCurrentPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isStart:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferinEndOnMainThread()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startPlayProgressTimer()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onPrepare mHasPrepare\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "At background, Do not process"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
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
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsSilent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause isPalying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iput-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Play currentionPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_0

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDataSource()V

    const-string p1, "VideoFeedsPlayer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPlayUrl:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public play(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDataSource()V

    const-string p1, "VideoFeedsPlayer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPlayUrl:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public prepare()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelPlayProgressTimer()V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelBufferTimeoutTimer()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->stop()V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V
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

.method public seekTo(I)V
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    int-to-long v1, p1

    :try_start_0
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez p1, :cond_0

    const-string p1, "seekTo return mHasPrepare false"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public seekToEndFrame()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setDataSource()V
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    const-string v1, "setDataSource"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const-string v1, "mediaplayer prepare timeout"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    const-string v0, "illegal video address"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getVideoComponent()Lcom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFullScreenLoadingView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mFullScreenLoadingView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 3

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

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

.method public setPlaybackParams(F)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(F)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(F)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setSelfVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-void
.end method

.method public setVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;-><init>(Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start(I)V
    .locals 4

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    const-string p1, "=========start \u6307\u5b9a\u8fdb\u5ea6"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
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

.method public start(Z)V
    .locals 2

    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    const-string p1, "!mHasPrepare"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startPlayProgressTimer()V

    :cond_1
    const-string p1, "start"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
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

.method public stop()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
