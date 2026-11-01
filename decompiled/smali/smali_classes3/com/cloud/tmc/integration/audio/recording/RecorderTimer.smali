.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;,
        Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0008\u0010\u000f\u001a\u00020\rH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ\u0008\u0010\u0011\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0014\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;",
        "",
        "()V",
        "isPaused",
        "",
        "isStarted",
        "pausedTime",
        "",
        "startTime",
        "timerListener",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;",
        "getElapsedTime",
        "pause",
        "",
        "reset",
        "resetTimer",
        "resume",
        "scheduleTimer",
        "setTimerListener",
        "listener",
        "start",
        "Companion",
        "TimerListener",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private isPaused:Z

.field private isStarted:Z

.field private pausedTime:J

.field private startTime:J

.field private timerListener:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHandler$cp()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private final resetTimer()V
    .locals 2

    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private final scheduleTimer()V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resetTimer()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->timerListener:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;

    invoke-direct {v2, v0, p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getElapsedTime()J
    .locals 4

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    iget-wide v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public final pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resetTimer()V

    return-void
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resetTimer()V

    return-void
.end method

.method public final resume()V
    .locals 6

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->scheduleTimer()V

    return-void
.end method

.method public final setTimerListener(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->timerListener:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

    return-void
.end method

.method public final start()V
    .locals 6

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->scheduleTimer()V

    return-void
.end method
