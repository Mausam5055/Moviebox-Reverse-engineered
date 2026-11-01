.class public abstract Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransActivityDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateBefore(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreated(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onDestroy(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onPaused(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRequestPermissionsResult(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResumed(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSaveInstanceState(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStarted(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStopped(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
