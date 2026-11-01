.class public Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 0

    const-string p2, "appModelNew"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public killActivity()V
    .locals 0

    return-void
.end method

.method public loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    return-void
.end method

.method public onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    return-void
.end method

.method public onPackageLoadSuccess()V
    .locals 0

    return-void
.end method

.method public refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 1

    const-string v0, "appModelNew"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .locals 0

    return-void
.end method

.method public showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showUpgradeHintPrompt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startApp(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public startAsyncApp(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    return-void
.end method
