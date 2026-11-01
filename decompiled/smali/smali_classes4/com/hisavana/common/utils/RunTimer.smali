.class public Lcom/hisavana/common/utils/RunTimer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RunTimer"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private scheduleTime:I

.field private timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/hisavana/common/utils/RunTimer;->scheduleTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/hisavana/common/utils/RunTimer;)Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/utils/RunTimer;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    return-object p0
.end method


# virtual methods
.method public cancelTimeTask()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    iget-object v1, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    :cond_0
    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public runTimerTask()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hisavana/common/utils/RunTimer$1;

    invoke-direct {v0, p0}, Lcom/hisavana/common/utils/RunTimer$1;-><init>(Lcom/hisavana/common/utils/RunTimer;)V

    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/hisavana/common/utils/RunTimer;->scheduleTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setScheduleTime(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/utils/RunTimer;->scheduleTime:I

    return-void
.end method

.method public setTimeOutCallback(Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/utils/RunTimer;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    return-void
.end method
