.class public abstract Lcom/aliyun/player/AVPBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;,
        Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;,
        Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerSnapShotListener;,
        Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerSeiDataListener;,
        Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;,
        Lcom/aliyun/player/AVPBase$InnerSeekEndListener;,
        Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;,
        Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;,
        Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerRenderListener;,
        Lcom/aliyun/player/AVPBase$InnerCompletionListener;,
        Lcom/aliyun/player/AVPBase$InnerErrorListener;,
        Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;,
        Lcom/aliyun/player/AVPBase$InnerInfoListener;,
        Lcom/aliyun/player/AVPBase$InnerPrepareListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AVPBase"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field private mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

.field private mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field private mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

.field private mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

.field private mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field protected mTraceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerPrepareListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerPrepareListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerInfoListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerInfoListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerErrorListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerErrorListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerCompletionListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerCompletionListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerRenderListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerRenderListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSeekEndListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSeekEndListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSeiDataListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSeiDataListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSnapShotListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSnapShotListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    new-instance v1, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    new-instance v0, Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    invoke-direct {v0, p0}, Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object p2, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->bindListeners()V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onPrepared()V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onLoadingEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onSeekComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSubtitleExtAdded(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/AVPBase;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->onSubtitleShow(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/aliyun/player/AVPBase;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->onSubtitleHide(IJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSubtitleHeader(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/aliyun/player/AVPBase;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSeiData(I[B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/aliyun/player/AVPBase;Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->onSnapShot(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/AVPBase;[Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/aliyun/player/AVPBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/aliyun/player/AVPBase;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->onVideoRendered(JJ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/aliyun/player/AVPBase;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onEventParam(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onCompletion()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onVideoRenderingStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/player/AVPBase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onVideoSizeChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/player/AVPBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onLoadingBegin()V

    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/player/AVPBase;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onLoadingProgress(IF)V

    return-void
.end method

.method private bindListeners()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnTrackInfoGetListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnTrackSelectRetListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V

    return-void
.end method

.method private clearListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method private onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method private onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    :cond_0
    return-void
.end method

.method private onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private onCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnCompletionListener;->onCompletion()V

    :cond_0
    return-void
.end method

.method private onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method private onEventParam(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnReportEventListener;->onEventParam(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private onInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    :cond_0
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onLoadingBegin()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingBegin()V

    :cond_0
    return-void
.end method

.method private onLoadingEnd()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingEnd()V

    :cond_0
    return-void
.end method

.method private onLoadingProgress(IF)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingProgress(IF)V

    :cond_0
    return-void
.end method

.method private onPrepared()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnPreparedListener;->onPrepared()V

    :cond_0
    return-void
.end method

.method private onSeekComplete()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;->onSeekComplete()V

    :cond_0
    return-void
.end method

.method private onSeiData(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSeiDataListener;->onSeiData(I[B)V

    :cond_0
    return-void
.end method

.method private onSnapShot(Landroid/graphics/Bitmap;II)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer$OnSnapShotListener;->onSnapShot(Landroid/graphics/Bitmap;II)V

    :cond_0
    return-void
.end method

.method private onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnStateChangedListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method private onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleExtAdded(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSubtitleHeader(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHeader(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSubtitleHide(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHide(IJ)V

    :cond_0
    return-void
.end method

.method private onSubtitleShow(IJLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleShow(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnTrackReadyListener;->onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    :cond_0
    return-void
.end method

.method private onVideoRendered(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;->onVideoRendered(JJ)V

    :cond_0
    return-void
.end method

.method private onVideoRenderingStart()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnRenderingStartListener;->onRenderingStart()V

    :cond_0
    return-void
.end method

.method private onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method private pauseInner()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->pause()V

    return-void
.end method

.method private startInner()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->start()V

    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->addExtSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public clearScreen()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->clearScreen()V

    return-void
.end method

.method protected abstract createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
.end method

.method public currentTrack(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public currentTrack(Lcom/aliyun/player/nativeclass/TrackInfo$Type;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->enableHardwareDecoder(Z)V

    return-void
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    return-object v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;

    move-result-object v0

    return-object v0
.end method

.method public getNativeContextAddr()J
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getNativeContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyString(Lcom/aliyun/player/IPlayer$PropertyKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$PropertyKey;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getPropertyString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;

    move-result-object v0

    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoRotation()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVolume()F

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isAutoPlay()Z

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isMuted()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->pauseInner()V

    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->prepare()V

    return-void
.end method

.method public redraw()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->release()V

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->clearListeners()V

    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->reload()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$SeekMode;->Inaccurate:Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/player/AVPBase;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    return-void
.end method

.method public seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p3}, Lcom/aliyun/player/IPlayer$SeekMode;->getValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->seekTo(JI)V

    return-void
.end method

.method public selectExtSubtitle(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectExtSubtitle(IZ)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectTrack(I)V

    return-void
.end method

.method public selectTrack(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectTrack(IZ)V

    return-void
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sendCustomEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setAutoPlay(Z)V

    return-void
.end method

.method public setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/aliyun/player/nativeclass/CacheConfig;

    invoke-direct {p1}, Lcom/aliyun/player/nativeclass/CacheConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    return-void
.end method

.method public setDefaultBandWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDefaultBandWidth(I)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V

    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V

    return-void
.end method

.method public setFastStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFastStart(Z)V

    return-void
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFilterConfig(Lcom/aliyun/player/FilterConfig;)V

    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFilterInvalid(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setLoop(Z)V

    return-void
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMaxAccurateSeekDelta(I)V

    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMute(Z)V

    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V

    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    return-void
.end method

.method public setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    return-void
.end method

.method public setOnTrackReadyListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    :goto_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setPreferPlayerName(Ljava/lang/String;)V

    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V

    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSpeed(F)V

    return-void
.end method

.method public setStreamDelayTime(II)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setStreamDelayTime(II)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVideoBackgroundColor(I)V

    return-void
.end method

.method public setVideoTag([I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVideoTag([I)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVolume(F)V

    return-void
.end method

.method public snapshot()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->snapShot()V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->startInner()V

    return-void
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->stopInner()V

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->onStatusChanged(II)V

    return-void
.end method

.method protected stopInner()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->stop()V

    return-void
.end method

.method public surfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->surfaceChanged()V

    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V

    return-void
.end method
