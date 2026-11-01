.class public Lcom/google/firebase/heartbeatinfo/a;
.super Ljava/lang/Object;

# interfaces
.implements Lgc/h;
.implements Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;


# instance fields
.field private final a:Lic/b;

.field private final b:Landroid/content/Context;

.field private final c:Lic/b;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lic/b;Ljava/util/concurrent/Executor;)V
    .locals 6

    new-instance v1, Lmb/u;

    new-instance v0, Lgc/c;

    invoke-direct {v0, p1, p2}, Lgc/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lmb/u;-><init>(Lic/b;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/heartbeatinfo/a;-><init>(Lic/b;Ljava/util/Set;Ljava/util/concurrent/Executor;Lic/b;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lic/b;Ljava/util/Set;Ljava/util/concurrent/Executor;Lic/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lic/b;

    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/a;->d:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/a;->c:Lic/b;

    iput-object p5, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/heartbeatinfo/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/a;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/a;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lmb/b0;Lmb/e;)Lcom/google/firebase/heartbeatinfo/a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/a;->h(Lmb/b0;Lmb/e;)Lcom/google/firebase/heartbeatinfo/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/heartbeatinfo/a;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/a;->k()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lmb/c;
    .locals 4

    const-class v0, Llb/a;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lgc/h;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lcom/google/firebase/heartbeatinfo/a;

    invoke-static {v2, v1}, Lmb/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lmb/c$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v2, Lcom/google/firebase/f;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v2, Lgc/f;

    invoke-static {v2}, Lmb/r;->o(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v2, Lxc/i;

    invoke-static {v2}, Lmb/r;->m(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    invoke-static {v0}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    new-instance v2, Lgc/b;

    invoke-direct {v2, v0}, Lgc/b;-><init>(Lmb/b0;)V

    invoke-virtual {v1, v2}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic h(Lmb/b0;Lmb/e;)Lcom/google/firebase/heartbeatinfo/a;
    .locals 7

    new-instance v6, Lcom/google/firebase/heartbeatinfo/a;

    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/google/firebase/f;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/f;

    invoke-virtual {v0}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    move-result-object v2

    const-class v0, Lgc/f;

    invoke-interface {p1, v0}, Lmb/e;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    const-class v0, Lxc/i;

    invoke-interface {p1, v0}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v4

    invoke-interface {p1, p0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/Executor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/heartbeatinfo/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lic/b;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method private synthetic i()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/f;

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/f;->f()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc/p;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "agent"

    invoke-virtual {v3}, Lgc/p;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dates"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lgc/p;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "heartbeats"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    :goto_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private static synthetic j(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/f;
    .locals 1

    new-instance v0, Lcom/google/firebase/heartbeatinfo/f;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/heartbeatinfo/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic k()Ljava/lang/Void;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/a;->c:Lic/b;

    invoke-interface {v3}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxc/i;

    invoke-interface {v3}, Lxc/i;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/heartbeatinfo/f;->s(JLjava/lang/String;)V

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lgc/d;

    invoke-direct {v1, p0}, Lgc/d;-><init>(Lcom/google/firebase/heartbeatinfo/a;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lic/b;

    invoke-interface {p1}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/heartbeatinfo/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/f;->q(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/f;->o()V

    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public l()Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lgc/e;

    invoke-direct {v1, p0}, Lgc/e;-><init>(Lcom/google/firebase/heartbeatinfo/a;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
