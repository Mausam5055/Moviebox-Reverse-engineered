.class public Lcom/hisavana/common/bean/AdSourceConfig;
.super Ljava/lang/Object;


# static fields
.field public static handler:Landroid/os/Handler; = null

.field public static isUseMediaView:Z = true


# instance fields
.field public appIconId:I

.field public appId:Ljava/lang/String;

.field public defaultMaterialMaxSize:I

.field public defaultVersion:J

.field public isClosePangleWebFileLock:Z

.field public isDebug:Z

.field public isEnableRewardedToast:Z

.field public isEnableVideoAd:Z

.field public isEnableWebRecommendFeature:Z

.field public isInitAdMob:Z

.field public isInitAlliance:Z

.field public isLite:Z

.field public pangleAppId:Ljava/lang/String;

.field public pkgEvn:Z

.field public shouldOptimizeImageLoading:Z

.field public testDevice:Z

.field public vidAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isInitAdMob:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/hisavana/common/bean/AdSourceConfig;->vidAppId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->shouldOptimizeImageLoading:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableRewardedToast:Z

    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableWebRecommendFeature:Z

    iput-boolean v1, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableVideoAd:Z

    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    return-void
.end method


# virtual methods
.method public createHandler()V
    .locals 2

    sget-object v0, Lcom/hisavana/common/bean/AdSourceConfig;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "loadad_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/hisavana/common/bean/AdSourceConfig;->handler:Landroid/os/Handler;

    return-void
.end method
