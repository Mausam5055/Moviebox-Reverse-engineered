.class public Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/firebase/crashlytics/internal/common/x;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method static b(Lcom/google/firebase/f;Ljc/e;Lic/a;Lic/a;Lic/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Firebase Crashlytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/x;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lob/g;->g(Ljava/lang/String;)V

    new-instance v15, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v15, v2, v3}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    new-instance v3, Lvb/g;

    invoke-direct {v3, v1}, Lvb/g;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/d0;

    move-object/from16 v14, p0

    invoke-direct {v2, v14}, Lcom/google/firebase/crashlytics/internal/common/d0;-><init>(Lcom/google/firebase/f;)V

    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/g0;

    move-object/from16 v4, p1

    invoke-direct {v13, v1, v0, v4, v2}, Lcom/google/firebase/crashlytics/internal/common/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljc/e;Lcom/google/firebase/crashlytics/internal/common/d0;)V

    new-instance v7, Lob/d;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lob/d;-><init>(Lic/a;)V

    new-instance v0, Lnb/d;

    move-object/from16 v4, p3

    invoke-direct {v0, v4}, Lnb/d;-><init>(Lic/a;)V

    new-instance v12, Lcom/google/firebase/crashlytics/internal/common/k;

    invoke-direct {v12, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/k;-><init>(Lcom/google/firebase/crashlytics/internal/common/d0;Lvb/g;)V

    invoke-static {v12}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->e(Lcom/google/firebase/sessions/api/SessionSubscriber;)V

    new-instance v11, Lob/l;

    move-object/from16 v4, p4

    invoke-direct {v11, v4}, Lob/l;-><init>(Lic/a;)V

    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0}, Lnb/d;->e()Lqb/b;

    move-result-object v9

    invoke-virtual {v0}, Lnb/d;->d()Lpb/a;

    move-result-object v0

    move-object v4, v10

    move-object/from16 v5, p0

    move-object v6, v13

    move-object v8, v2

    move-object/from16 v16, v10

    move-object v10, v0

    move-object v0, v11

    move-object v11, v3

    move-object/from16 v17, v13

    move-object v13, v0

    move-object v14, v15

    invoke-direct/range {v4 .. v14}, Lcom/google/firebase/crashlytics/internal/common/x;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/crashlytics/internal/common/g0;Lob/a;Lcom/google/firebase/crashlytics/internal/common/d0;Lqb/b;Lpb/a;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/k;Lob/l;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mapping file ID is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lob/g;->b(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/crashlytics/internal/common/e;

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/e;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/e;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/e;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v10, v11, v9

    const/4 v9, 0x2

    aput-object v7, v11, v9

    const-string v7, "Build id for %s on %s: %s"

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lob/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lob/f;

    invoke-direct {v6, v1}, Lob/f;-><init>(Landroid/content/Context;)V

    move-object/from16 p0, v1

    move-object/from16 p1, v17

    move-object/from16 p2, v0

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/google/firebase/crashlytics/internal/common/a;->a(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lob/f;)Lcom/google/firebase/crashlytics/internal/common/a;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installer package name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/google/firebase/crashlytics/internal/common/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lob/g;->i(Ljava/lang/String;)V

    new-instance v4, Lub/b;

    invoke-direct {v4}, Lub/b;-><init>()V

    iget-object v5, v9, Lcom/google/firebase/crashlytics/internal/common/a;->f:Ljava/lang/String;

    iget-object v6, v9, Lcom/google/firebase/crashlytics/internal/common/a;->g:Ljava/lang/String;

    move-object v8, v2

    move-object v2, v0

    move-object v0, v3

    move-object/from16 v3, v17

    move-object v7, v0

    invoke-static/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/e;->l(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/g0;Lub/b;Ljava/lang/String;Ljava/lang/String;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/d0;)Lcom/google/firebase/crashlytics/internal/settings/e;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/firebase/crashlytics/internal/settings/e;->o(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lnb/h;

    invoke-direct {v2}, Lnb/h;-><init>()V

    move-object/from16 v3, p7

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-object/from16 v1, v16

    invoke-virtual {v1, v9, v0}, Lcom/google/firebase/crashlytics/internal/common/x;->F(Lcom/google/firebase/crashlytics/internal/common/a;Lwb/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/x;->o(Lwb/b;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    new-instance v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v2, "Error retrieving app package info."

    invoke-virtual {v0, v2, v1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic c(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Error fetching settings."

    invoke-virtual {v0, v1, p0}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    move-result-object v0

    const-class v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FirebaseCrashlytics component is not present."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkForUnsentReports()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/x;->j()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public deleteUnsentReports()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/x;->k()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public didCrashOnPreviousExecution()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/x;->l()Z

    move-result v0

    return v0
.end method

.method public isCrashlyticsCollectionEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/x;->s()Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->B(Ljava/lang/String;)V

    return-void
.end method

.method public recordException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "A null value was passed to recordException. Ignoring."

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->C(Ljava/lang/Throwable;)V

    return-void
.end method

.method public sendUnsentReports()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/x;->G()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->H(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->H(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;D)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKeys(Lnb/g;)V
    .locals 0
    .param p1    # Lnb/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/x;->J(Ljava/lang/String;)V

    return-void
.end method
