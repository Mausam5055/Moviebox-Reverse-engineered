.class Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$finalName:Ljava/lang/String;

.field final synthetic val$mProgress:[I

.field final synthetic val$progressStep:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;[IILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->this$1:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$mProgress:[I

    iput p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$progressStep:I

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$filePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$downloadPath:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$finalName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->this$1:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;

    iget-object p4, p4, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p3, p5}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    sget-object p1, Lcom/cloud/tmc/integration/utils/FileUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/FileUtil;

    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkMiniAppFileSizeStatus(Lcom/cloud/tmc/integration/structure/App;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$downloadPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$downloadPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$finalName:Ljava/lang/String;

    const-string v6, ""

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v2

    const-string v3, "tempFilePath"

    invoke-virtual {v2, v3, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v2, "filePath"

    invoke-virtual {v0, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    const-string v0, "callbackId"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    sget-object p1, Lcom/cloud/tmc/integration/utils/FileUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/FileUtil;

    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkMiniAppFileSizeStatus(Lcom/cloud/tmc/integration/structure/App;)V

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->sendMediaScanBroadcast(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "NativeRequestBridge"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
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

.method public progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$mProgress:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    if-lt p2, v1, :cond_0

    iget v2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$progressStep:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "progress"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "totalBytesWritten"

    invoke-virtual {v0, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "totalBytesExpectedToWrite"

    invoke-virtual {v0, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p2, "callbackId"

    invoke-virtual {v0, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "onProgress"

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method
