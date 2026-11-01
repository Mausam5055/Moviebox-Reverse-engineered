.class public final Lcom/cloud/tmc/offline/download/OfflineManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0091\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e*\u0001.\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010K\u001a\u00020L2\u0008\u0010M\u001a\u0004\u0018\u00010\u00062\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0007J\u0012\u0010P\u001a\u00020\n2\u0008\u0010M\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010Q\u001a\u00020L2\u0006\u0010R\u001a\u00020SJ\u0010\u0010T\u001a\u00020L2\u0006\u0010U\u001a\u00020\u0006H\u0002J\u0010\u0010V\u001a\u00020L2\u0006\u0010U\u001a\u00020\u0006H\u0002J*\u0010W\u001a\u00020L2\u0006\u0010\u000e\u001a\u00020X2\u0018\u0008\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J*\u0010W\u001a\u00020L2\u0006\u0010\\\u001a\u00020]2\u0018\u0008\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J,\u0010W\u001a\u00020L2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0018\u0008\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J4\u0010^\u001a\u00020L2\u0008\u0010_\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010`\u001a\u00020\n2\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J\u0012\u0010a\u001a\u00020\n2\u0008\u0010M\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010b\u001a\u00020L2\u0006\u0010c\u001a\u00020dH\u0002J\u000f\u0010e\u001a\u0004\u0018\u00010SH\u0001\u00a2\u0006\u0002\u0008fJ\u001a\u0010g\u001a\n\u0012\u0004\u0012\u00020i\u0018\u00010h2\u0008\u0010j\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010k\u001a\u0004\u0018\u00010[2\u0006\u0010j\u001a\u00020\u0006H\u0007J\u001a\u0010k\u001a\u0004\u0018\u00010[2\u0006\u0010j\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u0006H\u0007J\u0012\u0010m\u001a\u0004\u0018\u00010[2\u0006\u0010M\u001a\u00020\u0006H\u0007J\u001e\u0010n\u001a\u0004\u0018\u00010o2\u0008\u0010M\u001a\u0004\u0018\u00010\u00062\u0008\u0010l\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010p\u001a\u00020L2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010q\u001a\u00020LH\u0002J\u0010\u0010r\u001a\u00020L2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010s\u001a\u00020\nH\u0002J\u0008\u0010t\u001a\u00020\nH\u0002J\r\u0010&\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008uJ\u0008\u0010v\u001a\u00020\nH\u0002J>\u0010w\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00062\n\u0008\u0002\u0010y\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010`\u001a\u00020\n2\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0002J\u0008\u0010z\u001a\u00020LH\u0007J2\u0010{\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010X2\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0002J\u001c\u0010|\u001a\u00020\n2\u0008\u0010M\u001a\u0004\u0018\u00010\u00062\u0008\u0010l\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\n8BX\u0083\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\rR\u001a\u0010\u0015\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\rR\u001a\u0010\u0018\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0019\u0010\u0002\u001a\u0004\u0008\u001a\u0010\rR\u001a\u0010\u001b\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u0002\u001a\u0004\u0008\u001d\u0010\rR\u001a\u0010\u001e\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0002\u001a\u0004\u0008 \u0010\rR\u001a\u0010!\u001a\u00020\n8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010\u0002\u001a\u0004\u0008!\u0010\rR\u001a\u0010#\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010\u0002\u001a\u0004\u0008%\u0010\rR\u000e\u0010&\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008)\u0010*R\u0010\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010/R\u001a\u00100\u001a\u00020\n8BX\u0083\u0004\u00a2\u0006\u000c\u0012\u0004\u00081\u0010\u0002\u001a\u0004\u00082\u0010\rR\u001a\u00103\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u00084\u0010\u0002\u001a\u0004\u00085\u00106R\u001a\u00107\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u0002\u001a\u0004\u00089\u00106R\u001a\u0010:\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008;\u0010\u0002\u001a\u0004\u0008<\u00106R(\u0010?\u001a\u0004\u0018\u00010>2\u0008\u0010=\u001a\u0004\u0018\u00010>@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010D\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008E\u0010\u0002\u001a\u0004\u0008F\u00106R\u001a\u0010G\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008H\u0010\u0002\u001a\u0004\u0008I\u0010J\u00a8\u0006}"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/OfflineManager;",
        "",
        "()V",
        "MIN_CHECK_OFFLINE_CONFIG_DEVIATE_TIME",
        "",
        "TAG",
        "",
        "application",
        "Landroid/app/Application;",
        "checkVersionEnable",
        "",
        "getCheckVersionEnable$com_cloud_tmc_offline_download$annotations",
        "getCheckVersionEnable$com_cloud_tmc_offline_download",
        "()Z",
        "config",
        "Lcom/google/gson/JsonObject;",
        "getConfig$com_cloud_tmc_offline_download",
        "()Lcom/google/gson/JsonObject;",
        "initLoad",
        "getInitLoad$annotations",
        "getInitLoad",
        "isDisableOfflinePkgFw",
        "isDisableOfflinePkgFw$com_cloud_tmc_offline_download$annotations",
        "isDisableOfflinePkgFw$com_cloud_tmc_offline_download",
        "isDisableOfflineResources",
        "isDisableOfflineResources$com_cloud_tmc_offline_download$annotations",
        "isDisableOfflineResources$com_cloud_tmc_offline_download",
        "isEnableAhaSoFormatConvert",
        "isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download$annotations",
        "isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download",
        "isEnablePrefetchCdnAppInfo",
        "isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations",
        "isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download",
        "isEnabled",
        "isEnabled$annotations",
        "isForceRefreshPrefetchCdnAppInfo",
        "isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations",
        "isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download",
        "isInit",
        "mTaskQueue",
        "Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;",
        "getMTaskQueue",
        "()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;",
        "mTaskQueue$delegate",
        "Lkotlin/Lazy;",
        "networkListener",
        "com/cloud/tmc/offline/download/OfflineManager$networkListener$1",
        "Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;",
        "networkLoad",
        "getNetworkLoad$annotations",
        "getNetworkLoad",
        "offlineManifestTimeInterval",
        "getOfflineManifestTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getOfflineManifestTimeInterval$com_cloud_tmc_offline_download",
        "()J",
        "offlineMaxUpdateTimeInterval",
        "getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download",
        "offlinePkgConfigTimeInterval",
        "getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download",
        "value",
        "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "onUpdateCallback",
        "getOnUpdateCallback$com_cloud_tmc_offline_download",
        "()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "setOnUpdateCallback$com_cloud_tmc_offline_download",
        "(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V",
        "prefetchCdnAppInfoTimeInterval",
        "getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download",
        "prefetchCdnAppInfoUrl",
        "getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download$annotations",
        "getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download",
        "()Ljava/lang/String;",
        "addOfflineLifecycleObserver",
        "",
        "appId",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "checkMiniAppInDisableAntiShakeList",
        "clearCache",
        "context",
        "Landroid/content/Context;",
        "doExecutePrePullAppInfoDownloadTask",
        "previousStep",
        "doExecutePrePullAppInfoUnZipTask",
        "downloadPkg",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
        "builder",
        "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;",
        "downloadPkgFromPlatform",
        "packageName",
        "antiShake",
        "enableVerifyServerFile",
        "execute",
        "task",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "getContext",
        "getContext$com_cloud_tmc_offline_download",
        "getOfflinePackageDownloadInfo",
        "",
        "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
        "group",
        "getOfflinePkgCachePath",
        "url",
        "getOfflinePkgFwCachePath",
        "getOfflineResources",
        "Ljava/io/File;",
        "init",
        "initH5Update",
        "initSomeThings",
        "isFast",
        "isHostFast",
        "isInit$com_cloud_tmc_offline_download",
        "isPrePullAppInfoFast",
        "loadConfig",
        "trigger",
        "_packageName",
        "prePullFeaturedAppInfo",
        "startDownloadTask",
        "verifyServerFile",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

.field private static final MIN_CHECK_OFFLINE_CONFIG_DEVIATE_TIME:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: OfflineManager"

.field private static application:Landroid/app/Application;

.field private static volatile isInit:Z

.field private static final mTaskQueue$delegate:Lkotlin/Lazy;

.field private static final networkListener:Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

.field private static onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    new-instance v0, Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->networkListener:Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager$mTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$mTaskQueue$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->mTaskQueue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->initSomeThings$lambda$16()Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$doExecutePrePullAppInfoDownloadTask(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->doExecutePrePullAppInfoDownloadTask(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$doExecutePrePullAppInfoUnZipTask(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->doExecutePrePullAppInfoUnZipTask(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getNetworkLoad()Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getNetworkLoad()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$initSomeThings(Lcom/cloud/tmc/offline/download/OfflineManager;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->initSomeThings(Landroid/app/Application;)V

    return-void
.end method

.method public static final synthetic access$startDownloadTask(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/OfflineManager;->startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;->addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "addOfflineLifecycleObserver"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->clearCache$lambda$28(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->init$lambda$15(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final checkMiniAppInDisableAntiShakeList(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkMiniAppInDisableAntiShakeList(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "checkMiniAppInDisableAntiShakeList"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final clearCache$lambda$28(Landroid/content/Context;)V
    .locals 14

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "clearOfflineDownloadCache"

    const-string v2, "{\"clear\":false,\"intervalTime\":604800}"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fromJson(\n              \u2026ava\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "appId_lastClearOfflineDownloadCache"

    const-string v4, "key_lastClearOfflineDownloadCache"

    invoke-interface {v2, p0, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long v12, v4, v6

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->getClear()Z

    move-result v4

    if-eqz v4, :cond_1

    sub-long v2, v12, v2

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->getIntervalTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v10, "appId_lastClearOfflineDownloadCache"

    const-string v11, "key_lastClearOfflineDownloadCache"

    move-object v9, p0

    invoke-interface/range {v8 .. v13}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApps()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/AppStoreInfo;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppStoreInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u904d\u5386\u4f7f\u7528\u8fc7\u7684\u5c0f\u7a0b\u5e8f\uff0c\u8fdb\u884c\u6e05\u9664\u7f13\u5b58\uff0cgroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TmcOfflineDownload: OfflineUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppStoreInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->deleteOfflineZipUnCompressDir(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->initSomeThings$lambda$17()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method private final doExecutePrePullAppInfoDownloadTask(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "\u9884\u62c9\u53d6\u7cbe\u9009 AppInfo \u80fd\u529b\u5df2\u5173\u95ed\uff0c\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoDownloadTask$1;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoDownloadTask$1;

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p0, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    return-void
.end method

.method private final doExecutePrePullAppInfoUnZipTask(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "\u9884\u62c9\u53d6\u7cbe\u9009 AppInfo \u80fd\u529b\u5df2\u5173\u95ed\uff0c\u89e3\u6790\u4efb\u52a1"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;

    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoUnZipTask$1;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoUnZipTask$1;

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p0, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    return-void
.end method

.method public static final downloadPkg(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final downloadPkg(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->build()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final downloadPkg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "TmcOfflineDownload: OfflineManager"

    :try_start_0
    sget-boolean v3, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_a

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :cond_4
    :try_start_1
    new-instance v3, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$offPkgConfig$pkgConfig$1;

    invoke-direct {v3}, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$offPkgConfig$pkgConfig$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v5, "object : TypeToken<OffPkgConfig?>() {}.type"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Json parse error"

    invoke-static {v2, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v4

    :goto_1
    if-nez v6, :cond_6

    if-eqz v1, :cond_5

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v0, v6}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Lcom/cloud/h5update/bean/UpdateEntity;

    invoke-static {v6}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "*.html"

    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgEncrypted()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v5, v13

    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v15

    new-instance v7, Lcom/cloud/h5update/bean/PreloadResource;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lcom/cloud/h5update/bean/PreloadResource;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/cloud/h5update/bean/UpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "normal"

    :cond_9
    invoke-virtual {v6, v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setType(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setExtraConfig(Ljava/lang/String;)V

    const-string v7, "api"

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    new-instance v3, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    new-instance v9, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$1;

    invoke-direct {v9, v6, v7, v1}, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/cloud/tmc/offline/download/task/DownloadTask;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v3}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    goto :goto_4

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    return-void

    :goto_3
    const-string v1, "Error downloading"

    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public static synthetic downloadPkg$default(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic downloadPkg$default(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic downloadPkg$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final downloadPkgFromPlatform(Ljava/lang/String;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final downloadPkgFromPlatform(Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final downloadPkgFromPlatform(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPkgFromPlatform: packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " antiShake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcOfflineDownload: OfflineManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    const-string v1, "api"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final enableVerifyServerFile(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->enableVerifyServerFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "Error enabling verify server file"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 13

    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnabled()Z

    move-result v0

    const-string v1, "TmcOfflineDownload: OfflineManager"

    if-nez v0, :cond_1

    const-string p1, "Offline download is disabled"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "Offline download current process is not mini process\uff0ccannot execute task"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "Network connection is not connected!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getTrigger()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute: task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " trigger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    instance-of v3, p1, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_4
    move-object v6, v4

    :goto_0
    sget-object v5, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getTrigger()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->isIdleRunTask()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v10, p1

    invoke-static/range {v5 .. v12}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v3, ""

    invoke-interface {v0, v4, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getMTaskQueue()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->add(Lcom/cloud/tmc/offline/download/task/base/ITask;)I

    return-void
.end method

.method public static final getCheckVersionEnable$com_cloud_tmc_offline_download()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "checkVersion"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check version enable config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic getCheckVersionEnable$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getContext$com_cloud_tmc_offline_download()Landroid/content/Context;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->application:Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final getInitLoad()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "initLoad"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init load config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static synthetic getInitLoad$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getMTaskQueue()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->mTaskQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;

    return-object v0
.end method

.method private static final getNetworkLoad()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "networkLoad"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network load config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static synthetic getNetworkLoad$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getOfflineManifestTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "offlineManifestTimeInterval"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline manifest time interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcOfflineDownload: OfflineManager"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static synthetic getOfflineManifestTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "offlineMaxUpdateTimeInterval"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline max update time interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcOfflineDownload: OfflineManager"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static synthetic getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getOfflinePackageDownloadInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    const/4 v2, 0x2

    invoke-static {v1, p0, v0, v2, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageDownloadInfo$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "TmcOfflineDownload: OfflineManager"

    const-string v2, "getOfflinePackageDownloadInfo"

    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static final getOfflinePkgCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "group"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isDisableOfflinePkgFw$com_cloud_tmc_offline_download()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v2, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageVersion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflinePkgCachePath: check offline package version is not available, group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflinePkgCachePath: \u79bb\u7ebf\u5305\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u7a0d\u540e\u518d\u8bf7\u6c42\uff0cappId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v3, p0, v5}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportMiniAppPackage(Ljava/lang/String;Z)V

    new-instance p0, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    const-string v2, "Unable to load offline package"

    invoke-static {v0, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static final getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const/16 v22, 0x0

    const/4 v9, 0x1

    const-string v1, "group"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v1, :cond_0

    return-object v23

    :cond_0
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    const v20, 0x3fe7b

    const/16 v21, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v24, v1

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v21}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual/range {v24 .. v24}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move/from16 v9, v22

    :goto_0
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    const-string v12, "api"

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    move-object v11, v3

    invoke-static/range {v10 .. v17}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "offline_pkg_search_resources_type"

    const-string v6, "dir"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "offline_pkg_appId"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v2, v9, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->reportOfflinePkgApiUsageStatus(ZLandroid/os/Bundle;)V

    if-eqz v9, :cond_5

    new-instance v0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setZipUnCompressPath(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setUrl(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setManifest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    :cond_4
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    aput-object v0, v4, v22

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_2
    const-string v1, "TmcOfflineDownload: OfflineManager"

    const-string v2, "Unable to download package"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v23
.end method

.method public static final getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "offlinePkgConfigTimeInterval"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline pkg config time interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcOfflineDownload: OfflineManager"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static synthetic getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getOfflinePkgFwCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "appId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isDisableOfflinePkgFw$com_cloud_tmc_offline_download()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v2, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageVersion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflinePkgFwCachePath: check offline package version is not available, appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflinePkgFwCachePath: \u79bb\u7ebf\u5305\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u7a0d\u540e\u518d\u8bf7\u6c42\uff0cappId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgFwCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, p0, v4}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportMiniAppPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :goto_1
    const-string v2, "Unable to load offline"

    invoke-static {v0, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static final getOfflineResources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isDisableOfflineResources$com_cloud_tmc_offline_download()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineResourceLegal$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " url: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageVersion(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ", url: "

    if-nez v3, :cond_3

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflineResources: check offline package version is not available, appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflineResources: \u79bb\u7ebf\u5305\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u7a0d\u540e\u518d\u8bf7\u6c42\uff0cappId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    const-class v2, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    new-instance v3, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    invoke-direct {v3, p0, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;->getResultWithInterceptorChain(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;->getBody()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    instance-of v4, v2, Ljava/io/File;

    invoke-virtual {v3, p0, v4, p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackResourceRecord(Ljava/lang/String;ZLjava/lang/String;)V

    instance-of p0, v2, Ljava/io/File;

    if-eqz p0, :cond_5

    check-cast v2, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :goto_0
    const-string p1, "getOfflineResources"

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v1
.end method

.method public static final getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "prefetchCdnAppInfoIntervals"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1b77400

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefetch cdn appInfo time interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcOfflineDownload: OfflineManager"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static synthetic getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "prefetchCdnAppInfoUrl"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "https://app-oss.byte-app.com/platform/appinfo/releaseInfo/allReleaseAppInfo.zip"

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch cdn appInfo url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final init(Landroid/app/Application;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "application"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/offline/download/OfflineManager$init$block$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/offline/download/OfflineManager$init$block$1;-><init>(Landroid/app/Application;)V

    :try_start_0
    sget-object p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isMainThread()Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init is main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object p0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/offline/download/b;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/offline/download/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static final init$lambda$15(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final initH5Update()V
    .locals 15

    const-string v0, "TmcOfflineDownload: OfflineManager"

    :try_start_0
    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    new-instance v2, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    sget-object v3, Lcom/cloud/tmc/offline/download/OfflineManager;->onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;-><init>(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    invoke-virtual {v1, v2}, Lcom/cloud/h5update/TH5Update$a;->r(Lt6/b;)V

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getOFFLINE_DOWNLOAD_MODE()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u79bb\u7ebf\u914d\u7f6e\u6a21\u5f0f\u4e3a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "test"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const-string v3, "pre"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79bb\u7ebf\u4e0b\u8f7d\u6a21\u5f0f\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (1:online;2:pre;3:test)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/cloud/h5update/TH5Update;->r(I)Lcom/cloud/h5update/TH5Update;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Landroid/app/Application;

    const/16 v13, 0x6e

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v14}, Lcom/cloud/h5update/TH5Update;->o(Lcom/cloud/h5update/TH5Update;Landroid/app/Application;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "Offline init H5 update failed!"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final declared-synchronized initSomeThings(Landroid/app/Application;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "OfflineManager init fails! Params is disabled"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-eqz v0, :cond_1

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "OfflineManager is initialized"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sput-object p1, Lcom/cloud/tmc/offline/download/OfflineManager;->application:Landroid/app/Application;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-class v0, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    new-instance v1, Lcom/cloud/tmc/offline/download/c;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/c;-><init>()V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v0, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    new-instance v1, Lcom/cloud/tmc/offline/download/d;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/d;-><init>()V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v0, Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;

    invoke-interface {v0}, Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;->enableNetworkListener()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getNetworkLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->networkListener:Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->addListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->initH5Update()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "OfflineManager initialized"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getInitLoad()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v1, "init"

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_4
    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "Offline init failed"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private static final initSomeThings$lambda$16()Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;-><init>()V

    return-object v0
.end method

.method private static final initSomeThings$lambda$17()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;-><init>()V

    return-object v0
.end method

.method public static final isDisableOfflinePkgFw$com_cloud_tmc_offline_download()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "offlinePkgFw"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "disable"

    goto :goto_0

    :cond_1
    const-string v0, "enable"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offlinePkgFw config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic isDisableOfflinePkgFw$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isDisableOfflineResources$com_cloud_tmc_offline_download()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "offlineResources"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "disable"

    goto :goto_0

    :cond_1
    const-string v0, "enable"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offlineResources config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic isDisableOfflineResources$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ahaSoFormatConvert"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ahaSoFormatConvert config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "enablePrefetchCdnAppInfo"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefetch cdn appInfo enable config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isEnabled()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79bb\u7ebf\u6a21\u5757\u603b\u5f00\u5173\u662f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic isEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final isFast()Z
    .locals 3

    const-string v0, "is_fast"

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static final isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z
    .locals 4

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "forceRefreshPrefetchCdnAppInfo"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "enabled"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force refresh prefetch cdn appInfo enable config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final isHostFast()Z
    .locals 3

    const-string v0, "is_host_fast"

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static final isInit$com_cloud_tmc_offline_download()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    return v0
.end method

.method private final isPrePullAppInfoFast()Z
    .locals 3

    const-string v0, "is_pre_pull_appInfo_fast"

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private final loadConfig(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "enable"

    goto :goto_0

    :cond_2
    const-string v0, "disabled"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "antiShake switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcOfflineDownload: OfflineManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " packageName: "

    const/4 v2, 0x0

    if-eqz p3, :cond_9

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading configuration time is too short, try later! trigger: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->isFast()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->isHostFast()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " host is fast"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    :cond_9
    if-nez p2, :cond_b

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_a
    move-object p2, v2

    :cond_b
    :goto_3
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_c

    goto :goto_4

    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig: trigger: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {p3, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineLoadMiniAppLegal(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "packageName: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid, unable to load config"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadConfig: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_d

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void

    :cond_e
    new-instance p3, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    new-instance v0, Lcom/cloud/tmc/offline/download/OfflineManager$loadConfig$1;

    invoke-direct {v0, p1, p4}, Lcom/cloud/tmc/offline/download/OfflineManager$loadConfig$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4, p1, v0}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p0, p3}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    return-void

    :cond_f
    :goto_4
    const-string p1, "packageName is null or empty!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_10

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method static synthetic loadConfig$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final prePullFeaturedAppInfo()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TmcOfflineDownload: OfflineManager"

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/OfflineManager;->isPrePullAppInfoFast()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "\u9884\u62c9\u53d6 AppInfo \u8dd1\u7684\u592a\u5feb\u4e86\uff01"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "\u9884\u62c9\u53d6\u7cbe\u9009 AppInfo \u80fd\u529b\u5df2\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;

    sget-object v3, Lcom/cloud/tmc/offline/download/OfflineManager$prePullFeaturedAppInfo$1;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$prePullFeaturedAppInfo$1;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-direct {v1, v2}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v2, "prePullFeaturedAppInfo failed"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private final startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p2

    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getDownloadModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadTask: trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isStartUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TmcOfflineDownload: OfflineManager"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    xor-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;

    invoke-direct {v2, p2, p1, p3}, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v1, p2, p1, v0, v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    invoke-direct {p0, v1}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    return-void
.end method

.method static synthetic startDownloadTask$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/OfflineManager;->startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "TmcOfflineDownload: OfflineManager"

    const-string v0, "Verify server file"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final clearCache(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/offline/download/a;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/offline/download/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCache error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;
    .locals 3

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getKEY_OFFLINE_CONFIG()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getDEFAULT_OFFLINE_DOWNLOAD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TmcOfflineDownload: OfflineManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getOnUpdateCallback$com_cloud_tmc_offline_download()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;

    return-object v0
.end method

.method public final setOnUpdateCallback$com_cloud_tmc_offline_download(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;->setOnUpdateCallback(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    if-nez v3, :cond_2

    new-instance v1, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;-><init>(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    invoke-virtual {v0, v1}, Lcom/cloud/h5update/TH5Update$a;->r(Lt6/b;)V

    :cond_2
    sput-object p1, Lcom/cloud/tmc/offline/download/OfflineManager;->onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "set update callback failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
