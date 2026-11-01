.class public interface abstract Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnExplainListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener$ShouldRequest;
    }
.end annotation


# virtual methods
.method public abstract explain(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/util/List;Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener$ShouldRequest;)V
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener$ShouldRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener$ShouldRequest;",
            ")V"
        }
    .end annotation
.end method
