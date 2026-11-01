.class Lcom/google/firebase/crashlytics/internal/common/n;
.super Ljava/lang/Object;


# static fields
.field static final t:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/internal/common/d0;

.field private final c:Lcom/google/firebase/crashlytics/internal/common/y;

.field private final d:Lrb/o;

.field private final e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

.field private final f:Lcom/google/firebase/crashlytics/internal/common/g0;

.field private final g:Lvb/g;

.field private final h:Lcom/google/firebase/crashlytics/internal/common/a;

.field private final i:Lrb/e;

.field private final j:Lob/a;

.field private final k:Lpb/a;

.field private final l:Lcom/google/firebase/crashlytics/internal/common/k;

.field private final m:Lcom/google/firebase/crashlytics/internal/common/w0;

.field private n:Lcom/google/firebase/crashlytics/internal/common/b0;

.field private o:Lwb/b;

.field final p:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final q:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final r:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/m;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/common/m;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/n;->t:Ljava/io/FilenameFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/d0;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/y;Lcom/google/firebase/crashlytics/internal/common/a;Lrb/o;Lrb/e;Lcom/google/firebase/crashlytics/internal/common/w0;Lob/a;Lpb/a;Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->o:Lwb/b;

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->f:Lcom/google/firebase/crashlytics/internal/common/g0;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/n;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Lrb/o;

    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/n;->i:Lrb/e;

    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lob/a;

    iput-object p11, p0, Lcom/google/firebase/crashlytics/internal/common/n;->k:Lpb/a;

    iput-object p12, p0, Lcom/google/firebase/crashlytics/internal/common/n;->l:Lcom/google/firebase/crashlytics/internal/common/k;

    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    iput-object p13, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    return-void
.end method

.method private static B()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private C()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->r()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static D()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->G(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static E(Lob/h;Ljava/lang/String;Lvb/g;[B)Ljava/util/List;
    .locals 6

    const-string v0, "user-data"

    invoke-virtual {p2, p1, v0}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "keys"

    invoke-virtual {p2, p1, v1}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "rollouts-state"

    invoke-virtual {p2, p1, v3}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/f;

    const-string v4, "logs_file"

    const-string v5, "logs"

    invoke-direct {v3, v4, v5, p3}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    invoke-interface {p0}, Lob/h;->d()Ljava/io/File;

    move-result-object v3

    const-string v4, "crash_meta_file"

    const-string v5, "metadata"

    invoke-direct {p3, v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string v3, "session"

    invoke-interface {p0}, Lob/h;->g()Ljava/io/File;

    move-result-object v4

    const-string v5, "session_meta_file"

    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string v3, "app"

    invoke-interface {p0}, Lob/h;->e()Ljava/io/File;

    move-result-object v4

    const-string v5, "app_meta_file"

    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string v3, "device"

    invoke-interface {p0}, Lob/h;->a()Ljava/io/File;

    move-result-object v4

    const-string v5, "device_meta_file"

    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string v3, "os"

    invoke-interface {p0}, Lob/h;->f()Ljava/io/File;

    move-result-object v4

    const-string v5, "os_meta_file"

    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->R(Lob/h;)Lcom/google/firebase/crashlytics/internal/common/j0;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string p3, "user_meta_file"

    const-string v3, "user"

    invoke-direct {p0, p3, v3, v0}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string p3, "keys_file"

    invoke-direct {p0, p3, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/e0;

    const-string p3, "rollouts_file"

    const-string v0, "rollouts"

    invoke-direct {p0, p3, v0, p1}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private F(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Couldn\'t get Class Loader"

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "No version control information found"

    invoke-virtual {p1, v0}, Lob/g;->g(Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method private static G(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private synthetic L(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->w(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic M(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".ae"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private O(J)Lcom/google/android/gms/tasks/Task;
    .locals 2

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {p1, p2}, Lob/g;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Logging app exception event to Firebase Analytics"

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n$e;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;J)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private P()Lcom/google/android/gms/tasks/Task;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->N()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->O(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse app exception timestamp from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lob/g;->k(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private static Q(Ljava/lang/String;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No minidump data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->k(Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Tombstones data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lob/g;->g(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    if-nez p2, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static R(Lob/h;)Lcom/google/firebase/crashlytics/internal/common/j0;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0}, Lob/h;->c()Ljava/io/File;

    move-result-object p0

    const-string v1, "minidump"

    const-string v2, "minidump_file"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/e0;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/f;

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-byte v0, v3, v0

    invoke-direct {p0, v2, v1, v3}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method private static T(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->M(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a0()Lcom/google/android/gms/tasks/Task;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->j()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$c;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/n$c;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/b;->c(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->L(Ljava/lang/String;)V

    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/work/impl/utils/h;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lrb/e;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    invoke-direct {v1, v2, p1}, Lrb/e;-><init>(Lvb/g;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    invoke-static {p1, v2, v3}, Lrb/o;->m(Ljava/lang/String;Lvb/g;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lrb/o;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/w0;->x(Ljava/lang/String;Ljava/util/List;Lrb/e;Lrb/o;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ApplicationExitInfo available. Session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lob/g;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANR feature enabled, but device is API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lob/g;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->G(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/internal/common/n;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/internal/common/n;)Lpb/a;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->k:Lpb/a;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/y;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/w0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    return-object p0
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/internal/common/n;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n;->x(J)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n;->w(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/d0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    return-object p0
.end method

.method static synthetic l(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->P()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->r(Ljava/util/List;)V

    return-void
.end method

.method private static o(Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/a;)Lsb/e$a;
    .locals 6

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/g0;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/common/a;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/crashlytics/internal/common/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/g0;->a()Lcom/google/firebase/crashlytics/internal/common/h0$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/h0$a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p1, Lcom/google/firebase/crashlytics/internal/common/a;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    move-result v4

    iget-object v5, p1, Lcom/google/firebase/crashlytics/internal/common/a;->h:Lob/f;

    invoke-static/range {v0 .. v5}, Lsb/e$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILob/f;)Lsb/e$a;

    move-result-object p0

    return-object p0
.end method

.method private static p(Landroid/content/Context;)Lsb/e$b;
    .locals 16

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v10, v1, v3

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->k()I

    move-result v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    invoke-static/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->b(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->w()Z

    move-result v12

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->l()I

    move-result v13

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v5 .. v15}, Lsb/e$b;->c(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Lsb/e$b;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lsb/e$c;
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->x()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lsb/e$c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lsb/e$c;

    move-result-object v0

    return-object v0
.end method

.method private static r(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v(ZLwb/b;Z)V
    .locals 3

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/w0;->r()Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "No open sessions to be closed."

    invoke-virtual {p1, p2}, Lob/g;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lwb/b;->b()Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object p2

    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/c;->b:Lcom/google/firebase/crashlytics/internal/settings/c$a;

    iget-boolean p2, p2, Lcom/google/firebase/crashlytics/internal/settings/c$a;->b:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->b0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    const-string v2, "ANR feature disabled."

    invoke-virtual {p2, v2}, Lob/g;->i(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lob/a;

    invoke-interface {p2, v1}, Lob/a;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->z(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->l:Lcom/google/firebase/crashlytics/internal/common/k;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/k;->e(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->D()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/w0;->l(JLjava/lang/String;)V

    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->D()J

    move-result-wide v6

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening a new session with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/x;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Crashlytics Android SDK/%s"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->f:Lcom/google/firebase/crashlytics/internal/common/g0;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->o(Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/a;)Lsb/e$a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->q()Lsb/e$c;

    move-result-object v1

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/n;->p(Landroid/content/Context;)Lsb/e$b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lob/a;

    invoke-static {v0, v1, v3}, Lsb/e;->b(Lsb/e$a;Lsb/e$c;Lsb/e$b;)Lsb/e;

    move-result-object v5

    move-object v0, v4

    move-object v1, p1

    move-wide v3, v6

    invoke-interface/range {v0 .. v5}, Lob/a;->c(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Lrb/o;

    invoke-virtual {p2, p1}, Lrb/o;->r(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->i:Lrb/e;

    invoke-virtual {p2, p1}, Lrb/e;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->l:Lcom/google/firebase/crashlytics/internal/common/k;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/common/k;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-virtual {p2, p1, v6, v7}, Lcom/google/firebase/crashlytics/internal/common/w0;->s(Ljava/lang/String;J)V

    return-void
.end method

.method private x(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".ae"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvb/g;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Create new file failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    const-string v0, "Could not create app exception marker file."

    invoke-virtual {p2, v0, p1}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native report for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lob/a;

    invoke-interface {v0, p1}, Lob/a;->a(Ljava/lang/String;)Lob/h;

    move-result-object v0

    invoke-interface {v0}, Lob/h;->c()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0}, Lob/h;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/n;->Q(Ljava/lang/String;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "No native core present"

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    new-instance v1, Lrb/e;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    invoke-direct {v1, v5, p1}, Lrb/e;-><init>(Lvb/g;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    invoke-virtual {v5, p1}, Lvb/g;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Couldn\'t create directory to store native session files, aborting."

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->x(J)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    invoke-virtual {v1}, Lrb/e;->b()[B

    move-result-object v4

    invoke-static {v0, p1, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->E(Lob/h;Ljava/lang/String;Lvb/g;[B)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/firebase/crashlytics/internal/common/k0;->b(Ljava/io/File;Ljava/util/List;)V

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v3

    const-string v4, "CrashlyticsController#finalizePreviousNativeSession"

    invoke-virtual {v3, v4}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-virtual {v3, p1, v0, v2}, Lcom/google/firebase/crashlytics/internal/common/w0;->k(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V

    invoke-virtual {v1}, Lrb/e;->a()V

    return-void
.end method


# virtual methods
.method A(Lwb/b;)Z
    .locals 3

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Lob/g;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->v(ZLwb/b;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v1, "Closed all previously open sessions."

    invoke-virtual {p1, v1}, Lob/g;->i(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v2, "Unable to finalize previously open sessions."

    invoke-virtual {v0, v2, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method H()Ljava/lang/String;
    .locals 3

    const-string v0, "META-INF/version-control-info.textproto"

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->F(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    const-string v2, "Read version control info"

    invoke-virtual {v1, v2}, Lob/g;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->T(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method I(Lwb/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->J(Lwb/b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method declared-synchronized J(Lwb/b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$b;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p3

    move-object v7, p2

    move-object v8, p1

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/n$b;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;JLjava/lang/Throwable;Ljava/lang/Thread;Lwb/b;Z)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/z0;->b(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    const-string p3, "Error handling uncaught exception"

    invoke-virtual {p2, p3, p1}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Cannot send reports. Timed out while fetching settings."

    invoke-virtual {p1, p2}, Lob/g;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method K()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method N()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lvb/g;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/n;->t:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Lvb/g;->h(Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method S(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/l;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/l;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method U()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.crashlytics.version-control-info"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Saved version control info"

    invoke-virtual {v0, v1}, Lob/g;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    const-string v2, "Unable to save version control info"

    invoke-virtual {v1, v2, v0}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method V()Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Lrb/o;

    invoke-virtual {v0, p1, p2}, Lrb/o;->p(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->u(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Lob/g;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Lrb/o;

    invoke-virtual {v0, p1, p2}, Lrb/o;->q(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->u(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Lob/g;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method Y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Lrb/o;

    invoke-virtual {v0, p1}, Lrb/o;->s(Ljava/lang/String;)V

    return-void
.end method

.method Z(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "No crash reports are available to be sent."

    invoke-virtual {p1, v0}, Lob/g;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crash reports are available to be sent."

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->a0()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/n$d;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n$d;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;Lcom/google/android/gms/tasks/Task;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method c0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->K()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->G(J)J

    move-result-wide v7

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->C()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Tried to write a non-fatal exception while no session was open."

    invoke-virtual {p1, p2}, Lob/g;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/crashlytics/internal/common/w0;->w(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method d0(JLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->K()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->i:Lrb/e;

    invoke-virtual {v0, p1, p2, p3}, Lrb/e;->g(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method n()Lcom/google/android/gms/tasks/Task;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "checkForUnsentReports should only be called once per execution."

    invoke-virtual {v0, v1}, Lob/g;->k(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method s()Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method t()Z
    .locals 3

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lob/a;

    invoke-interface {v2, v0}, Lob/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v2, "Found previous crash marker."

    invoke-virtual {v0, v2}, Lob/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->d()Z

    return v1
.end method

.method u(Lwb/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->v(ZLwb/b;Z)V

    return-void
.end method

.method y(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lwb/b;)V
    .locals 2

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->o:Lwb/b;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->S(Ljava/lang/String;)V

    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/n$a;

    invoke-direct {p1, p0}, Lcom/google/firebase/crashlytics/internal/common/n$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;)V

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/b0;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lob/a;

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/google/firebase/crashlytics/internal/common/b0;-><init>(Lcom/google/firebase/crashlytics/internal/common/b0$a;Lwb/b;Ljava/lang/Thread$UncaughtExceptionHandler;Lob/a;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
