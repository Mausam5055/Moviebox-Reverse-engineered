.class public Lcom/google/firebase/crashlytics/internal/common/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/f;

.field private final c:Lcom/google/firebase/crashlytics/internal/common/d0;

.field private final d:Lcom/google/firebase/crashlytics/internal/common/l0;

.field private final e:J

.field private f:Lcom/google/firebase/crashlytics/internal/common/y;

.field private g:Lcom/google/firebase/crashlytics/internal/common/y;

.field private h:Z

.field private i:Lcom/google/firebase/crashlytics/internal/common/n;

.field private final j:Lcom/google/firebase/crashlytics/internal/common/g0;

.field private final k:Lvb/g;

.field public final l:Lqb/b;

.field private final m:Lpb/a;

.field private final n:Lcom/google/firebase/crashlytics/internal/common/k;

.field private final o:Lob/a;

.field private final p:Lob/l;

.field private final q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/crashlytics/internal/common/g0;Lob/a;Lcom/google/firebase/crashlytics/internal/common/d0;Lqb/b;Lpb/a;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/k;Lob/l;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/x;->b:Lcom/google/firebase/f;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/x;->c:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/x;->j:Lcom/google/firebase/crashlytics/internal/common/g0;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/x;->o:Lob/a;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/x;->l:Lqb/b;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/x;->m:Lpb/a;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/x;->n:Lcom/google/firebase/crashlytics/internal/common/k;

    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/common/x;->p:Lob/l;

    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/common/x;->e:J

    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/l0;

    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/common/l0;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/x;->d:Lcom/google/firebase/crashlytics/internal/common/l0;

    return-void
.end method

.method private synthetic A(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/internal/common/x;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/x;->x(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/crashlytics/internal/common/x;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/x;->t()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/crashlytics/internal/common/x;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/x;->w(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/crashlytics/internal/common/x;Lwb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->v(Lwb/b;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/firebase/crashlytics/internal/common/x;Lwb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->u(Lwb/b;)V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->h:Z

    return-void

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->h:Z

    return-void
.end method

.method private n(Lwb/b;)V
    .locals 3

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/x;->E()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/x;->l:Lqb/b;

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/v;

    invoke-direct {v2, p0}, Lcom/google/firebase/crashlytics/internal/common/v;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;)V

    invoke-interface {v1, v2}, Lqb/b;->a(Lqb/a;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/n;->U()V

    invoke-interface {p1}, Lwb/b;->b()Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/c;->b:Lcom/google/firebase/crashlytics/internal/settings/c$a;

    iget-boolean v1, v1, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->A(Lwb/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Previous sessions could not be finalized."

    invoke-virtual {v0, v1}, Lob/g;->k(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-interface {p1}, Lwb/b;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->Z(Lcom/google/android/gms/tasks/Task;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/x;->D()V

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lob/g;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-virtual {v0, v1, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/x;->D()V

    throw p1
.end method

.method private p(Lwb/b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/u;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/u;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;Lwb/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics timed out during initialization."

    invoke-virtual {v0, v1, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during initialization."

    invoke-virtual {v0, v1, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-virtual {v0, v1, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    return-void
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    const-string v0, "19.3.0"

    return-object v0
.end method

.method static r(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p0

    const-string p1, "Configured not to require a build ID."

    invoke-virtual {p0, p1}, Lob/g;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p0, "FirebaseCrashlytics"

    const-string p1, "."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  |"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   \\ |  | /"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    \\    /"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     \\  /"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      \\/"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      /\\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     /  \\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    /    \\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   / |  | \\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic t()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic u(Lwb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->n(Lwb/b;)V

    return-void
.end method

.method private synthetic v(Lwb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->n(Lwb/b;)V

    return-void
.end method

.method private synthetic w(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/n;->d0(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic x(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->b:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/w;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/w;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic y(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->c0(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/x;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/t;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/t;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public C(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/p;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/p;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method D()V
    .locals 3

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->f:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Initialization marker file was not properly removed."

    invoke-virtual {v0, v1}, Lob/g;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    const-string v2, "Problem encountered deleting Crashlytics initialization marker."

    invoke-virtual {v1, v2, v0}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method E()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->f:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->a()Z

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Initialization marker file was created."

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public F(Lcom/google/firebase/crashlytics/internal/common/a;Lwb/b;)Z
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v13, 0x0

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->a:Landroid/content/Context;

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v14, 0x1

    invoke-static {v2, v3, v14}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v15, p1

    iget-object v3, v15, Lcom/google/firebase/crashlytics/internal/common/a;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/x;->r(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/g;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/internal/common/g;-><init>()V

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/g;->c()Ljava/lang/String;

    move-result-object v12

    :try_start_0
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/y;

    const-string v3, "crash_marker"

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Ljava/lang/String;Lvb/g;)V

    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->g:Lcom/google/firebase/crashlytics/internal/common/y;

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/y;

    const-string v3, "initialization_marker"

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Ljava/lang/String;Lvb/g;)V

    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->f:Lcom/google/firebase/crashlytics/internal/common/y;

    new-instance v11, Lrb/o;

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    invoke-direct {v11, v12, v2, v3}, Lrb/o;-><init>(Ljava/lang/String;Lvb/g;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    new-instance v10, Lrb/e;

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    invoke-direct {v10, v2}, Lrb/e;-><init>(Lvb/g;)V

    new-instance v8, Lxb/a;

    new-instance v2, Lxb/c;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lxb/c;-><init>(I)V

    new-array v3, v14, [Lxb/d;

    aput-object v2, v3, v13

    const/16 v2, 0x400

    invoke-direct {v8, v2, v3}, Lxb/a;-><init>(I[Lxb/d;)V

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->p:Lob/l;

    invoke-virtual {v2, v11}, Lob/l;->c(Lrb/o;)V

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/x;->j:Lcom/google/firebase/crashlytics/internal/common/g0;

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    iget-object v9, v1, Lcom/google/firebase/crashlytics/internal/common/x;->d:Lcom/google/firebase/crashlytics/internal/common/l0;

    iget-object v7, v1, Lcom/google/firebase/crashlytics/internal/common/x;->n:Lcom/google/firebase/crashlytics/internal/common/k;

    iget-object v6, v1, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    move-object v6, v10

    move-object/from16 v17, v7

    move-object v7, v11

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    move-object/from16 v23, v10

    move-object/from16 v10, v18

    move-object/from16 v22, v11

    move-object/from16 v11, v17

    move-object v14, v12

    move-object/from16 v12, v16

    invoke-static/range {v2 .. v12}, Lcom/google/firebase/crashlytics/internal/common/w0;->i(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/a;Lrb/e;Lrb/o;Lxb/d;Lwb/b;Lcom/google/firebase/crashlytics/internal/common/l0;Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/firebase/crashlytics/internal/common/w0;

    move-result-object v24

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/n;

    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/x;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/x;->j:Lcom/google/firebase/crashlytics/internal/common/g0;

    iget-object v5, v1, Lcom/google/firebase/crashlytics/internal/common/x;->c:Lcom/google/firebase/crashlytics/internal/common/d0;

    iget-object v6, v1, Lcom/google/firebase/crashlytics/internal/common/x;->k:Lvb/g;

    iget-object v7, v1, Lcom/google/firebase/crashlytics/internal/common/x;->g:Lcom/google/firebase/crashlytics/internal/common/y;

    iget-object v8, v1, Lcom/google/firebase/crashlytics/internal/common/x;->o:Lob/a;

    iget-object v9, v1, Lcom/google/firebase/crashlytics/internal/common/x;->m:Lpb/a;

    iget-object v10, v1, Lcom/google/firebase/crashlytics/internal/common/x;->n:Lcom/google/firebase/crashlytics/internal/common/k;

    iget-object v11, v1, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, p1

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    invoke-direct/range {v15 .. v28}, Lcom/google/firebase/crashlytics/internal/common/n;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/d0;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/y;Lcom/google/firebase/crashlytics/internal/common/a;Lrb/o;Lrb/e;Lcom/google/firebase/crashlytics/internal/common/w0;Lob/a;Lpb/a;Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/x;->m()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/x;->i()V

    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-virtual {v3, v14, v4, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->y(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lwb/b;)V

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/x;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v2

    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-virtual {v2, v3}, Lob/g;->b(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/x;->p(Lwb/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v2, "Successfully configured exception handler."

    invoke-virtual {v0, v2}, Lob/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :goto_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v2

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-virtual {v2, v3, v0}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    return v13

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G()Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->V()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public H(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->c:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/d0;->h(Ljava/lang/Boolean;)V

    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/r;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/q;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/q;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public j()Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->n()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->i:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->s()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->h:Z

    return v0
.end method

.method m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->f:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->c()Z

    move-result v0

    return v0
.end method

.method public o(Lwb/b;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->q:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/o;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/o;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;Lwb/b;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/x;->c:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->d()Z

    move-result v0

    return v0
.end method
