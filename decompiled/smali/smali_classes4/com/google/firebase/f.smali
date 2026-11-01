.class public Lcom/google/firebase/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/f$b;,
        Lcom/google/firebase/f$a;,
        Lcom/google/firebase/f$c;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;

.field static final l:Ljava/util/Map;

.field public static final synthetic m:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/firebase/m;

.field private final d:Lmb/o;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lmb/u;

.field private final h:Lic/b;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/f;->k:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    sput-object v0, Lcom/google/firebase/f;->l:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/m;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/f;->i:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/f;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/f;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/f;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/m;

    iput-object p2, p0, Lcom/google/firebase/f;->c:Lcom/google/firebase/m;

    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->b()Lcom/google/firebase/n;

    move-result-object p2

    const-string v0, "Firebase"

    invoke-static {v0}, Lcd/c;->b(Ljava/lang/String;)V

    const-string v0, "ComponentDiscovery"

    invoke-static {v0}, Lcd/c;->b(Ljava/lang/String;)V

    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    invoke-static {p1, v0}, Lmb/g;->c(Landroid/content/Context;Ljava/lang/Class;)Lmb/g;

    move-result-object v0

    invoke-virtual {v0}, Lmb/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcd/c;->a()V

    const-string v2, "Runtime"

    invoke-static {v2}, Lcd/c;->b(Ljava/lang/String;)V

    sget-object v2, Lcom/google/firebase/concurrent/UiExecutor;->INSTANCE:Lcom/google/firebase/concurrent/UiExecutor;

    invoke-static {v2}, Lmb/o;->m(Ljava/util/concurrent/Executor;)Lmb/o$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmb/o$b;->d(Ljava/util/Collection;)Lmb/o$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    invoke-virtual {v0, v2}, Lmb/o$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lmb/o$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    invoke-virtual {v0, v2}, Lmb/o$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lmb/o$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p1, v2, v3}, Lmb/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lmb/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/o$b;->b(Lmb/c;)Lmb/o$b;

    move-result-object v0

    const-class v2, Lcom/google/firebase/f;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p0, v2, v3}, Lmb/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lmb/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/o$b;->b(Lmb/c;)Lmb/o$b;

    move-result-object v0

    const-class v2, Lcom/google/firebase/m;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p3, v2, v3}, Lmb/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lmb/c;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmb/o$b;->b(Lmb/c;)Lmb/o$b;

    move-result-object p3

    new-instance v0, Lcd/b;

    invoke-direct {v0}, Lcd/b;-><init>()V

    invoke-virtual {p3, v0}, Lmb/o$b;->g(Lmb/j;)Lmb/o$b;

    move-result-object p3

    invoke-static {p1}, Landroidx/core/os/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/firebase/n;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lmb/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lmb/c;

    move-result-object p2

    invoke-virtual {p3, p2}, Lmb/o$b;->b(Lmb/c;)Lmb/o$b;

    :cond_0
    invoke-virtual {p3}, Lmb/o$b;->e()Lmb/o;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/f;->d:Lmb/o;

    invoke-static {}, Lcd/c;->a()V

    new-instance p3, Lmb/u;

    new-instance v0, Lcom/google/firebase/d;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/d;-><init>(Lcom/google/firebase/f;Landroid/content/Context;)V

    invoke-direct {p3, v0}, Lmb/u;-><init>(Lic/b;)V

    iput-object p3, p0, Lcom/google/firebase/f;->g:Lmb/u;

    const-class p1, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p2, p1}, Lmb/o;->f(Ljava/lang/Class;)Lic/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/f;->h:Lic/b;

    new-instance p1, Lcom/google/firebase/e;

    invoke-direct {p1, p0}, Lcom/google/firebase/e;-><init>(Lcom/google/firebase/f;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/f;->g(Lcom/google/firebase/f$a;)V

    invoke-static {}, Lcd/c;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/f;->w(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/f;Landroid/content/Context;)Lmc/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/f;->v(Landroid/content/Context;)Lmc/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/firebase/f;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/firebase/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/f;->p()V

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/f;->y(Z)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public static l()Lcom/google/firebase/f;
    .locals 4

    sget-object v0, Lcom/google/firebase/f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/f;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/f;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/firebase/f;->h:Lic/b;

    invoke-interface {v2}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {v2}, Lcom/google/firebase/heartbeatinfo/a;->l()Lcom/google/android/gms/tasks/Task;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/f$c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/f;->d:Lmb/o;

    invoke-virtual {p0}, Lcom/google/firebase/f;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmb/o;->p(Z)V

    iget-object v0, p0, Lcom/google/firebase/f;->h:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/a;->l()Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public static q(Landroid/content/Context;)Lcom/google/firebase/f;
    .locals 3

    sget-object v0, Lcom/google/firebase/f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/f;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/firebase/m;->a(Landroid/content/Context;)Lcom/google/firebase/m;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0, v1}, Lcom/google/firebase/f;->r(Landroid/content/Context;Lcom/google/firebase/m;)Lcom/google/firebase/f;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static r(Landroid/content/Context;Lcom/google/firebase/m;)Lcom/google/firebase/f;
    .locals 1

    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lcom/google/firebase/f;->s(Landroid/content/Context;Lcom/google/firebase/m;Ljava/lang/String;)Lcom/google/firebase/f;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/content/Context;Lcom/google/firebase/m;Ljava/lang/String;)Lcom/google/firebase/f;
    .locals 5

    invoke-static {p0}, Lcom/google/firebase/f$b;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/firebase/f;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    sget-object v0, Lcom/google/firebase/f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/f;->l:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/firebase/f;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/m;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v2}, Lcom/google/firebase/f;->p()V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic v(Landroid/content/Context;)Lmc/a;
    .locals 4

    new-instance v0, Lmc/a;

    invoke-virtual {p0}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/f;->d:Lmb/o;

    const-class v3, Lfc/c;

    invoke-virtual {v2, v3}, Lmb/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfc/c;

    invoke-direct {v0, p1, v1, v2}, Lmc/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lfc/c;)V

    return-object v0
.end method

.method private synthetic w(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/f;->h:Lic/b;

    invoke-interface {p1}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/a;->l()Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method private static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private y(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/f$a;

    invoke-interface {v1, p1}, Lcom/google/firebase/f$a;->onBackgroundStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/firebase/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/f;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/f;

    invoke-virtual {p1}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/google/firebase/f$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    iget-object v0, p0, Lcom/google/firebase/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/firebase/f$a;->onBackgroundStateChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/f;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lcom/google/firebase/g;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/f;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    iget-object v0, p0, Lcom/google/firebase/f;->d:Lmb/o;

    invoke-virtual {v0, p1}, Lmb/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    iget-object v0, p0, Lcom/google/firebase/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    iget-object v0, p0, Lcom/google/firebase/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/google/firebase/m;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    iget-object v0, p0, Lcom/google/firebase/f;->c:Lcom/google/firebase/m;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    iget-object v0, p0, Lcom/google/firebase/f;->g:Lmb/u;

    invoke-virtual {v0}, Lmb/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc/a;

    invoke-virtual {v0}, Lmc/a;->b()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/firebase/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "options"

    iget-object v2, p0, Lcom/google/firebase/f;->c:Lcom/google/firebase/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
