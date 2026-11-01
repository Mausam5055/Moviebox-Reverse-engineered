.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CancelToastRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ToastStrategy"

    :try_start_0
    const-string v1, "cancel toast run with start"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$getMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "cancel toast failed!"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method
