.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# instance fields
.field private final a:Lmb/b0;

.field private final b:Lmb/b0;

.field private final c:Lmb/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-static {v0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->a(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Llb/a;

    const-class v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lmb/b0;

    const-class v0, Llb/b;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lmb/b0;

    const-class v0, Llb/c;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lmb/b0;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lmb/e;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b(Lmb/e;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    return-object p0
.end method

.method private b(Lmb/e;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->f(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-class v2, Lcom/google/firebase/f;

    invoke-interface {p1, v2}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/firebase/f;

    const-class v2, Ljc/e;

    invoke-interface {p1, v2}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljc/e;

    const-class v2, Lob/a;

    invoke-interface {p1, v2}, Lmb/e;->i(Ljava/lang/Class;)Lic/a;

    move-result-object v5

    const-class v2, Lkb/a;

    invoke-interface {p1, v2}, Lmb/e;->i(Ljava/lang/Class;)Lic/a;

    move-result-object v6

    const-class v2, Lad/a;

    invoke-interface {p1, v2}, Lmb/e;->i(Ljava/lang/Class;)Lic/a;

    move-result-object v7

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lmb/b0;

    invoke-interface {p1, v2}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lmb/b0;

    invoke-interface {p1, v2}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lmb/b0;

    invoke-interface {p1, v2}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/util/concurrent/ExecutorService;

    invoke-static/range {v3 .. v10}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->b(Lcom/google/firebase/f;Ljc/e;Lic/a;Lic/a;Lic/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x10

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Crashlytics blocked main for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4

    const-class v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-string v1, "fire-cls"

    invoke-virtual {v0, v1}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lcom/google/firebase/f;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Ljc/e;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lmb/b0;

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lmb/b0;

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lmb/b0;

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lob/a;

    invoke-static {v2}, Lmb/r;->a(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lkb/a;

    invoke-static {v2}, Lmb/r;->a(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lad/a;

    invoke-static {v2}, Lmb/r;->a(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v2, Lnb/f;

    invoke-direct {v2, p0}, Lnb/f;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    invoke-virtual {v0, v2}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->e()Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v2, "19.3.0"

    invoke-static {v1, v2}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lmb/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
