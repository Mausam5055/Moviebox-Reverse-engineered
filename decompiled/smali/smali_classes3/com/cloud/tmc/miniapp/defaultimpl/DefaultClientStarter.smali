.class public Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/proxy/IClientStarter;


# static fields
.field public static OooO0O0:Ljava/lang/Long;


# instance fields
.field public OooO00o:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO0O0:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public declared-synchronized createFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createPrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0O0;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0O0;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    return-object v0
.end method

.method public createQuickModePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0OO;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    return-object v0
.end method

.method public createSubpackagePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0o;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO0o;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)V

    return-object v0
.end method

.method public createWarmupController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO00o;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO00o;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    return-object v0
.end method

.method public startClient(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const-string v0, "fromContext:"

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultClientStarter"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "startBundle"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    const-string v2, "miniAppId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x20000000

    if-ne v5, v6, :cond_2

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppLaunchActivity(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launch activity FLAG_ACTIVITY_SINGLE_TOP :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v5

    new-instance v6, Lcom/cloud/tmc/miniapp/process/AppRecord;

    iget-object v7, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    invoke-direct {v6, v2, v7, v0}, Lcom/cloud/tmc/miniapp/process/AppRecord;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v5, p1, v6}, Lcom/cloud/tmc/miniapp/NewTaskManager;->preLaunchActivity(Landroid/content/Context;Lcom/cloud/tmc/miniapp/process/AppRecord;)Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppLaunchActivity(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    const-string v5, "target class:"

    invoke-static {v5}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;

    if-eqz v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget-object v7, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO0O0:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    const-string v5, "record_id"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "record_token"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_6
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v2, p2, p1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "start finish"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;->OooO00o:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    const-string p2, "startClient exception:"

    invoke-static {v1, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method
