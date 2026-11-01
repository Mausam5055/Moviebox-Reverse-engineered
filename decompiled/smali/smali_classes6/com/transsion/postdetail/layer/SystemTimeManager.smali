.class public final Lcom/transsion/postdetail/layer/SystemTimeManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/SystemTimeManager$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

.field private c:Z

.field private final d:Landroid/os/HandlerThread;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/transsion/postdetail/layer/SystemTimeManager$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemTimeManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->d:Landroid/os/HandlerThread;

    new-instance v1, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;-><init>(Lcom/transsion/postdetail/layer/SystemTimeManager;)V

    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/postdetail/layer/SystemTimeManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/postdetail/layer/SystemTimeManager;)Lcom/transsion/postdetail/layer/SystemTimeManager$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
