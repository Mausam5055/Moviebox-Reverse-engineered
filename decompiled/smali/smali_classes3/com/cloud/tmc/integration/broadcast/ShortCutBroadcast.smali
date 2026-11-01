.class public final Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ShortCutBroadcast"

    iput-object v0, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->onReceive$lambda$4(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V

    return-void
.end method

.method private static final onReceive$lambda$4(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$extraAddHomeLocation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "addHomeStatus_"

    const-string v2, "miniKeyStorageAddHome"

    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, p0, v2, v5, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move-object v4, v0

    :goto_0
    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v6, "add_succ"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "location"

    invoke-virtual {v7, v8, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "old_state"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "0"

    goto :goto_1

    :cond_1
    const-string v4, "1"

    :goto_1
    invoke-virtual {v7, p5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p5, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v5, p1, v6, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p5, 0x1

    if-eqz p0, :cond_2

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v2, v1, p5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    if-eqz p2, :cond_4

    const-class p2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Lcom/cloud/tmc/integration/R$string;->smallapp_create_success:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-interface {p2, v0}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    const-string p2, "\u68c0\u67e5 addHomeToScreen \u8bbe\u7f6e\u684c\u9762\u5feb\u6377\u65b9\u5f0f callback"

    invoke-static {p0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/App;

    if-eqz p2, :cond_5

    const-class v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "\u53d1\u9001 addHomeToScreen callback received"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isExist"

    invoke-virtual {v0, v1, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eq p4, p5, :cond_7

    const/4 p2, 0x2

    if-eq p4, p2, :cond_6

    :try_start_1
    const-class p0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->hideMiniAppAddHomeBar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_2
    iget-object p1, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    const-string p2, "onReceive error: "

    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->backPressed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    iget-object p1, p3, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "miniAppId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_9

    :cond_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;->getSourceType()I

    move-result v0

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move-object v6, v0

    goto :goto_6

    :cond_4
    :goto_5
    const-string v0, ""

    goto :goto_4

    :goto_6
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;->getShowSuccessToast()Z

    move-result p2

    :goto_7
    move v3, p2

    goto :goto_8

    :cond_5
    const/4 p2, 0x1

    goto :goto_7

    :goto_8
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exteaAddHomeType:->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSuccessToast:->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extraAddHomeLocation:->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/cloud/tmc/integration/broadcast/a;

    move-object v0, p2

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/broadcast/a;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_6
    :goto_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    const-string p2, "appid is null"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_a
    iget-object p2, p0, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->TAG:Ljava/lang/String;

    const-string v0, "onReceive error: "

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method
