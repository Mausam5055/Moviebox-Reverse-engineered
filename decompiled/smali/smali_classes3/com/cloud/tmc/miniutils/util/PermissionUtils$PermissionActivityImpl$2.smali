.class Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->onCreated(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;

.field final synthetic val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->a(Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    :goto_0
    return-void
.end method
