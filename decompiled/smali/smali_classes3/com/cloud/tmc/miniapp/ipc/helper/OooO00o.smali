.class public final Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$logoUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    new-instance v3, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-direct {v3, p1, p2, p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createShortcutByLogoUrl$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;ILjava/lang/Object;)V

    return-void
.end method

.method public static final OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "MiniAppAbilityHelper"

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "get(IApplicationContextG\u2026.java).applicationContext"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v1, "typeMiniAppVersion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    const-string p0, "miniAppPSChannelIpcPkg"

    const-string v1, "com.transsnet.store"

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_0
    sget-object p0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    new-instance v6, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;

    invoke-direct {v6, p1, p0}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcMainProcessInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    :try_start_2
    const-string p1, "querySDKVersion error:"

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :sswitch_1
    const-string v1, "typeMiniAppOffline"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    sget-object p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;

    invoke-virtual {p0, v3, p1, p2}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :sswitch_2
    const-string v1, "typeSingleMiniAppOffline"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    sget-object p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;

    invoke-virtual {p0, v3, p1, p2}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :sswitch_3
    const-string p1, "typeMiniAppAddShortcut"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;

    invoke-virtual {p0, v3, p2}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_4

    :sswitch_4
    const-string p1, "typePreloadOfflineApp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    const-string p0, "queryAppId"

    const-string p1, ""

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    move-object p0, v2

    :goto_2
    const/4 p1, 0x0

    const/4 p2, 0x4

    invoke-static {p0, p1, v2, p2, v2}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    const-string p1, "protocolInvoke error:"

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f471bf3 -> :sswitch_4
        -0x79937bc9 -> :sswitch_3
        -0x6ce87705 -> :sswitch_2
        -0x289f5ded -> :sswitch_1
        0x48a3b108 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, ""

    if-eqz p2, :cond_0

    const-string v1, "queryAppId"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "appName"

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const-string v3, "logoUrl"

    invoke-virtual {p2, v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/helper/b;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/cloud/tmc/miniapp/ipc/helper/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v1, "miniAppPSChannelIpcPkg"

    const-string v2, "com.transsnet.store"

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v1, "[]"

    if-eqz p3, :cond_1

    :try_start_1
    const-string v0, "queryAppId"

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    :try_start_2
    const-class p3, Ljava/util/ArrayList;

    invoke-static {v1, p3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_3

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    :try_start_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_2
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v5

    const-string v6, "create()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "status"

    const-string v7, "appId"

    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    const-string v3, "logoUrl"

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    const-string v3, "appName"

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    const-string v3, "version"

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v7, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_4

    :cond_6
    sget-object p3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    new-instance v4, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO00o;

    invoke-direct {v4, p2, v0}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO00o;-><init>(Ljava/lang/String;Lcom/google/gson/JsonArray;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcMainProcessInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    const-string p2, "MiniAppAbilityHelper"

    const-string p3, "querySDKVersion error:"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocolInvoke: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callbackId ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ipc/helper/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ipc/helper/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "MiniAppAbilityHelper"

    const-string p3, "protocolInvoke error:"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final OooO0O0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v1, "miniAppPSChannelIpcPkg"

    const-string v2, "com.transsnet.store"

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v1, ""

    if-eqz p3, :cond_1

    :try_start_1
    const-string v0, "queryAppId"

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    sget-object p3, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    check-cast p3, Ljava/util/LinkedHashMap;

    invoke-virtual {p3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v3, "create()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "status"

    const-string v4, "appId"

    if-eqz p3, :cond_3

    :try_start_2
    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    const-string v1, "logoUrl"

    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    const-string v1, "appName"

    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    const-string v1, "version"

    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    :goto_2
    sget-object p3, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    new-instance v4, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;

    invoke-direct {v4, p2, v0}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;-><init>(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcMainProcessInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    const-string p2, "MiniAppAbilityHelper"

    const-string p3, "querySDKVersion error:"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
