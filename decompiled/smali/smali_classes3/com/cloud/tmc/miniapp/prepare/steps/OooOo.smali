.class public interface abstract Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;
.super Ljava/lang/Object;


# virtual methods
.method public abstract backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract killActivity()V
.end method

.method public abstract loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
.end method

.method public abstract onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
.end method

.method public abstract onPackageLoadSuccess()V
.end method

.method public abstract refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .param p1    # Lcom/cloud/tmc/integration/model/EntryInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showUpgradeHintPrompt(Ljava/lang/String;)V
.end method

.method public abstract startApp(Landroid/content/Intent;)V
.end method

.method public abstract startAsyncApp(Landroid/content/Intent;)V
.end method

.method public abstract updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
.end method
