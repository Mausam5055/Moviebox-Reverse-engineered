.class Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;->this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;->this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->a(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$2;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
