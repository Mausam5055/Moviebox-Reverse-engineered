.class public Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# static fields
.field public static final OooO0o:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public OooO00o:Z

.field public OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

.field public OooO0Oo:Z

.field public OooO0o0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO00o:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0Oo:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0o0:Z

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->onPackageLoadSuccess()V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0Oo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;I)V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_RENDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v0

    if-ne p2, v0, :cond_2

    const-class p2, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->warmupWorker(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v0

    if-ne p2, v0, :cond_3

    const-class p2, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->warmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 9

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO00o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO00o:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/PrepareContext;->getSceneParams()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appInfo:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz v4, :cond_1

    const-string v5, "appInfo"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v4, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-eqz v4, :cond_2

    const-string v5, "appLoadResult"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "entryInfo"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    new-instance v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/activity/StartClientBundle;-><init>()V

    iget-object v4, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appInfo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->appId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startToken:J

    const-string v4, "startToken"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iput-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    iput-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->action:Lcom/cloud/tmc/integration/activity/StartAction;

    if-eqz v2, :cond_4

    iput-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/cloud/tmc/integration/activity/StartAction;->DIRECT_START:Lcom/cloud/tmc/integration/activity/StartAction;

    iput-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    :goto_0
    const-string v2, "startBundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appInfo:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    :goto_1
    const-string v1, "record_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "record_token"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->startApp(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v0, "loadListener is null"

    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :goto_2
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/integration/model/AppModel;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_0
    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0Oo:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 5

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz p2, :cond_2

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getSceneParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appLoadResult"

    iget-object v4, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_0

    const-string v3, "entryInfo"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/activity/StartClientBundle;-><init>()V

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appInfo:Lcom/cloud/tmc/integration/model/AppModel;

    const-string v3, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iput-object v3, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    sget-object v1, Lcom/cloud/tmc/integration/activity/StartAction;->DIRECT_START:Lcom/cloud/tmc/integration/activity/StartAction;

    iput-object v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    const-string v1, "startBundle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "startAppModel"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->startAsyncApp(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    :cond_0
    return-void
.end method

.method public killActivity()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->killActivity()V

    :cond_0
    return-void
.end method

.method public refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V

    :cond_0
    return-void
.end method

.method public showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0o0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0o0:Z

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showUpgradeHintPrompt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->showUpgradeHintPrompt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_0
    return-void
.end method
