.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OnResumeAppPointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/OnResumeAppPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public onResume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    const-string v0, "restoreAppAudio"

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->restoreAppAudio(Lcom/cloud/tmc/integration/structure/App;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "restoreAppAudioEffect"

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p2

    instance-of v0, p2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;->restoreAppAudioEffect(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "OnResumeAppPoint"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method
