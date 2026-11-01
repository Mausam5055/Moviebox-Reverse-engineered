.class public final Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/config/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1",
        "Lcom/cloud/config/s;",
        "",
        "code",
        "",
        "message",
        "",
        "onLoadDataFailure",
        "(ILjava/lang/String;)V",
        "onLoadDataSuccess",
        "()V",
        "innerQueryKey",
        "Ljava/lang/String;",
        "getInnerQueryKey",
        "()Ljava/lang/String;",
        "setInnerQueryKey",
        "(Ljava/lang/String;)V",
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
.field final synthetic $complete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field private innerQueryKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const-string p1, "defaultKey"

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInnerQueryKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    return-object v0
.end method

.method public onLoadDataFailure(ILjava/lang/String;)V
    .locals 2

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onLoadDataSuccess()V
    .locals 8

    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "whiteScreen"

    const-string v2, "{\"grayScale\": 0,\"checkNowDelay\": 1000,\"checkIntervalArray\": [5, 10, 15, 20]}"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fps"

    const-string v4, "{\"grayScale\": 0,\"jankThreshold\": 200,\"traceInterval\": 50}"

    invoke-virtual {v0, v2, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/cloud/tmc/integration/model/WhiteScreen;

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/WhiteScreen;

    const-class v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/WhiteScreen;->getGrayScale()F

    move-result v4

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/WhiteScreen;->getCheckNowDelay()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/WhiteScreen;->getCheckIntervalArray()[I

    move-result-object v1

    invoke-interface {v2, v4, v5, v1}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->initConfig(FLjava/lang/Long;[I)V

    sget-object v1, Lcom/cloud/tmc/fps/FpsManager;->INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/cloud/tmc/fps/data/ConfigData;

    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Gson().fromJson(\n       \u2026                        )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/fps/data/ConfigData;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/fps/FpsManager;->saveConfig(Lcom/cloud/tmc/fps/data/ConfigData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "logEReport"

    const-string v2, "{\"grayScale\": 0}"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/cloud/tmc/integration/model/LogEBean;

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/LogEBean;

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/LogEBean;->getGrayScale()F

    move-result v1

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;->saveConfig(F)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    const-string v2, "closeMiniAppSDK"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadService closeSDK = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigService"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "networkImproveNumV2"

    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    move-result v0

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    const-string v6, "miniLauncherGlobal"

    const-string v7, "network_improve_key"

    invoke-interface {v2, v5, v6, v7}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    invoke-interface {v1, v5, v6, v7, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eq v2, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v5, 0xa

    int-to-long v5, v5

    rem-long/2addr v1, v5

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0, v3}, Lcom/tmc/network/NetworkConfig;->setNetworkImproveEnable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->access$updateConfigAppinfo(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V

    return-void
.end method

.method public final setInnerQueryKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;->innerQueryKey:Ljava/lang/String;

    return-void
.end method
