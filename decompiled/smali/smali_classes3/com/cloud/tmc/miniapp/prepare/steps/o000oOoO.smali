.class public interface abstract Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;
.super Ljava/lang/Object;


# virtual methods
.method public abstract OooO00o()V
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/integration/model/EntryInfo;)V
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;I)V
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/integration/model/AppModel;Landroid/os/Bundle;Landroid/os/Bundle;)V
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
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
.end method

.method public abstract OooO00o(Z)V
.end method

.method public abstract OooO0O0(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
.end method

.method public abstract backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract killActivity()V
.end method

.method public abstract refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
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

.method public abstract updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
.end method
