.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;
.super Ljava/lang/Object;


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

.field public static final OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;
    .locals 9

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "miniPreStrategyConfig"

    const-string v4, "miniPreCdnConfig"

    invoke-interface {v2, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v2, "preStrategyConfig.json"

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-class v2, Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    invoke-static {v3, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v5, "miniPreStrategyConfig"

    const-string v6, "miniRefreshConfigDiff"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_1
    const-string v0, "PreStrategyConfigManager"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v1
.end method

.method public final OooO0O0(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;
    .locals 5

    const-string v0, "PreStrategyConfigManager"

    if-nez p1, :cond_0

    const-string p1, "getPreStrategyConfig context is null "

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    move-result-object v1

    sput-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    goto :goto_0

    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniPreStrategyConfig"

    const-string v3, "miniRefreshConfigDiff"

    invoke-interface {v1, p1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x2932e00

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o(Landroid/content/Context;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    move-result-object v1

    sput-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    :cond_2
    :goto_0
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "enablePreZeroScreenUpdate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO(Landroid/content/Context;)V

    const-string p1, "getPreStrategyConfig enableStatus is true"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    sget-object p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    return-object p1
.end method

.method public final OooO0OO(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO0O0()Z

    move-result v0

    const-string v1, "PreStrategyConfigManager"

    if-eqz v0, :cond_0

    const-string p1, "execute new prefetch strategy."

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "requestStrategyConfig is refreshing"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "miniPreStrategyConfig"

    const-string v4, "miniRequestConfigDiff"

    invoke-interface {v0, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v7, "updatePreConfigInterval"

    const/16 v8, 0x18

    invoke-virtual {v0, v7, v8}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit16 v0, v0, 0xe10

    :goto_0
    int-to-long v7, v0

    mul-long/2addr v7, v5

    goto :goto_1

    :catchall_0
    const v0, 0x15180

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    sget-object v5, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    if-nez v5, :cond_2

    goto :goto_5

    :cond_2
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v5, "forceUpdatePreConfig"

    const-string v6, "{\"enable\":false,\"version\":\"0.0.1\"}"

    invoke-virtual {v2, v5, v6}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    const-class v6, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;

    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;

    if-nez v2, :cond_3

    new-instance v2, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;

    const-string v5, "0.0.0"

    invoke-direct {v2, v0, v5}, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;-><init>(ZLjava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;->getEnable()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;->getVersion()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;->getConfigVerion()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    const-string v6, ""

    :cond_5
    invoke-virtual {v5, v2, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :cond_6
    :goto_3
    move v2, v0

    goto :goto_5

    :goto_4
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_5
    if-nez v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v2, v5, v7

    if-gez v2, :cond_7

    sget-object p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestStrategyConfig diff < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",latestRequest ->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getPreStrategyCdnUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v7, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o$OooO00o;

    invoke-direct {v7, p1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o$OooO00o;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method
