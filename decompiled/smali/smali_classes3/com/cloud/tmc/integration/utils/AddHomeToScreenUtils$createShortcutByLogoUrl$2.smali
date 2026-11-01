.class public final Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createShortcutByLogoUrl(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2",
        "Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;",
        "onDenied",
        "",
        "onGranted",
        "obj",
        "",
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
.field final synthetic $addHomeType:I

.field final synthetic $bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fromLocation:Ljava/lang/String;

.field final synthetic $scClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $showSuccessToast:Z


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$fromLocation:Ljava/lang/String;

    iput p3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$addHomeType:I

    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$scClass:Ljava/lang/Class;

    iput-boolean p6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$showSuccessToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u53d1\u9001 addHomeToScreen callback received"

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isExist"

    sget-object v5, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onGranted(Ljava/lang/Object;)V
    .locals 10

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$fromLocation:Ljava/lang/String;

    const-string v3, "location"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, "second_add_cl"

    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    iget-object v5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$fromLocation:Ljava/lang/String;

    iget v6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$addHomeType:I

    iget-object v7, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$scClass:Ljava/lang/Class;

    iget-boolean v9, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$showSuccessToast:Z

    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$requestAddHome(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method
