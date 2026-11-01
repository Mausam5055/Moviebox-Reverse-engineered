.class Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->b(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method
