.class Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->innerDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$header:Ljava/lang/String;

.field final synthetic val$saveName:Ljava/lang/String;

.field final synthetic val$timeout:Ljava/lang/Long;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$header:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$timeout:Ljava/lang/Long;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$app:Lcom/cloud/tmc/integration/structure/App;

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$saveName:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$filePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p9, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->lambda$onGranted$0(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onGranted$0(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v13, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    const-string v1, ""

    const-string v2, "m-timeout"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "60000"

    invoke-interface {v13, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v0, "x-byte-appid"

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_3

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v9, p5

    goto :goto_3

    :cond_4
    move-object v9, v0

    :goto_3
    const/16 v0, 0xa

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temp_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v14, v0

    goto :goto_5

    :cond_5
    invoke-static/range {p6 .. p6}, Lcom/cloud/tmc/integration/utils/FileUtil;->renameIfFileExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    const-string v0, "NativeRequestBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/cloud/tmc/integration/utils/FileUtil;->isFilePathValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v11, :cond_6

    iget-object v0, v10, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    const-string v1, "D0010"

    const-string v2, "Download Fail, file path contains illegal characters:D0010"

    invoke-static {v0, v1, v2, v12}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_6
    return-void

    :cond_7
    invoke-static {v14}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    new-instance v15, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;

    const/16 v5, 0xa

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v6, p6

    move-object v7, v14

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;-><init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;[IILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    move-object/from16 v1, p8

    move-object/from16 v2, p4

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, p8

    move-object v6, v15

    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    goto :goto_7

    :cond_8
    if-eqz v11, :cond_9

    iget-object v0, v10, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    const-string v1, "D008"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Fail,create file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fail:D008"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v12}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    if-eqz v11, :cond_9

    iget-object v1, v10, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Fail,Exception_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":D002"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "D002"

    invoke-static {v1, v2, v0, v12}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_9
    :goto_7
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    const-string v2, "Download Fail, no permission:D009"

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callbackId:Ljava/lang/String;

    const-string v4, "D009"

    invoke-static {v1, v4, v2, v3}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 12

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$header:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$timeout:Ljava/lang/Long;

    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$app:Lcom/cloud/tmc/integration/structure/App;

    iget-object v6, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$url:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$saveName:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$filePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v10, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callbackId:Ljava/lang/String;

    new-instance v11, Lcom/cloud/tmc/integration/bridge/i;

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/cloud/tmc/integration/bridge/i;-><init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    return-void
.end method
