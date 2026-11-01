.class public Lcom/aliyun/liveshift/LiveTimeUpdater;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveTimeUpdater"

.field private static WHAT_UPDATE_LIVE_TIME:I = 0x0

.field private static WHAT_UPDATE_PLAY_TIME:I = 0x1


# instance fields
.field private contextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private liveTime:J

.field private mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

.field private final mTimeShift:Lcom/aliyun/player/source/LiveShift;

.field private needPause:Z

.field private playTime:J

.field private timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

.field private timer:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    new-instance v0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater$1;-><init>(Lcom/aliyun/liveshift/LiveTimeUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->contextWeak:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mTimeShift:Lcom/aliyun/player/source/LiveShift;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    return v0
.end method

.method static synthetic access$100(Lcom/aliyun/liveshift/LiveTimeUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->updateLiveTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getEndTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdateLiveTimerDelay(I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    return v0
.end method

.method static synthetic access$400(Lcom/aliyun/liveshift/LiveTimeUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    return p0
.end method

.method static synthetic access$500(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide p1
.end method

.method static synthetic access$508(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 4

    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide p1
.end method

.method static synthetic access$608(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 4

    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdatePlayTimerDelay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getStartTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getEndTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 2

    iget-object p1, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    iget-wide v0, p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;->end:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getStartTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 2

    iget-object p1, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    iget-wide v0, p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;->start:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private startUpdateLiveTimerDelay(I)V
    .locals 4

    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdateLiveTimer()V

    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startUpdatePlayTimerDelay(I)V
    .locals 4

    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdatePlayTimer()V

    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopUpdateLiveTimer()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private stopUpdatePlayTimer()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateLiveTimer()V
    .locals 4

    new-instance v0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->contextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mTimeShift:Lcom/aliyun/player/source/LiveShift;

    new-instance v3, Lcom/aliyun/liveshift/LiveTimeUpdater$2;

    invoke-direct {v3, p0}, Lcom/aliyun/liveshift/LiveTimeUpdater$2;-><init>(Lcom/aliyun/liveshift/LiveTimeUpdater;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;-><init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setRefer(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setTimeout(I)V

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHttpProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setHttpProxy(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setUerAgent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/PlayerConfig;->getCustomHeaders()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setCustomHeaders([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/utils/BaseRequest;->getAsync()V

    return-void
.end method


# virtual methods
.method public getLiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    return-wide v0
.end method

.method public getPlayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-wide v0
.end method

.method public pauseUpdater()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    return-void
.end method

.method public resumeUpdater()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    return-void
.end method

.method public setStartPlayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    return-void
.end method

.method public setUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    return-void
.end method

.method public startUpdater()V
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdateLiveTimerDelay(I)V

    return-void
.end method

.method public stopUpdater()V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdateLiveTimer()V

    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdatePlayTimer()V

    return-void
.end method
