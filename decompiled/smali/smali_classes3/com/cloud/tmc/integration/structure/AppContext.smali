.class public interface abstract Lcom/cloud/tmc/integration/structure/AppContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract exitPage(Lcom/cloud/tmc/integration/structure/Page;Z)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getActivityStartIntent()Landroid/content/Intent;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isTaskRoot()Z
.end method

.method public abstract moveToBackground()Z
.end method

.method public abstract pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract pushWebViewPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract start(Lcom/cloud/tmc/integration/structure/Page;)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract switchTab(Lcom/cloud/tmc/integration/structure/Page;)V
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
