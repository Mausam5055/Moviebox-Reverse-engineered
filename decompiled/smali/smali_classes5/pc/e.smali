.class public Lpc/e;
.super Ljava/lang/Object;


# static fields
.field private static final i:Lsc/a;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/google/firebase/perf/config/a;

.field private final c:Lcom/google/firebase/perf/util/d;

.field private d:Ljava/lang/Boolean;

.field private final e:Lcom/google/firebase/f;

.field private final f:Lic/b;

.field private final g:Ljc/e;

.field private final h:Lic/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lpc/e;->i:Lsc/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/f;Lic/b;Ljc/e;Lic/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lpc/e;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lpc/e;->d:Ljava/lang/Boolean;

    iput-object p1, p0, Lpc/e;->e:Lcom/google/firebase/f;

    iput-object p2, p0, Lpc/e;->f:Lic/b;

    iput-object p3, p0, Lpc/e;->g:Ljc/e;

    iput-object p4, p0, Lpc/e;->h:Lic/b;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lpc/e;->d:Ljava/lang/Boolean;

    iput-object p6, p0, Lpc/e;->b:Lcom/google/firebase/perf/config/a;

    new-instance p1, Lcom/google/firebase/perf/util/d;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/firebase/perf/util/d;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lpc/e;->c:Lcom/google/firebase/perf/util/d;

    return-void

    :cond_0
    invoke-static {}, Lvc/k;->k()Lvc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lvc/k;->r(Lcom/google/firebase/f;Ljc/e;Lic/b;)V

    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lpc/e;->a(Landroid/content/Context;)Lcom/google/firebase/perf/util/d;

    move-result-object p4

    iput-object p4, p0, Lpc/e;->c:Lcom/google/firebase/perf/util/d;

    invoke-virtual {p5, p2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->setFirebaseRemoteConfigProvider(Lic/b;)V

    iput-object p6, p0, Lpc/e;->b:Lcom/google/firebase/perf/config/a;

    invoke-virtual {p6, p4}, Lcom/google/firebase/perf/config/a;->P(Lcom/google/firebase/perf/util/d;)V

    invoke-virtual {p6, p3}, Lcom/google/firebase/perf/config/a;->O(Landroid/content/Context;)V

    invoke-virtual {p7, p3}, Lcom/google/firebase/perf/session/SessionManager;->setApplicationContext(Landroid/content/Context;)V

    invoke-virtual {p6}, Lcom/google/firebase/perf/config/a;->j()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lpc/e;->d:Ljava/lang/Boolean;

    sget-object p2, Lpc/e;->i:Lsc/a;

    invoke-virtual {p2}, Lsc/a;->h()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lpc/e;->d()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/m;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lsc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lsc/a;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/firebase/perf/util/d;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No perf enable meta data found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_1
    new-instance v0, Lcom/google/firebase/perf/util/d;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/util/d;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_0
    invoke-direct {v0}, Lcom/google/firebase/perf/util/d;-><init>()V

    :goto_2
    return-object v0
.end method

.method public static c()Lpc/e;
    .locals 2

    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    move-result-object v0

    const-class v1, Lpc/e;

    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lpc/e;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lpc/e;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/f;->t()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;
    .locals 3

    new-instance v0, Lcom/google/firebase/perf/metrics/h;

    invoke-static {}, Lvc/k;->k()Lvc/k;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v2}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/firebase/perf/metrics/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/Timer;)V

    return-object v0
.end method
