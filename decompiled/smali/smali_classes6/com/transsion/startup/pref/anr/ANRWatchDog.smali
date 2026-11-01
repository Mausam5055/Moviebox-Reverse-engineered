.class public Lcom/transsion/startup/pref/anr/ANRWatchDog;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/pref/anr/ANRWatchDog$e;,
        Lcom/transsion/startup/pref/anr/ANRWatchDog$d;,
        Lcom/transsion/startup/pref/anr/ANRWatchDog$f;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANR_INTERCEPTOR:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

.field private static final DEFAULT_ANR_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

.field private static final DEFAULT_ANR_TIMEOUT:I = 0x1388

.field private static final DEFAULT_INTERRUPTION_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;


# instance fields
.field private _anrInterceptor:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

.field private _anrListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

.field private _ignoreDebugger:Z

.field private _interruptionListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

.field private _logThreadsWithoutStackTrace:Z

.field private _namePrefix:Ljava/lang/String;

.field private volatile _reported:Z

.field private volatile _tick:J

.field private final _ticker:Ljava/lang/Runnable;

.field private final _timeoutInterval:I

.field private final _uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/startup/pref/anr/ANRWatchDog$a;

    invoke-direct {v0}, Lcom/transsion/startup/pref/anr/ANRWatchDog$a;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    new-instance v0, Lcom/transsion/startup/pref/anr/ANRWatchDog$b;

    invoke-direct {v0}, Lcom/transsion/startup/pref/anr/ANRWatchDog$b;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    new-instance v0, Lcom/transsion/startup/pref/anr/ANRWatchDog$c;

    invoke-direct {v0}, Lcom/transsion/startup/pref/anr/ANRWatchDog$c;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/transsion/startup/pref/anr/ANRWatchDog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    sget-object v0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrInterceptor:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    sget-object v0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_interruptionListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    iput-boolean v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_ignoreDebugger:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    iput-boolean v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_reported:Z

    new-instance v0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;

    invoke-direct {v0, p0}, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;-><init>(Lcom/transsion/startup/pref/anr/ANRWatchDog;)V

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    iput p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_timeoutInterval:I

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/startup/pref/anr/ANRWatchDog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_reported:Z

    return-void
.end method

.method static bridge synthetic b(Lcom/transsion/startup/pref/anr/ANRWatchDog;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    return-void
.end method


# virtual methods
.method public getTimeoutInterval()I
    .locals 1

    iget v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_timeoutInterval:I

    return v0
.end method

.method public run()V
    .locals 9

    const-string v0, "|ANR-WatchDog|"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_timeoutInterval:I

    int-to-long v0, v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-wide v7, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    add-long/2addr v7, v0

    iput-wide v7, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v7, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    cmp-long v2, v7, v4

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_reported:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_ignoreDebugger:Z

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "ANRWatchdog"

    const-string v4, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    invoke-static {v2, v4, v3}, Llg/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v6, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_reported:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrInterceptor:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    iget-wide v1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    invoke-interface {v0, v1, v2}, Lcom/transsion/startup/pref/anr/ANRWatchDog$d;->a(J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_tick:J

    invoke-static {v0, v1}, Lcom/transsion/startup/pref/anr/ANRError;->NewMainOnly(J)Lcom/transsion/startup/pref/anr/ANRError;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    invoke-interface {v1, v0}, Lcom/transsion/startup/pref/anr/ANRWatchDog$e;->a(Lcom/transsion/startup/pref/anr/ANRError;)V

    iget v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_timeoutInterval:I

    int-to-long v0, v0

    iput-boolean v6, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_reported:Z

    goto :goto_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_interruptionListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    invoke-interface {v1, v0}, Lcom/transsion/startup/pref/anr/ANRWatchDog$f;->a(Ljava/lang/InterruptedException;)V

    :cond_6
    return-void
.end method

.method public setANRInterceptor(Lcom/transsion/startup/pref/anr/ANRWatchDog$d;)Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 0
    .param p1    # Lcom/transsion/startup/pref/anr/ANRWatchDog$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrInterceptor:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrInterceptor:Lcom/transsion/startup/pref/anr/ANRWatchDog$d;

    :goto_0
    return-object p0
.end method

.method public setANRListener(Lcom/transsion/startup/pref/anr/ANRWatchDog$e;)Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 0
    .param p1    # Lcom/transsion/startup/pref/anr/ANRWatchDog$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_anrListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$e;

    :goto_0
    return-object p0
.end method

.method public setIgnoreDebugger(Z)Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_ignoreDebugger:Z

    return-object p0
.end method

.method public setInterruptionListener(Lcom/transsion/startup/pref/anr/ANRWatchDog$f;)Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 0
    .param p1    # Lcom/transsion/startup/pref/anr/ANRWatchDog$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/startup/pref/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_interruptionListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_interruptionListener:Lcom/transsion/startup/pref/anr/ANRWatchDog$f;

    :goto_0
    return-object p0
.end method

.method public setLogThreadsWithoutStackTrace(Z)Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    return-object p0
.end method

.method public setReportAllThreads()Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportMainThreadOnly()Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lcom/transsion/startup/pref/anr/ANRWatchDog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method
