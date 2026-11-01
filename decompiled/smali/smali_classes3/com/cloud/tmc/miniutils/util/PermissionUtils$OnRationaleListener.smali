.class public interface abstract Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRationaleListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener$ShouldRequest;
    }
.end annotation


# virtual methods
.method public abstract rationale(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener$ShouldRequest;)V
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener$ShouldRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
