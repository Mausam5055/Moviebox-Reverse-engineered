.class public final Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/audio/AudioEffectClient;->downloadAndLoad(Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J6\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1",
        "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
        "onCancel",
        "",
        "url",
        "",
        "callbackId",
        "onFailed",
        "errorCode",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "onFinish",
        "onPrepare",
        "onProgress",
        "progress",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $downloadPath:Ljava/lang/String;

.field final synthetic $pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

.field final synthetic $src:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;

    iput-object p4, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$src:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$downloadPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cancel request."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioEffectClient"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 0

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AudioEffectClient"

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->getMAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$src:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$downloadPath:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    iget-object p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;

    invoke-static {p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->access$getMSoundPool$p(Lcom/cloud/tmc/integration/audio/AudioEffectClient;)Landroid/media/SoundPool;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$downloadPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getPriority()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->setResId(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_1
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
