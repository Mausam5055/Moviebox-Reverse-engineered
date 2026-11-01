.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$b;,
        Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/google/firebase/perf/metrics/AppStartTrace;

.field private static B:Ljava/util/concurrent/ExecutorService;

.field private static final y:Lcom/google/firebase/perf/util/Timer;

.field private static final z:J


# instance fields
.field private a:Z

.field private final b:Lvc/k;

.field private final c:Lcom/google/firebase/perf/util/a;

.field private final d:Lcom/google/firebase/perf/config/a;

.field private final e:Lcom/google/firebase/perf/v1/i$b;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Ljava/lang/ref/WeakReference;

.field private i:Z

.field private final j:Lcom/google/firebase/perf/util/Timer;

.field private final k:Lcom/google/firebase/perf/util/Timer;

.field private l:Lcom/google/firebase/perf/util/Timer;

.field private m:Lcom/google/firebase/perf/util/Timer;

.field private n:Lcom/google/firebase/perf/util/Timer;

.field private o:Lcom/google/firebase/perf/util/Timer;

.field private p:Lcom/google/firebase/perf/util/Timer;

.field private q:Lcom/google/firebase/perf/util/Timer;

.field private r:Lcom/google/firebase/perf/util/Timer;

.field private s:Lcom/google/firebase/perf/util/Timer;

.field private t:Lcom/google/firebase/perf/session/PerfSession;

.field private u:Z

.field private v:I

.field private final w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/perf/util/a;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/a;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->y:Lcom/google/firebase/perf/util/Timer;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->z:J

    return-void
.end method

.method constructor <init>(Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    iput v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    new-instance v2, Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace$b;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/metrics/AppStartTrace$a;)V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lvc/k;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    iput-object p3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/firebase/perf/config/a;

    sput-object p4, Lcom/google/firebase/perf/metrics/AppStartTrace;->B:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object p1

    const-string p2, "_experiment_app_start_ttid"

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/metrics/a;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/firebase/perf/util/Timer;->ofElapsedRealtime(J)Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/util/Timer;

    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    move-result-object p1

    const-class p2, Lcom/google/firebase/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/n;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/firebase/perf/util/Timer;->ofElapsedRealtime(J)Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/i$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->n(Lcom/google/firebase/perf/v1/i$b;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->o()V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->r()V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->s()V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->q()V

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lcom/google/firebase/perf/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    return p1
.end method

.method static synthetic h(Lcom/google/firebase/perf/metrics/AppStartTrace;)I
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    return v0
.end method

.method private i()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->y:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method public static j()Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    goto :goto_0

    :cond_0
    invoke-static {}, Lvc/k;->k()Lvc/k;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/perf/util/a;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/a;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->k(Lvc/k;Lcom/google/firebase/perf/util/a;)Lcom/google/firebase/perf/metrics/AppStartTrace;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static k(Lvc/k;Lcom/google/firebase/perf/util/a;)Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 11

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    move-result-object v2

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v3, Lcom/google/firebase/perf/metrics/AppStartTrace;->z:J

    const-wide/16 v5, 0xa

    add-long v6, v3, v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {v1, p0, p1, v2, v10}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/util/concurrent/ExecutorService;)V

    sput-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object p0
.end method

.method private l()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic n(Lcom/google/firebase/perf/v1/i$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lvc/k;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/i;

    sget-object v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-virtual {v0, p1, v1}, Lvc/k;->C(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method private o()V
    .locals 6

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v3, v4}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/i;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v4}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    iget-object v5, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/i;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v4}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    iget-object v5, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/i;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->i(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->j(Lcom/google/firebase/perf/v1/h;)Lcom/google/firebase/perf/v1/i$b;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lvc/k;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    sget-object v2, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-virtual {v1, v0, v2}, Lvc/k;->C(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method private p(Lcom/google/firebase/perf/v1/i$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->B:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/perf/metrics/f;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/perf/metrics/f;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/i$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    const-string v2, "_experiment_onDrawFoQ"

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    const-string v2, "_experiment_procStart_to_classLoad"

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    iget-boolean v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    if-eqz v1, :cond_2

    const-string v1, "true"

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    const-string v2, "systemDeterminedForeground"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/v1/i$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    iget v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    int-to-long v1, v1

    const-string v3, "onDrawCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->n(Ljava/lang/String;J)Lcom/google/firebase/perf/v1/i$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->j(Lcom/google/firebase/perf/v1/h;)Lcom/google/firebase/perf/v1/i$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->p(Lcom/google/firebase/perf/v1/i$b;)V

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->p(Lcom/google/firebase/perf/v1/i$b;)V

    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    const-string v2, "_experiment_preDrawFoQ"

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->p(Lcom/google/firebase/perf/v1/i$b;)V

    return-void
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method


# virtual methods
.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/firebase/perf/metrics/AppStartTrace;->m(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide p1

    sget-wide v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->z:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_3

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    new-instance v2, Lcom/google/firebase/perf/metrics/b;

    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/b;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    invoke-static {v1, v2}, Lcom/google/firebase/perf/util/c;->e(Landroid/view/View;Ljava/lang/Runnable;)V

    new-instance v2, Lcom/google/firebase/perf/metrics/c;

    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/c;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    new-instance v3, Lcom/google/firebase/perf/metrics/d;

    invoke-direct {v3, p0}, Lcom/google/firebase/perf/metrics/d;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    invoke-static {v1, v2, v3}, Lcom/google/firebase/perf/util/f;->a(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lcom/google/firebase/perf/session/PerfSession;

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " microseconds"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsc/a;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->B:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/perf/metrics/e;

    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/e;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onAppEnteredBackground()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    const-string v2, "_experiment_firstBackgrounding"

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    :cond_1
    :goto_0
    return-void
.end method

.method public onAppEnteredForeground()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    const-string v2, "_experiment_firstForegrounding"

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized t(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/lifecycle/g0;->l()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    iput-boolean v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized u()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/lifecycle/g0;->l()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
