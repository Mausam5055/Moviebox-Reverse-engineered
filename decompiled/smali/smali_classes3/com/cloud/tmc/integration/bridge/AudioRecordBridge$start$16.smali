.class public final Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;->start(Lcom/cloud/tmc/integration/structure/App;JIIILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/AudioRecordBridge$start$16",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
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
.field final synthetic $app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic $audioClient:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

.field final synthetic $audioSource:Ljava/lang/String;

.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $encodeBitRate:I

.field final synthetic $numberOfChannels:I

.field final synthetic $recordFile:Ljava/io/File;

.field final synthetic $sampleRate:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;Ljava/lang/String;IIILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$audioClient:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$recordFile:Ljava/io/File;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$audioSource:Ljava/lang/String;

    iput p4, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$numberOfChannels:I

    iput p5, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$sampleRate:I

    iput p6, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$encodeBitRate:I

    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$recordFile:Ljava/io/File;

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "errMsg"

    const-string v3, "Audio failed with permission denied : A10011"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$app:Lcom/cloud/tmc/integration/structure/App;

    sget-object v3, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    invoke-virtual {v3, v2, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public onGranted()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$audioClient:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$recordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordFile.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$audioSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->convertKeyToAudioSource(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$numberOfChannels:I

    iget v4, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$sampleRate:I

    iget v5, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$encodeBitRate:I

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->startRecording(Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    return-void
.end method
