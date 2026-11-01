.class Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.super Lcom/aliyun/player/AVPBase;

# interfaces
.implements Lcom/aliyun/player/AliLiveShiftPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;,
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;,
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;,
        Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;
    }
.end annotation


# static fields
.field public static final SeekLive:I = 0xa


# instance fields
.field private innerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private innerOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private liveSeekOffset:J

.field private liveSeekToTime:J

.field private liveShiftSource:Lcom/aliyun/player/source/LiveShift;

.field private liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

.field private mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

.field private mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

.field private status:I

.field private statusWhenSeek:I

.field private timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    iput-wide p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    new-instance p2, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;

    invoke-direct {p2, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerStateChangedListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    iput-object p2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    new-instance p2, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;

    invoke-direct {p2, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    iput-object p2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    new-instance p1, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    invoke-direct {p1, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onPrepared()V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/ApsaraLiveShiftPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onLoadingBegin()V

    return-void
.end method

.method static synthetic access$300(Lcom/aliyun/player/ApsaraLiveShiftPlayer;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onLoadingProgress(IF)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onLoadingEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/ApsaraLiveShiftPlayer;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->onUpdater(JJJ)V

    return-void
.end method

.method private onLoadingBegin()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->pauseUpdater()V

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingBegin()V

    :cond_1
    return-void
.end method

.method private onLoadingEnd()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->resumeUpdater()V

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingEnd()V

    :cond_1
    return-void
.end method

.method private onLoadingProgress(IF)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingProgress(IF)V

    :cond_0
    return-void
.end method

.method private onPrepared()V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;-><init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->timeShiftUpdaterListener:Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->setUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v1, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-wide v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->setStartPlayTime(J)V

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdater()V

    iget v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    const/16 v1, 0xa

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    iget v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->statusWhenSeek:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->resumeUpdater()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->pauseUpdater()V

    :goto_1
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;->onSeekLiveCompletion(J)V

    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnPreparedListener;->onPrepared()V

    :cond_5
    :goto_2
    return-void
.end method

.method private onStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnStateChangedListener;->onStateChanged(I)V

    :cond_1
    return-void
.end method

.method private onUpdater(JJJ)V
    .locals 7

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;->onUpdater(JJJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    new-instance v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentLiveTime()J
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getLiveTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getPlayTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public pause()V
    .locals 1

    invoke-super {p0}, Lcom/aliyun/player/AVPBase;->pause()V

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->pauseUpdater()V

    :cond_0
    return-void
.end method

.method public seekToLiveTime(J)V
    .locals 4

    iget v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->statusWhenSeek:I

    iput v1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->status:I

    iput-wide p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getCurrentLiveTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iput-wide v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->getCurrentLiveTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    :cond_2
    iget-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    invoke-virtual {p1}, Lcom/aliyun/player/source/LiveShift;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekToTime:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_6

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "&lhs_start=1&aliyunols=on"

    if-nez v0, :cond_5

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?lhs_offset_unix_s_0="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&lhs_offset_unix_s_0="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lhs_offset_unix_s_0="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveSeekOffset:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    :goto_1
    new-instance p2, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {p2}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    invoke-virtual {p2, p1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object p1

    instance-of v0, p1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    invoke-virtual {p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->prepare()V

    :cond_7
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveShift;)V
    .locals 2

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveShiftSource:Lcom/aliyun/player/source/LiveShift;

    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    invoke-virtual {p1}, Lcom/aliyun/player/source/LiveShift;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object p1

    instance-of v1, p1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    :cond_0
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    iget-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-super {p0, p1}, Lcom/aliyun/player/AVPBase;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    new-instance p1, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;

    invoke-direct {p1, p0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerPreparedListener;-><init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    invoke-super {p0, p1}, Lcom/aliyun/player/AVPBase;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekLiveCompletionListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutSeekLiveCompletionListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnSeekLiveCompletionListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    iget-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->innerOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    invoke-super {p0, p1}, Lcom/aliyun/player/AVPBase;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    return-void
.end method

.method public setOnTimeShiftUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->mOutTimeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Lcom/aliyun/player/AVPBase;->start()V

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->resumeUpdater()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    invoke-super {p0}, Lcom/aliyun/player/AVPBase;->stop()V

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->liveTimeUpdater:Lcom/aliyun/liveshift/LiveTimeUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    :cond_0
    return-void
.end method
