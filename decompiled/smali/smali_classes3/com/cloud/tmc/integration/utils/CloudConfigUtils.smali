.class public final Lcom/cloud/tmc/integration/utils/CloudConfigUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J.\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cJ\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001e\u0010 \u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u000fJ \u0010\"\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/CloudConfigUtils;",
        "",
        "()V",
        "DEFAULT_QUERY_KEY",
        "",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "cloudConfigRequestInterval",
        "",
        "getCloudConfigRequestInterval",
        "()J",
        "setCloudConfigRequestInterval",
        "(J)V",
        "isRequesting",
        "",
        "requestingMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getRequestingMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "checkAllowCloudConfigRequest",
        "context",
        "Landroid/content/Context;",
        "checkCloudConfigRequestInterval",
        "requestKey",
        "checkEnableConfigRequest",
        "queryKey",
        "complete",
        "Lkotlin/Function1;",
        "",
        "checkUseSuccessCallback",
        "updateCdnConfig",
        "updateCloudConfigRequestStatus",
        "success",
        "updateCloudConfigStatus",
        "status",
        "intervalBySuccess",
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


# static fields
.field public static final DEFAULT_QUERY_KEY:Ljava/lang/String; = "defaultKey"

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

.field private static final TAG:Ljava/lang/String;

.field private static cloudConfigRequestInterval:J

.field private static volatile isRequesting:Z

.field private static final requestingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    const-string v0, "CloudConfigUtils"

    sput-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setRequesting$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    return-void
.end method

.method public static final synthetic access$updateCloudConfigStatus(Lcom/cloud/tmc/integration/utils/CloudConfigUtils;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigStatus(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private final checkAllowCloudConfigRequest(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCdnConfig(Landroid/content/Context;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniLauncherGlobal"

    const-string v3, "enableRequestConfig"

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "checkAllowCloudConfigRequest"

    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private final checkCloudConfigRequestInterval(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "ccrInterval"

    const-wide/32 v3, 0x2932e00

    invoke-virtual {v1, v2, v3, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniLauncherGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latestRequestTime_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    sget-wide v3, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    const-string v2, ",cloudConfigRequestInterval->"

    if-gez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cloud config request interval is not over,currentTime->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",latestReuestTime->"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cloud config request interval is over,latestReuestTime->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :goto_0
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    const-string v1, "checkCloudConfigRequestInterval error"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private final checkUseSuccessCallback(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v1, "miniLauncherGlobal"

    const-string v2, "requestIntervalBySuccess"

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateCloudConfigStatus"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final updateCdnConfig(Landroid/content/Context;)V
    .locals 8

    sget-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    const-string v1, "updateCdnConfig isRequesting->"

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniLauncherGlobal"

    const-string v3, "laterestRequestCdnTime"

    invoke-interface {v0, p1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v4, "cdnrInterval"

    const-wide/32 v5, 0x2932e00

    invoke-virtual {v0, v4, v5, v6}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    return-void

    :cond_1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v6, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;

    invoke-direct {v6, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;-><init>(Landroid/content/Context;)V

    const-string v2, "https://cloud-config-oss.shalltry.com/cloudconfig/config/onoff/miniapp_cloudconfig_onoff.json"

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method private final updateCloudConfigStatus(Landroid/content/Context;ZZ)V
    .locals 5

    const-string v0, "updateCloudConfigStatus"

    const-string v1, "miniLauncherGlobal"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    :try_start_0
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v4, "enableRequestConfig"

    invoke-interface {v3, p1, v1, v4, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v3, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "requestIntervalBySuccess"

    invoke-interface {p2, p1, v1, v2, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final checkEnableConfigRequest(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p2, "defaultKey"

    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud config request is requesting, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v3

    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkAllowCloudConfigRequest(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    const-string v4, "cloud config request is not enable"

    invoke-static {p1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return v3

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkCloudConfigRequestInterval(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return v3

    :cond_8
    return v0

    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    const-string p3, "checkEnableConfigRequest"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final getCloudConfigRequestInterval()J
    .locals 2

    sget-wide v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    return-wide v0
.end method

.method public final getRequestingMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final setCloudConfigRequestInterval(J)V
    .locals 0

    sput-wide p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    return-void
.end method

.method public final updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkUseSuccessCallback(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-class p3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniLauncherGlobal"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latestRequestTime_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCloudConfigRequestStatus requestKey: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    const-string p3, "updateCloudConfigRequestStatus error: "

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method
