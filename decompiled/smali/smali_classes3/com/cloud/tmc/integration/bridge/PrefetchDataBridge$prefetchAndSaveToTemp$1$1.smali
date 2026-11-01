.class public final Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->prefetchAndSaveToTemp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016J\u001e\u0010\u000c\u001a\u00020\u00032\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001e\u0010\u0015\u001a\u00020\u00032\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016J\u0012\u0010\u0017\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016J\u001e\u0010\u0017\u001a\u00020\u00032\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "close",
        "",
        "dataJson",
        "Lcom/google/gson/JsonObject;",
        "getCallbackId",
        "",
        "sendBridgeResponse",
        "response",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;",
        "sendFailMapResponse",
        "sendFailResponse",
        "jsonObject",
        "map",
        "Ljava/util/HashMap;",
        "",
        "sendJSONResponse",
        "JsonObject",
        "keepCallback",
        "",
        "sendMapResponse",
        "sendSuccessMapResponse",
        "sendSuccessResponse",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public close(Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->$token:Ljava/lang/String;

    const-string v1, "token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V
    .locals 0

    return-void
.end method

.method public sendFailMapResponse()V
    .locals 0

    return-void
.end method

.method public sendFailResponse()V
    .locals 0

    return-void
.end method

.method public sendFailResponse(Lcom/google/gson/JsonObject;)V
    .locals 7

    const-string v0, "callbackId"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getMTempDataMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",\u9884\u53d6\u7684\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\u4e86,errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->getCallbackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_2
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getMTempDataMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    :cond_3
    return-void
.end method

.method public sendFailResponse(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendJSONResponse(Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method public sendJSONResponse(Lcom/google/gson/JsonObject;Z)V
    .locals 0

    return-void
.end method

.method public sendMapResponse(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendSuccessMapResponse()V
    .locals 0

    return-void
.end method

.method public sendSuccessResponse()V
    .locals 0

    return-void
.end method

.method public sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    .locals 9

    const-string v0, "callbackId"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-static {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->access$getKEY_RESPONSE_PREFETCH_TOKEN$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getMTempDataMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->getCallbackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",response:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->getExpiredTime()J

    move-result-wide v6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->access$getKEY_RESPONSE_PREFETCHDATA$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->access$getKEY_RESPONSE_PREFETCH_EXPIRED_TIME$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->access$getKEY_RESPONSE_PREFETCH_PREFETCH_TIME$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->access$getKEY_STORAGE_PREFETCH_DATA$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v6, v2, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_3
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getMTempDataMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    :cond_4
    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;->this$0:Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miniPrefetchData is null"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public sendSuccessResponse(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
