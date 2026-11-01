.class public Lcom/cloud/tmc/miniapp/TmcInitializer;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcInitializer"

.field private static alreadyInited:Z

.field private static alreadySetupProxy:Z

.field private static sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/TmcInitializer;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/cloud/tmc/miniapp/TmcInitializer;->init(Landroid/content/Context;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/extension/ExtensionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadyInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadyInited:Z

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/TmcInitializer;->setupProxy(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getExtensionRegistry()Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    new-instance p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;-><init>()V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/cloud/tmc/integration/bridge/AppOptionsBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/FileBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/GetClipboardBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/GetSdkVersionBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/LocalStorageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/FrameworkStorageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/MakePhoneCallBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/AppBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/NavigateBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/NavigationBarBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/PerfBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/PullRefreshBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/SendToSmsBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/SetClipboardBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/ShareBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/VibrateBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/BatteryBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/ScreenBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/PayBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/LatestUseBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/InnerWarmupBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/CommunicationBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/WifiBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/ReportBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/ScreenShotBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/TouchEventBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/HardwareBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/WebViewAbilityBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/ad/bridge/AdBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/internalBridge/GetAppConfigBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/internalBridge/GetPackageFileBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/internalBridge/NativeLogBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/internalBridge/OfflineDownloadBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/GlobalStorageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/NotifyMessageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/AppManagerDataProviderBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/LocationBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/cloud/tmc/miniapp/TmcInitializer;->registerBridge(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;Ljava/util/List;)V

    if-nez p1, :cond_3

    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;-><init>(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register bridge done with jsapi count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getActionCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->bind(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    sput-object p1, Lcom/cloud/tmc/miniapp/TmcInitializer;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    const-string p1, "setup ExtensionManager exception!"

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "setup ExtensionManager exception!"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static registerBridge(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;Ljava/util/List;)V
    .locals 2
    .param p0    # Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->make(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    move-result-object v0

    iget-object v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->target:Ljava/lang/Class;

    iget-object v0, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->scope:Ljava/lang/Class;

    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Failed to register bridge!"

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadyInited:Z

    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadySetupProxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setupProxy(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadySetupProxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadySetupProxy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->sApplicationContext:Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcApplicationContextGetter;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcApplicationContextGetter;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/BuildConfigProxyImp;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/BuildConfigProxyImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    new-instance v2, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IRefreshProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/RefreshProxyImpl;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/RefreshProxyImpl;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/JSAheadParamsProxyImp;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/JSAheadParamsProxyImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/performance/render/IRenderPool;

    new-instance v2, Lcom/cloud/tmc/integration/performance/render/RenderPool;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/render/RenderPool;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/render/IRenderFactory;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/worker/IWorkerManagerFactory;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/performance/worker/IWorkerPool;

    new-instance v2, Lcom/cloud/tmc/integration/performance/worker/WorkerPool;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/worker/WorkerPool;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$1;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$1;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$2;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$2;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IAdActivityGetProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/ad/AdActivityGetImp;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/AdActivityGetImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/OnRenderProcessGoneManager;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/OnRenderProcessGoneManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/ad/AdManager;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/AdManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$3;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$3;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IAdsenseProxy;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/AdsenseManager;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/AdsenseManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    new-instance v2, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    new-instance v2, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    new-instance v2, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceUtils;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceUtils;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/render/ILocalChannelProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$4;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$4;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$5;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$5;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/TmcKVStorageImpl;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcKVStorageImpl;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    new-instance v2, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    new-instance v2, Lcom/cloud/tmc/integration/resource/FileResourceManager;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/FileResourceManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    new-instance v2, Lcom/cloud/tmc/integration/resource/ImageResourceManager;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/ImageResourceManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    new-instance v2, Lcom/cloud/tmc/integration/resource/PackageResourceManager;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/PackageResourceManager;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    new-instance v2, Lcom/cloud/tmc/integration/resource/BaseResourceProcessor;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/BaseResourceProcessor;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$6;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$6;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$7;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$7;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/DefaultBridgeFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/DefaultBridgeFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;

    invoke-direct {v1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;-><init>()V

    const-class v2, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    new-instance v2, Lcom/cloud/tmc/integration/MsgDispatcher;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/MsgDispatcher;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcFragmentManagerFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcFragmentManagerFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    new-instance v2, Lcom/cloud/tmc/integration/invoke/DefaultExtensionInvokerFactory;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/invoke/DefaultExtensionInvokerFactory;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    new-instance v2, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    invoke-direct {v2}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/render/proxy/InjectJSProxy;

    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/InjectJSProxyImp;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/InjectJSProxyImp;-><init>()V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$8;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/TmcInitializer$8;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$9;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$9;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;

    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$10;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$10;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultLauncherMiniActivityProxy;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultLauncherMiniActivityProxy;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/kernel/service/ConfigService;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/VibrateProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$11;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$11;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/NativePermissionProxy;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/TmcPathImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcPathImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/FileProxy;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance p0, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;-><init>()V

    const-class v1, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/impl/TmcResourceManagerImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcResourceManagerImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/ImageSelectProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$12;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$12;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/UpdateLoadingStepProxyImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/UpdateLoadingStepProxyImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    new-instance v1, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$13;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$13;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/kernel/node/IGetNodeSource;

    new-instance v1, Lcom/cloud/tmc/miniapp/h;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/h;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/i;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/i;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/j;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/j;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    const-class p0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultWebViewDownloadImpl;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/DefaultWebViewDownloadImpl;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    const-string v1, "setupProxy error!"

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
