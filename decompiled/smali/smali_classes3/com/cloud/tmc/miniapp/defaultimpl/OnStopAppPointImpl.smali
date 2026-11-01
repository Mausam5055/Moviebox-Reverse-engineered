.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OnStopAppPointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/OnStopAppPoint;


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

.method public onStop(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    const-string v0, "pauseAppAudio"

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->pauseAppAudio(Lcom/cloud/tmc/integration/structure/App;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "stopAppAudioEffect"

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p2

    instance-of v0, p2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;->stopAppAudioEffect(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "OnResumeAppPoint"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
