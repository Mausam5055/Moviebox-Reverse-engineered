.class Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->imageSelect(Landroid/content/Context;ILcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/resource/IImageResourceManager;Ljava/util/List;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->lambda$onSelected$0(Ljava/util/ArrayList;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/resource/IImageResourceManager;Ljava/util/List;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    return-void
.end method

.method private synthetic lambda$onSelected$0(Ljava/util/ArrayList;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/resource/IImageResourceManager;Ljava/util/List;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7

    const-string v0, "ImageSelectBridge"

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "temp_data"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/miniutils/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {p3, v3, v4, v5, v6}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    invoke-static {v4, v2, v3}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->c(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    invoke-static {p1, p4}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->b(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;Ljava/util/List;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public onAuthorized(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v1, "errMsg"

    const-string v2, "Failed choose image from album, no permission: CM002"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "errMsg"

    const-string v3, "Failed choose image from album, cencel select: CM003"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public onDialogClickCancel()V
    .locals 0

    return-void
.end method

.method public onSelected(Ljava/util/ArrayList;)V
    .locals 9
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getImageResourceManagerProxy()Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$app:Lcom/cloud/tmc/integration/structure/App;

    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    new-instance v8, Lcom/cloud/tmc/integration/bridge/h;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/bridge/h;-><init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$1;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/resource/IImageResourceManager;Ljava/util/List;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-static {v0, v8}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method
