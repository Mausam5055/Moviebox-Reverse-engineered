.class public final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0007J0\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010 \u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0002\u0010$J&\u0010%\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007J\u0008\u0010&\u001a\u0004\u0018\u00010\rJ\u001c\u0010\'\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010(\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007J&\u0010)\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010*\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010#\u001a\u00020\u000fH\u0007J&\u0010+\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007J8\u0010+\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u001a\u0010,\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010-j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`.2\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007J&\u0010/\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0007J6\u0010/\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u001a\u00100\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010-j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`.2\u0008\u0010#\u001a\u0004\u0018\u00010\nJ\u0012\u00101\u001a\u00020\u00192\u0008\u0010#\u001a\u0004\u0018\u00010\rH\u0007J\u000e\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0011J\u001c\u00104\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0008\u0002\u00105\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;",
        "",
        "()V",
        "SYNC_ADDHOME_SUCCESS",
        "",
        "SYNC_MINI_APP_START_TIME",
        "SYNC_MINI_APP_USE_TIME",
        "SYNC_MINI_INIT_PROCESS",
        "TAG",
        "cleanAllMiniAPPStorageCallback",
        "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;",
        "cleanMiniAPPStorageCallback",
        "dataSyncCallback",
        "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;",
        "miniAppVersionCallback",
        "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;",
        "miniPid",
        "",
        "miniappAllStoregeCallback",
        "miniappStoregeCallback",
        "offlineAppsCallback",
        "offlineSingleAppCallback",
        "queryAllShortcutCallback",
        "querySingleShortcutCallback",
        "KillMiniProcess",
        "",
        "addHomeToScreen",
        "context",
        "Landroid/content/Context;",
        "appId",
        "appName",
        "logoUrl",
        "cleanMiniAppStorage",
        "removeSize",
        "",
        "callback",
        "(Landroid/content/Context;Ljava/lang/Long;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V",
        "cleanMiniAppStorageByAppId",
        "getDataSyncCallback",
        "preloadOfflineMiniApp",
        "queryAllMiniAppStorage",
        "queryMiniAppStorage",
        "queryMiniAppVersion",
        "queryOfflineApps",
        "appidList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "queryShortcutExist",
        "appIdList",
        "setDataSyncCallback",
        "updateMiniPid",
        "id",
        "warmup",
        "type",
        "com.cloud.tmc.component_api_ps"
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
.field public static final INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

.field public static final SYNC_ADDHOME_SUCCESS:Ljava/lang/String; = "miniAddHomeSuccess"

.field public static final SYNC_MINI_APP_START_TIME:Ljava/lang/String; = "miniAppStartTime"

.field public static final SYNC_MINI_APP_USE_TIME:Ljava/lang/String; = "miniAppUseTime"

.field public static final SYNC_MINI_INIT_PROCESS:Ljava/lang/String; = "miniInitProcess"

.field private static final TAG:Ljava/lang/String; = "MiniAppProtocolHelper"

.field private static cleanAllMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static cleanMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static dataSyncCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

.field private static miniAppVersionCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;

.field private static miniPid:I

.field private static miniappAllStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static miniappStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static offlineAppsCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static offlineSingleAppCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static queryAllShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

.field private static querySingleShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

    invoke-direct {v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;-><init>()V

    sput-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final KillMiniProcess()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "MiniAppProtocolHelper"

    :try_start_0
    sget v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniPid:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KillMiniProcess -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniPid:I

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "KillMiniProcess"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final synthetic access$getCleanAllMiniAPPStorageCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanAllMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getCleanMiniAPPStorageCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getMiniAppVersionCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniAppVersionCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;

    return-object v0
.end method

.method public static final synthetic access$getMiniappAllStoregeCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappAllStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getMiniappStoregeCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getOfflineAppsCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineAppsCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getOfflineSingleAppCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineSingleAppCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getQueryAllShortcutCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->queryAllShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$getQuerySingleShortcutCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->querySingleShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-object v0
.end method

.method public static final synthetic access$setCleanAllMiniAPPStorageCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanAllMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setCleanMiniAPPStorageCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setMiniAppVersionCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniAppVersionCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;

    return-void
.end method

.method public static final synthetic access$setMiniappAllStoregeCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappAllStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setMiniappStoregeCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setOfflineAppsCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineAppsCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setOfflineSingleAppCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineSingleAppCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setQueryAllShortcutCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->queryAllShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final synthetic access$setQuerySingleShortcutCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->querySingleShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final addHomeToScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "addHomeToScreen context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "queryAppId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appName"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "logoUrl"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$addHomeToScreen$1;

    invoke-direct {v4, v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$addHomeToScreen$1;-><init>(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final cleanMiniAppStorage(Landroid/content/Context;Ljava/lang/Long;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "miniappAllStoregeCallback context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanAllMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "removeStoregeSize"

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorage$1;

    invoke-direct {v4}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorage$1;-><init>()V

    new-instance v5, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorage$2;

    invoke-direct {v5, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorage$2;-><init>(Landroid/os/Bundle;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final cleanMiniAppStorageByAppId(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "miniappAllStoregeCallback context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "queryAppId"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$1;

    invoke-direct {v3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$1;-><init>()V

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$2;

    invoke-direct {v4, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$2;-><init>(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    if-eqz p0, :cond_3

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanMiniAPPStorageCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final preloadOfflineMiniApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "preloadOfflineMiniApp context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "queryAppId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    new-instance v5, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$preloadOfflineMiniApp$1;

    invoke-direct {v5, v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$preloadOfflineMiniApp$1;-><init>(Landroid/os/Bundle;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final queryAllMiniAppStorage(Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "miniappAllStoregeCallback context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappAllStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryAllMiniAppStorage$1;

    invoke-direct {v2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryAllMiniAppStorage$1;-><init>()V

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryAllMiniAppStorage$2;

    invoke-direct {v3, p1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryAllMiniAppStorage$2;-><init>(Landroid/os/Bundle;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final queryMiniAppStorage(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "queryMiniAppStorage context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "queryAppId"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppStorage$1;

    invoke-direct {v3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppStorage$1;-><init>()V

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppStorage$2;

    invoke-direct {v4, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppStorage$2;-><init>(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    if-eqz p0, :cond_3

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniappStoregeCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final queryMiniAppVersion(Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "queryMiniAppVersion context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniAppVersionCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppVersion$1;

    invoke-direct {v2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppVersion$1;-><init>()V

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppVersion$2;

    invoke-direct {v3, p1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppVersion$2;-><init>(Landroid/os/Bundle;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final queryOfflineApps(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "querySingleOfflineApp context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineSingleAppCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "queryAppId"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$3;

    invoke-direct {v3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$3;-><init>()V

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$4;

    invoke-direct {v4, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$4;-><init>(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineSingleAppCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    if-eqz p0, :cond_3

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineSingleAppCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public static final queryOfflineApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "queryOfflineApps context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->offlineAppsCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const-string p1, "queryAppId"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$1;

    invoke-direct {v3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$1;-><init>()V

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$2;

    invoke-direct {v4, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryOfflineApps$2;-><init>(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final queryShortcutExist(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MiniAppProtocolHelper"

    const-string p1, "queryShortcutExist context is null return"

    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->querySingleShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "queryAppId"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$1;

    invoke-direct {v3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$1;-><init>()V

    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$2;

    invoke-direct {v4, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$2;-><init>(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final setDataSyncCallback(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "MiniAppProtocolHelper"

    const-string v1, "setDataSyncCallback"

    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->dataSyncCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

    return-void
.end method

.method public static final warmup(Landroid/content/Context;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->warmup$default(Landroid/content/Context;IILjava/lang/Object;)V

    return-void
.end method

.method public static final warmup(Landroid/content/Context;I)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "MiniAppProtocolHelper"

    if-nez p0, :cond_0

    const-string p0, "warmup context is null return"

    invoke-static {v0, p0}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warmup type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "warmupType"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$warmup$1;

    invoke-direct {v5, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$warmup$1;-><init>(Landroid/os/Bundle;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic warmup$default(Landroid/content/Context;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->warmup(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getDataSyncCallback()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->dataSyncCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

    return-object v0
.end method

.method public final queryShortcutExist(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "MiniAppProtocolHelper"

    if-nez p1, :cond_0

    const-string p1, "queryShortcutExist context is null return"

    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->queryAllShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ""

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "queryAppId"

    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$3;

    invoke-direct {v5}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$3;-><init>()V

    new-instance v6, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$4;

    invoke-direct {v6, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$4;-><init>(Landroid/os/Bundle;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "appId is null or empty"

    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "[]"

    invoke-interface {p3, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    sput-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->queryAllShortcutCallback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    return-void
.end method

.method public final updateMiniPid(I)V
    .locals 2

    sput p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->miniPid:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current miniapp process id -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiniAppProtocolHelper"

    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
