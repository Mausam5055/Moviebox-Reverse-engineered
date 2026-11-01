.class public final Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0011\u001a\u00020\u00122\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016Jy\u0010\u001c\u001a\u00020\u00122\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0001\u0010#\u001a\u0004\u0018\u00010\"2\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010%J*\u0010&\u001a\u00020\u00122\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "KEY_RESPONSE_PREFETCHDATA",
        "",
        "KEY_RESPONSE_PREFETCH_EXPIRED_TIME",
        "KEY_RESPONSE_PREFETCH_PREFETCH_TIME",
        "KEY_RESPONSE_PREFETCH_TOKEN",
        "KEY_STORAGE_PREFETCH_DATA",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "mTempDataMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
        "getMTempDataMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "getPrefetchData",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "prefetchToken",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "onFinalized",
        "onInitialized",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "prefetchAndSaveToTemp",
        "url",
        "method",
        "requestHeader",
        "requestParam",
        "requestTimeout",
        "",
        "prefetchExpiredTime",
        "callbackId",
        "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "removePrefetchData",
        "MiniPrefetchData",
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
.field private final KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

.field private final KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

.field private final KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

.field private final KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

.field private final KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PrefetchDataBridge"

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "mini_PrefetchData"

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    const-string v0, "prefetchData"

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    const-string v0, "prefetchToken"

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    const-string v0, "expiredTime"

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

    const-string v0, "prefetchTime"

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCHDATA$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCH_EXPIRED_TIME$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCH_PREFETCH_TIME$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCH_TOKEN$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKEY_STORAGE_PREFETCH_DATA$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final getMTempDataMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getPrefetchData(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "prefetchToken"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "prefetchToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    const-string p2, "errMsg"

    const-string v1, "Failed Prefetch data, context is null: PD001"

    invoke-virtual {p1, p2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    const-string v2, "app?.appContext?.context\u2026     return\n            }"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    invoke-interface {v2, p1, v3, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v2, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$getPrefetchData$1$1$map$1;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$getPrefetchData$1$1$map$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_6
    move-wide v6, v4

    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "token:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",prefetchData is exist"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prefetchTime:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",expiredTime:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v6, v4

    cmp-long p1, v6, v8

    if-ltz p1, :cond_8

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefetchData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",prefetchData expired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_9
    :goto_3
    if-nez v1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",prefetchData is not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_b

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p1
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final prefetchAndSaveToTemp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 16
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "url"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "method"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "requestHeader"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "requestParam"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "requestTimeout"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "prefetchExpiredTime"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "callbackId"
            }
        .end annotation
    .end param
    .param p9    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    iget-object v4, v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v5, "errMsg"

    const-string v6, "Failed Prefetch data, context is null: PD001"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v5, "callbackId"

    invoke-virtual {v0, v5, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    return-void

    :cond_2
    :try_start_1
    const-string v6, "app?.appContext?.context\u2026     return\n            }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v5, "errMsg"

    const-string v6, "Failed Prefetch data, appId is null: PD002"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v5, "callbackId"

    invoke-virtual {v0, v5, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v4

    return-void

    :cond_4
    :try_start_2
    const-string v7, "app.appId ?: kotlin.run \u2026     return\n            }"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v6, v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "token"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    if-eqz v0, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_5
    const-wide/16 v8, 0x0

    :goto_1
    invoke-direct {v7, v8, v9, v3, v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;-><init>(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    invoke-interface {v6, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    const-string v3, "requestChannel"

    const-string v6, "prefetch"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v2

    goto :goto_2

    :catchall_1
    move-object/from16 v10, p4

    :goto_2
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v2

    const-string v3, "request"

    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v2

    instance-of v3, v2, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",requestParam:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",header:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",requestTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",prefetchExpiredTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",token:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    new-instance v14, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;

    invoke-direct {v14, v1, v5, v13}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;-><init>(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    return-void

    :goto_3
    monitor-exit v4

    throw v0
.end method

.method public final removePrefetchData(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "prefetchToken"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "prefetchToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    const-string p2, "errMsg"

    const-string v1, "Failed Prefetch data, context is null: PD001"

    invoke-virtual {p1, p2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    const-string v1, "app?.appContext?.context\u2026     return\n            }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
