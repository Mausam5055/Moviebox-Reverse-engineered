.class Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/ISaveImgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->saveImageToPhotosAlbum(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p2

    const-string v0, "errMsg"

    const-string v1, "Failed saved image to album, save failed: SA002"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method
