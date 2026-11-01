.class public final Lcom/cloud/tmc/miniapp/GlobalPackageConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/intf/IPackageConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;
    }
.end annotation


# static fields
.field private static final BRAND_VERSION_PREFIX:Ljava/lang/String; = "1"

.field public static final Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

.field private static final SDK_BRAND_VERSION:Ljava/lang/String;

.field private static final SDK_BUILD_VARIANT_TYPE:Ljava/lang/String;

.field private static final SDK_DEV_VERSION:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static frameworkVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BRAND_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_DEV_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_BUILD_VARIANT_TYPE()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BUILD_VARIANT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppId$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFrameworkVersion$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSDK_BRAND_VERSION$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BRAND_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSDK_BUILD_VARIANT_TYPE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BUILD_VARIANT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSDK_DEV_VERSION$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_DEV_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setAppId$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setFrameworkVersion$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    return-void
.end method

.method private final saveValueForLauncher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "miniLauncherGlobal"

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "[GlobalPackageConfig] saveValueForLauncher"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDevSDKVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_DEV_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenMutipleTask()Z
    .locals 5

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "miniLauncherGlobal"

    const-string v3, "miniMutipleTask"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "[GlobalPackageConfig] getMutipleTaskStatus"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BRAND_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miniHostAppId"

    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->saveValueForLauncher(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    return-void
.end method

.method public setFrameworkVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "miniHostFwVersion"

    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->saveValueForLauncher(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    return-void
.end method

.method public setOpenMutipleTask(Z)V
    .locals 4

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "miniLauncherGlobal"

    const-string v3, "miniMutipleTask"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "[GlobalPackageConfig] setOpenMutipleTask"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
