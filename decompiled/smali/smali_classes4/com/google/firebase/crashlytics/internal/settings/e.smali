.class public Lcom/google/firebase/crashlytics/internal/settings/e;
.super Ljava/lang/Object;

# interfaces
.implements Lwb/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/internal/settings/h;

.field private final c:Lcom/google/firebase/crashlytics/internal/settings/f;

.field private final d:Lcom/google/firebase/crashlytics/internal/common/c0;

.field private final e:Lwb/a;

.field private final f:Lcom/google/firebase/crashlytics/internal/settings/i;

.field private final g:Lcom/google/firebase/crashlytics/internal/common/d0;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/h;Lcom/google/firebase/crashlytics/internal/common/c0;Lcom/google/firebase/crashlytics/internal/settings/f;Lwb/a;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/d0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->b:Lcom/google/firebase/crashlytics/internal/settings/h;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->d:Lcom/google/firebase/crashlytics/internal/common/c0;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->c:Lcom/google/firebase/crashlytics/internal/settings/f;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->e:Lwb/a;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->f:Lcom/google/firebase/crashlytics/internal/settings/i;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->g:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/settings/a;->b(Lcom/google/firebase/crashlytics/internal/common/c0;)Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/f;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->c:Lcom/google/firebase/crashlytics/internal/settings/f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/internal/settings/e;)Lwb/a;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->e:Lwb/a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/internal/settings/e;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/settings/e;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/h;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->b:Lcom/google/firebase/crashlytics/internal/settings/h;

    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/internal/settings/e;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/internal/settings/e;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/internal/settings/e;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/i;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->f:Lcom/google/firebase/crashlytics/internal/settings/i;

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/g0;Lub/b;Ljava/lang/String;Ljava/lang/String;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/d0;)Lcom/google/firebase/crashlytics/internal/settings/e;
    .locals 15

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/g0;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/x0;

    invoke-direct {v10}, Lcom/google/firebase/crashlytics/internal/common/x0;-><init>()V

    new-instance v11, Lcom/google/firebase/crashlytics/internal/settings/f;

    invoke-direct {v11, v10}, Lcom/google/firebase/crashlytics/internal/settings/f;-><init>(Lcom/google/firebase/crashlytics/internal/common/c0;)V

    new-instance v12, Lwb/a;

    move-object/from16 v2, p6

    invoke-direct {v12, v2}, Lwb/a;-><init>(Lvb/g;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/google/firebase/crashlytics/internal/settings/b;

    move-object/from16 v3, p3

    invoke-direct {v13, v2, v3}, Lcom/google/firebase/crashlytics/internal/settings/b;-><init>(Ljava/lang/String;Lub/b;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/g0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/g0;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/g0;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p4

    move-object/from16 v7, p5

    filled-new-array {v5, v1, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->h([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    move-result v9

    new-instance v14, Lcom/google/firebase/crashlytics/internal/settings/h;

    move-object v0, v14

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v14

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/e;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/h;Lcom/google/firebase/crashlytics/internal/common/c0;Lcom/google/firebase/crashlytics/internal/settings/f;Lwb/a;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/d0;)V

    return-object v0
.end method

.method private m(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;)Lcom/google/firebase/crashlytics/internal/settings/c;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->e:Lwb/a;

    invoke-virtual {v1}, Lwb/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->c:Lcom/google/firebase/crashlytics/internal/settings/f;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/settings/f;->b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v1, v3}, Lcom/google/firebase/crashlytics/internal/settings/e;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->d:Lcom/google/firebase/crashlytics/internal/common/c0;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/c0;->a()J

    move-result-wide v3

    sget-object v1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/settings/c;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v1, "Cached settings have expired."

    invoke-virtual {p1, v1}, Lob/g;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Returning cached settings."

    invoke-virtual {p1, v0}, Lob/g;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v1, "Failed to parse cached settings data."

    invoke-virtual {p1, v1, v0}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v1, "No cached settings data found."

    invoke-virtual {p1, v1}, Lob/g;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    const-string v2, "Failed to get cached settings"

    invoke-virtual {v1, v2, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lob/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/firebase/crashlytics/internal/settings/c;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/settings/c;

    return-object v0
.end method

.method k()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/e;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->b:Lcom/google/firebase/crashlytics/internal/settings/h;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->USE_CACHE:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->p(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->m(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;)Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->m(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;)Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e;->g:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/d0;->k()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/settings/e$a;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/crashlytics/internal/settings/e$a;-><init>(Lcom/google/firebase/crashlytics/internal/settings/e;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
