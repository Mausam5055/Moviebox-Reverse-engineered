.class public Lcom/aliyun/player/nativeclass/NativePlayerBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePlayerBase"

.field private static final UPDATE_CURRENT_POSITION:I = 0x3e8

.field private static final VIDEO_TYPE_FAIRPLAY:I = 0x10

.field private static final VIDEO_TYPE_HDR10:I = 0x2

.field private static final VIDEO_TYPE_NONE:I = 0x0

.field private static final VIDEO_TYPE_SDR:I = 0x1

.field private static final VIDEO_TYPE_WIDEVINE_L1:I = 0x4

.field private static final VIDEO_TYPE_WIDEVINE_L3:I = 0x8

.field private static libPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;


# instance fields
.field private mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

.field private mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

.field private mDirectRender:Z

.field private mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field private mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

.field private mEnableTunnelMode:Z

.field private mNativeContext:J

.field private mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

.field private mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field private mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

.field private mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

.field private mSurfaceFromUser:Z

.field private mVideoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    iput v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    sput-object p1, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getUserNativeLibPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetLibPath(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->loadPlugins()V

    :cond_0
    invoke-static {p1}, Lcom/aliyun/utils/DeviceInfoUtils;->setSDKContext(Landroid/content/Context;)V

    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->construct(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackReadyListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/view/Surface;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurfaceInner(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnRenderingStartListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nConstruct()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserNativeLibPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aliyun/player/bean/InfoBean;

    invoke-direct {v0}, Lcom/aliyun/player/bean/InfoBean;-><init>()V

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setCode(Lcom/aliyun/player/bean/InfoCode;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/bean/InfoBean;->setExtraValue(J)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    :cond_0
    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private loadPlugins()V
    .locals 6

    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cicada_plugin_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ".so"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "NativePlayerBase"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method protected static nConvertURLCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/aliyun/player/IPlayer$ConvertURLCallback;->convertURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static native nGetSdkVersion()Ljava/lang/String;
.end method

.method protected static native nSetBlackType(I)V
.end method

.method private nUpdateViewCallback(I)Z
    .locals 5
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nUpdateViewCallback videoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    iput p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    iget-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    sget-object v2, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v3, 0x8

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    :cond_1
    sget-object v2, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->SurfaceView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirectRender  = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-nez p1, :cond_3

    const-string p1, "nCreateViewCallback but view is null"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {p1, v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->needUpdateView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)Z

    move-result p1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;

    invoke-direct {v1, p0, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return p1
.end method

.method private native_onEventReport(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnReportEventListener;->onEventParam(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private native_onPreRenderFrameCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cicada/player/utils/FrameInfo;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;->onPreRenderFrame(Lcom/cicada/player/utils/FrameInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private native_onRenderFrameCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cicada/player/utils/FrameInfo;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;->onRenderFrame(Lcom/cicada/player/utils/FrameInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static setBlackType(I)V
    .locals 0

    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetBlackType(I)V

    return-void
.end method

.method public static setConvertURLCb(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V
    .locals 0

    sput-object p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    return-void
.end method

.method private setSurfaceInner(Landroid/view/Surface;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    const-string v1, "set surface not at main thread"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetSurface(Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nAddExtSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized clearScreen()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nClearScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected clearScreenIfNeed()V
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->clearScreen()V

    :cond_0
    return-void
.end method

.method public declared-synchronized enableHardwareDecoder(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableHardwareDecoder(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getBufferedPosition()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetBufferedPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetConfig()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/aliyun/player/nativeclass/PlayerConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCurrentPosition()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCurrentStreamInfo(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/player/nativeclass/TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getDuration()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetDuration()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetMirrorMode()I

    move-result v0

    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v3, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v3, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getNativeContext()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mNativeContext:J

    return-wide v0
.end method

.method public declared-synchronized getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$Option;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->RenderFPS:Lcom/aliyun/player/IPlayer$Option;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->DownloadBitrate:Lcom/aliyun/player/IPlayer$Option;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->VideoBitrate:Lcom/aliyun/player/IPlayer$Option;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->AudioBitrate:Lcom/aliyun/player/IPlayer$Option;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    :try_start_3
    const-string p1, "0"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetPlayerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPropertyString(I)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetPropertyString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetRotateMode()I

    move-result v0

    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v3, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v3, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_3
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v3, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetScaleMode()I

    move-result v0

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v3, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v3, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSpeed()F
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetSpeed()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVideoHeight()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVideoRotation()F
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoRotation()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVideoWidth()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVolume()F
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVolume()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invokeComponent(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nInvokeComponent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized isAutoPlay()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsAutoPlay()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isLoop()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsLoop()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isMuted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsMuted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected native nAddExtSubtitle(Ljava/lang/String;)V
.end method

.method protected native nClearScreen()V
.end method

.method protected native nConstruct()V
.end method

.method protected native nEnableFrameCb(Z)V
.end method

.method protected native nEnableHardwareDecoder(Z)V
.end method

.method protected native nEnablePreFrameCb(Z)V
.end method

.method protected native nEnableVideoRenderedCallback(Z)V
.end method

.method protected native nGetBufferedPosition()J
.end method

.method protected native nGetCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native nGetCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method protected native nGetConfig()Ljava/lang/Object;
.end method

.method protected native nGetCurrentPosition()J
.end method

.method protected native nGetCurrentStreamInfo(I)Ljava/lang/Object;
.end method

.method protected native nGetDuration()J
.end method

.method protected native nGetMirrorMode()I
.end method

.method protected native nGetOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native nGetPlayerName()Ljava/lang/String;
.end method

.method protected native nGetPropertyString(I)Ljava/lang/String;
.end method

.method protected native nGetRotateMode()I
.end method

.method protected native nGetScaleMode()I
.end method

.method protected native nGetSpeed()F
.end method

.method protected native nGetVideoHeight()I
.end method

.method protected native nGetVideoRotation()I
.end method

.method protected native nGetVideoWidth()I
.end method

.method protected native nGetVolume()F
.end method

.method protected native nInvokeComponent(Ljava/lang/String;)I
.end method

.method protected native nIsAutoPlay()Z
.end method

.method protected native nIsLoop()Z
.end method

.method protected native nIsMuted()Z
.end method

.method protected native nPause()V
.end method

.method protected native nPrepare()V
.end method

.method protected native nRelease()V
.end method

.method protected native nReload()V
.end method

.method protected native nSeekTo(JI)V
.end method

.method protected native nSelectExtSubtitle(IZ)V
.end method

.method protected native nSelectTrack(I)V
.end method

.method protected native nSelectTrackA(IZ)V
.end method

.method protected native nSendCustomEvent(Ljava/lang/String;)V
.end method

.method protected native nSetAutoPlay(Z)V
.end method

.method protected native nSetCacheConfig(Ljava/lang/Object;)V
.end method

.method protected native nSetConfig(Ljava/lang/Object;)V
.end method

.method protected native nSetConnectivityManager(Ljava/lang/Object;)V
.end method

.method protected native nSetDefaultBandWidth(I)V
.end method

.method protected native nSetFastStart(Z)V
.end method

.method protected native nSetFilterConfig(Ljava/lang/String;)V
.end method

.method protected native nSetFilterInvalid(Ljava/lang/String;Z)V
.end method

.method protected native nSetFrameCbConfig(ZZ)V
.end method

.method protected native nSetIPResolveType(I)V
.end method

.method protected native nSetLibPath(Ljava/lang/String;)V
.end method

.method protected native nSetLoop(Z)V
.end method

.method protected native nSetMaxAccurateSeekDelta(I)V
.end method

.method protected native nSetMirrorMode(I)V
.end method

.method protected native nSetMute(Z)V
.end method

.method protected native nSetOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected native nSetPreferPlayerName(Ljava/lang/String;)V
.end method

.method protected native nSetRotateMode(I)V
.end method

.method protected native nSetScaleMode(I)V
.end method

.method protected native nSetSpeed(F)V
.end method

.method protected native nSetStreamDelayTime(II)V
.end method

.method protected native nSetSurface(Landroid/view/Surface;)V
.end method

.method protected native nSetTraceID(Ljava/lang/String;)V
.end method

.method protected native nSetVideoBackgroundColor(I)V
.end method

.method protected native nSetVideoTag([I)V
.end method

.method protected native nSetVolume(F)V
.end method

.method protected native nSnapShot()V
.end method

.method protected native nStart()V
.end method

.method protected native nStop()V
.end method

.method protected native nSurfaceChanged()V
.end method

.method protected native nUpdateFilterConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected onAutoPlayStart()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$6;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$6;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onBufferedPositionUpdate(J)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$17;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCaptureScreen(II[B)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/graphics/Bitmap;II)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected onCircleStart()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$5;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$5;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCompletion()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$4;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$4;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCurrentDownloadSpeed(J)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCurrentPositionUpdate(J)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    long-to-int p1, p1

    const/4 p2, 0x0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onError(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    sget-object p3, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    move-object p3, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;

    invoke-direct {v0, p0, p3, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onEvent(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    sget-object p3, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    invoke-static {}, Lcom/aliyun/player/bean/InfoCode;->values()[Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/aliyun/player/bean/InfoCode;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    move-object p3, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;

    invoke-direct {v0, p0, p3, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/InfoCode;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFirstFrameShow()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->firstFrameRender(Z)V

    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$9;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$9;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onHideSubtitle(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLoadingEnd()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$23;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$23;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLoadingProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLoadingStart()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$18;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$18;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLocalCacheLoad(J)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$3;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$3;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSeekEnd()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$24;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$24;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSeiDataCallback(I[B)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onShowSubtitle(IJLjava/lang/String;Ljava/lang/Object;)V
    .locals 7

    iget-object p5, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v6, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJLjava/lang/String;)V

    invoke-virtual {p5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStatusChanged(II)V
    .locals 1

    iget-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$16;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$16;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$12;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$12;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$26;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSubtitleHeader(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSwitchStreamFail(Lcom/aliyun/player/nativeclass/TrackInfo;ILjava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v5

    if-ne v5, p2, :cond_0

    move-object v6, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;

    move-object v4, v1

    move-object v5, p0

    move v7, p2

    move-object v8, p3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;ILjava/lang/String;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSwitchStreamSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onUtcTimeUpdate(J)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$21;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onVideoRendered(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v7, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nPrepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nRelease()V

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nReload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected requestKey(Ljava/lang/String;[B)[B
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cicada/player/utils/media/DrmCallback;->requestKey(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected requestProvision(Ljava/lang/String;[B)[B
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cicada/player/utils/media/DrmCallback;->requestProvision(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized seekTo(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSeekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized seekTo(JI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSeekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public selectExtSubtitle(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectExtSubtitle(IZ)V

    return-void
.end method

.method public declared-synchronized selectTrack(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized selectTrack(IZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectTrackA(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSendCustomEvent(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setAutoPlay(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetAutoPlay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetCacheConfig(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableVideoTunnelRender:Z

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetConfig(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDefaultBandWidth(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetDefaultBandWidth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 1

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/videoview/AliDisplayView;->getDisplayViewHelper()Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;

    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoWidth()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoHeight()I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateViewCallback(I)Z

    :cond_2
    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    return-void
.end method

.method public declared-synchronized setFastStart(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFastStart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFilterConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFilterInvalid(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetIPResolveType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setLoop(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetLoop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMaxAccurateSeekDelta(I)V

    return-void
.end method

.method public declared-synchronized setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMirrorMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMute(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected setNativeContext(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mNativeContext:J

    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnablePreFrameCb(Z)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableFrameCb(Z)V

    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    return-void
.end method

.method public setOnTrackInfoGetListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    return-void
.end method

.method public setOnTrackSelectRetListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableVideoRenderedCallback(Z)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public declared-synchronized setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetPreferPlayerName(Ljava/lang/String;)V

    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 1

    iget-boolean v0, p1, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mVideoDataAddr:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean p1, p1, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mAudioDataAddr:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFrameCbConfig(ZZ)V

    return-void
.end method

.method public declared-synchronized setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetRotateMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/IPlayer$ScaleMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetScaleMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSpeed(F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetSpeed(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setStreamDelayTime(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetStreamDelayTime(II)V

    return-void
.end method

.method public declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurfaceInner(Landroid/view/Surface;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTraceId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetTraceID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setVideoBackgroundColor(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setBackgroundColor(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVideoBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVideoTag([I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVideoTag([I)V

    return-void
.end method

.method public declared-synchronized setVolume(F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized snapShot()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSnapShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->clearScreenIfNeed()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public surfaceChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSurfaceChanged()V

    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/aliyun/player/FilterConfig$FilterOptions;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateFilterConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
