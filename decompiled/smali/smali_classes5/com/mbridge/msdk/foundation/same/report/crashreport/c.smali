.class public Lcom/mbridge/msdk/foundation/same/report/crashreport/c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/mbridge/msdk/foundation/same/report/crashreport/c;


# instance fields
.field private final a:Landroid/os/Handler;

.field private volatile b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

.field private c:Lcom/mbridge/msdk/foundation/same/report/crashreport/a;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "AnrMonitor-Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->a:Landroid/os/Handler;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->d:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/report/crashreport/c;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->d:I

    return p0
.end method

.method public static a()Lcom/mbridge/msdk/foundation/same/report/crashreport/c;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->e:Lcom/mbridge/msdk/foundation/same/report/crashreport/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->e:Lcom/mbridge/msdk/foundation/same/report/crashreport/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->e:Lcom/mbridge/msdk/foundation/same/report/crashreport/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->e:Lcom/mbridge/msdk/foundation/same/report/crashreport/c;

    return-object v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/report/crashreport/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/mbridge/msdk/foundation/same/report/crashreport/a;)Lcom/mbridge/msdk/foundation/same/report/crashreport/c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->d:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->c:Lcom/mbridge/msdk/foundation/same/report/crashreport/a;

    return-object p0
.end method

.method public run()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;->a(Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;-><init>(Lcom/mbridge/msdk/foundation/same/report/crashreport/c;Lcom/mbridge/msdk/foundation/same/report/crashreport/c$a;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;->b()V

    iget v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->d:I

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "AnrMonitor"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget v4, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->d:I

    int-to-long v4, v4

    sub-long v0, v4, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->b:Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/c$b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->c:Lcom/mbridge/msdk/foundation/same/report/crashreport/a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/a;->a()V

    :cond_4
    monitor-exit p0

    goto :goto_0

    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->c:Lcom/mbridge/msdk/foundation/same/report/crashreport/a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d;->b([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->c:Lcom/mbridge/msdk/foundation/same/report/crashreport/a;

    invoke-interface {v2, v1, v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/a;->a(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    goto/16 :goto_0

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :try_start_4
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/c;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
