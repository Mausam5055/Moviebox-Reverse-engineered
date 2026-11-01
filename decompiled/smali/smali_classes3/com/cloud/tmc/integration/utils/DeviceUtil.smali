.class public final Lcom/cloud/tmc/integration/utils/DeviceUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001AB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010&\u001a\u00020\u001c2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u0006H\u0007J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J\u0008\u0010.\u001a\u00020\u0004H\u0007J\u0006\u0010/\u001a\u00020\u0006J\u0008\u00100\u001a\u0004\u0018\u00010\u0004J\u0006\u00101\u001a\u00020\u0004J\u0010\u00101\u001a\u0004\u0018\u00010\u00042\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u00020\u001cJ\n\u00105\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u00106\u001a\u00020+2\u0008\u00102\u001a\u0004\u0018\u0001032\u0006\u0010,\u001a\u00020-J\n\u00107\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u00108\u001a\u0004\u0018\u00010\u0004H\u0007J\u0015\u00109\u001a\u00020\u00042\u0008\u0010:\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u0004H\u0002J\u0008\u0010>\u001a\u00020+H\u0002J\u0010\u0010?\u001a\u00020+2\u0008\u0010@\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006B"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/DeviceUtil;",
        "",
        "()V",
        "AD_ABILITY_CLOSE_GAID",
        "",
        "CLOSE_GAID",
        "",
        "GET_GAID_TIME_INTERVAL",
        "NOT_GAID",
        "OPEN_GAID",
        "PREF_GAID",
        "PREF_IS_LIMIT_AD_TRACKING_ENABLED",
        "TAG",
        "cpucores",
        "getCpucores",
        "()I",
        "setCpucores",
        "(I)V",
        "cpuhardware",
        "getCpuhardware",
        "()Ljava/lang/String;",
        "setCpuhardware",
        "(Ljava/lang/String;)V",
        "gsmInteger",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "ip",
        "isLimitStatus",
        "isNewUser",
        "",
        "lastQueryGaidTime",
        "",
        "mGAId",
        "mGsmLocation",
        "totalMem",
        "getTotalMem",
        "()J",
        "setTotalMem",
        "(J)V",
        "checkCanRetryInTimes",
        "value",
        "increment",
        "limit",
        "getCupInfo",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "getGAId",
        "getGaidStatus",
        "getGsmCellLocation",
        "getIp",
        "context",
        "Landroid/content/Context;",
        "getIsNewUserStatus",
        "getLocalIpAddress",
        "getMemoryInfo",
        "getSystemVersion",
        "getUUID",
        "intToIp",
        "ipInt",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
        "isValidIp4Address",
        "hostName",
        "queryGaid",
        "updateIsNewUserStatus",
        "appId",
        "AdvertisingIdClient",
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
.field private static final AD_ABILITY_CLOSE_GAID:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field private static final CLOSE_GAID:I = 0x1

.field private static final GET_GAID_TIME_INTERVAL:I = 0x927c0

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

.field private static final NOT_GAID:I = 0x0

.field private static final OPEN_GAID:I = 0x2

.field private static final PREF_GAID:Ljava/lang/String;

.field private static final PREF_IS_LIMIT_AD_TRACKING_ENABLED:Ljava/lang/String; = "is_limit_ad_tracking_enabled"

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"

.field private static cpucores:I

.field private static cpuhardware:Ljava/lang/String;

.field private static final gsmInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static ip:Ljava/lang/String;

.field private static isLimitStatus:I

.field private static isNewUser:Z

.field private static lastQueryGaidTime:J

.field private static mGAId:Ljava/lang/String;

.field private static mGsmLocation:Ljava/lang/String;

.field private static totalMem:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    const-string v0, ""

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    const-string v1, "device_util_ga_id"

    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->PREF_GAID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->lastQueryGaidTime:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->gsmInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    const/4 v1, -0x1

    sput v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId$lambda$0()V

    return-void
.end method

.method public static final checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "increment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-lt p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static final getGAId()Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->lastQueryGaidTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->lastQueryGaidTime:J

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "minisdk_storage"

    sget-object v3, Lcom/cloud/tmc/integration/utils/DeviceUtil;->PREF_GAID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/integration/utils/j;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/utils/j;-><init>()V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->queryGaid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "DeviceUtil"

    const-string v2, "getGAId"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    return-object v0
.end method

.method private static final getGAId$lambda$0()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->queryGaid()V

    return-void
.end method

.method private final getLocalIpAddress()Ljava/lang/String;
    .locals 6

    const-string v0, "ip.hostAddress"

    const-string v1, ""

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isValidIp4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DeviceUtil"

    const-string v3, "getLocalIpAddress: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public static final getSystemVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUUID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final isValidIp4Address(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private final queryGaid()V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const-string v3, "minisdk_storage"

    sget-object v4, Lcom/cloud/tmc/integration/utils/DeviceUtil;->PREF_GAID:Ljava/lang/String;

    sget-object v5, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    move-result-object v1

    const-string v2, "is_limit_ad_tracking_enabled"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/transsion/core/utils/f;->n(Ljava/lang/String;I)V

    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gaid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/transsion/core/log/LogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public final getCpucores()I
    .locals 1

    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    return v0
.end method

.method public final getCpuhardware()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    return-object v0
.end method

.method public final getCupInfo(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "HARDWARE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    :cond_1
    const-string v0, "cpucores"

    sget v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cpuhardware"

    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "DeviceUtil"

    const-string v1, "getCupInfo: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final getGaidStatus()I
    .locals 3

    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isLimitStatus:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    move-result-object v0

    const-string v1, "is_limit_ad_tracking_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/core/utils/f;->f(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isLimitStatus:I

    :cond_0
    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isLimitStatus:I

    return v0
.end method

.method public final getGsmCellLocation()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->gsmInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    const-string v2, "DeviceUtil"

    const-string v3, "getGsmCellLocation: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->intToIp(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, "DeviceUtil"

    const-string v2, "getIp: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/net/ConnectivityManager;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const/4 v3, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    goto :goto_8

    :cond_4
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_5
    move-object p1, v1

    :goto_4
    instance-of v0, p1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_5

    :cond_6
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    goto :goto_6

    :cond_7
    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_8
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->intToIp(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    const-string v0, "DeviceUtil"

    const-string v1, "getIp: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_8
    sget-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    return-object p1
.end method

.method public final getIsNewUserStatus()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isNewUser:Z

    return v0
.end method

.method public final getMemoryInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    sget-wide v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "totalMem"

    sget-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "DeviceUtil"

    const-string v0, "getMemoryInfo: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public final getTotalMem()J
    .locals 2

    sget-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    return-wide v0
.end method

.method public final intToIp(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setCpucores(I)V
    .locals 0

    sput p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    return-void
.end method

.method public final setCpuhardware(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    return-void
.end method

.method public final setTotalMem(J)V
    .locals 0

    sput-wide p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    return-void
.end method

.method public final updateIsNewUserStatus(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isNewUser:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isNewUser:Z

    :try_start_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;->reportCacheData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
