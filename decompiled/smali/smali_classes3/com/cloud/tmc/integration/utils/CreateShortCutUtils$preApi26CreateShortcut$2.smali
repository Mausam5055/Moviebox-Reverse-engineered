.class public final Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->preApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V
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
        "com/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2",
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
.field final synthetic $addIntent:Landroid/content/Intent;

.field final synthetic $appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$addIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 6

    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoResId()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_6

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "CreateShortCutUtils"

    const-string v3, "pre icon path03:R.drawable.mini_ic_miniappcenter"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoResId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->access$createIconBitmap(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_5
    const-string v3, ""

    :cond_6
    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->access$createIconBitmap(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    :cond_7
    :goto_3
    move-object v2, v1

    :goto_4
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$addIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$addIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/integration/R$string;->smallapp_create_success:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v1

    :goto_5
    const-string v4, "trigger success"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/integration/R$string;->smallapp_create_fail_no_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger happened exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    :goto_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string v1, "path"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "CreateShortCutUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre icon path02:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.ICON"

    sget-object v4, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-static {v4, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->access$createIconBitmap(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$addIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/integration/R$string;->smallapp_create_success:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v2, "trigger success"

    const/4 v3, 0x1

    invoke-virtual {v4, p1, v3, v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/integration/R$string;->smallapp_create_fail_no_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;->$appModel:Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trigger happened exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-void
.end method
