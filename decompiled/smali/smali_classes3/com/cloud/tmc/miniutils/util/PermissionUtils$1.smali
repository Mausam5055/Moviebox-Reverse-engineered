.class Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils;->rationalInner(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

.field final synthetic val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

.field final synthetic val$againRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/lang/Runnable;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public again(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->e(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/util/List;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->f(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/util/List;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->h(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)V

    :goto_0
    return-void
.end method
