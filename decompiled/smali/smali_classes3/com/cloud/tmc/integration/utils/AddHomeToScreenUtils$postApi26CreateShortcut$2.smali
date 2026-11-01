.class public final Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->postApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2",
        "Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;",
        "onFail",
        "",
        "onSuccess",
        "path",
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

.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

.field final synthetic $broadcastIntent:Landroid/content/Intent;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fromLocation:Ljava/lang/String;

.field final synthetic $shortcutIntent:Landroid/content/Intent;

.field final synthetic $showCustomDialog:Z

.field final synthetic $showSuccessToast:Z

.field final synthetic $sm:Landroid/content/pm/ShortcutManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ShortcutManager;ZIZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$shortcutIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$broadcastIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$sm:Landroid/content/pm/ShortcutManager;

    iput-boolean p7, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showSuccessToast:Z

    iput p8, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$addHomeType:I

    iput-boolean p9, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showCustomDialog:Z

    iput-object p10, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$fromLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 6

    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/tmc/integration/R$string;->smallapp_create_fail_no_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "trigger failed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

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

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u53d1\u9001 addHomeToScreen callback received"

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isExist"

    sget-object v5, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

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

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/r5;->a()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o5;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/w5;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    invoke-static {v1, p1}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$createIconBitmap(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/y5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getBadgeLogo(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/a;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$shortcutIntent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/v5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    iget v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$addHomeType:I

    iget-boolean v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showCustomDialog:Z

    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$fromLocation:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showSuccessToast:Z

    const-string v6, "appId"

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scene_id"

    const-string v6, "200008"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extraAddHomeType"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extraAddHomeShowDialog"

    const/4 v2, 0x1

    xor-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extraAddHomeFromLocation"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extraShowSuccessToast"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/x5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/z5;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const-string v0, "Builder(context, appId)\n\u2026               }).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v1, v3

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$broadcastIntent:Landroid/content/Intent;

    const/high16 v4, 0x2000000

    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$sm:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/cloud/hisavana/sdk/q5;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    move-result p1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0\u684c\u9762\u5feb\u6377\u65b9\u5f0f\uff0c\u662f\u5426\u4e3a isLauncher: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showSuccessToast:Z

    if-eqz p1, :cond_2

    const-class p1, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;

    const-string v0, "addHomeToScreen"

    new-instance v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2$onSuccess$1;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2$onSuccess$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;->addAppTask(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    const-string v1, "trigger success"

    invoke-virtual {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trigger happened exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadMiniAppIconFile ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_3

    const-class v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u53d1\u9001 addHomeToScreen callback received"

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "isExist"

    sget-object v4, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v4, v1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDenied"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method
