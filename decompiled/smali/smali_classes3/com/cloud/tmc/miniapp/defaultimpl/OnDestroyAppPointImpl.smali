.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyAppPointImpl$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 6

    const-string v0, "onNetworkStatusChange"

    const-string v1, "app"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "OnDestroyAppPoint"

    if-eqz p2, :cond_1

    :try_start_0
    const-string v2, "releaseAppAudio"

    invoke-interface {p2, p1, v2}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v2

    instance-of v3, v2, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->releaseAppAudio(Lcom/cloud/tmc/integration/structure/App;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "releaseAppAudioEffect"

    invoke-interface {p2, p1, v2}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v2

    instance-of v3, v2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;->releaseAppAudioEffect(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    const-string v2, "releaseKeyboardBridge"

    const-string v3, "OnDestroyAppPointImpl"

    if-eqz p2, :cond_2

    :try_start_1
    const-string v4, "offKeyboardHeightChange"

    invoke-interface {p2, p1, v4}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v4

    instance-of v5, v4, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->checkEventSubscriber(Lcom/cloud/tmc/integration/structure/App;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    invoke-static {v3, v2, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    if-eqz p2, :cond_3

    :try_start_2
    const-string v4, "destroyAppWifi"

    invoke-interface {p2, p1, v4}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v4

    instance-of v5, v4, Lcom/cloud/tmc/integration/bridge/WifiBridge;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/cloud/tmc/integration/bridge/WifiBridge;

    invoke-virtual {v4, p1}, Lcom/cloud/tmc/integration/bridge/WifiBridge;->destroyAppWifi(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    invoke-static {v3, v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    :try_start_3
    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v1

    instance-of v4, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge;

    if-eqz v4, :cond_4

    check-cast v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge;

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/bridge/NetworkBridge;->clearNetworkChangeListenModel(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v1

    invoke-static {v3, v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    :try_start_4
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    if-nez v0, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStarts()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStops()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_7
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnPauses()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnResumes()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_9
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnErrors()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_a
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getRecorderClientCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->stopRecording()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_8

    :goto_7
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    :try_start_5
    const-class v0, Lcom/cloud/tmc/integration/model/WebViewStore;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/WebViewStore;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/WebViewStore;->getOnDownloads()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_9
    :try_start_6
    const-class v0, Lcom/cloud/tmc/integration/model/FileCache;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFlags()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    const-class v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_10
    const-class v0, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabReSelectedStore;->getPageCache()Ljava/util/WeakHashMap;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_12
    :goto_c
    if-eqz p2, :cond_13

    :try_start_7
    const-string v0, "changePrefetchStatus"

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p2

    instance-of v0, p2, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;

    if-eqz v0, :cond_13

    check-cast p2, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;->changePrefetchStatus(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p1

    :try_start_8
    invoke-static {v3, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception p1

    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_d
    return-void
.end method

.method public onFinalized()V
    .locals 2

    const-string v0, "OnDestroyAppPointImpl"

    const-string v1, "onFinalized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitialized()V
    .locals 2

    const-string v0, "OnDestroyAppPointImpl"

    const-string v1, "onInitialized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
