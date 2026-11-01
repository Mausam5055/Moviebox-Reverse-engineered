.class public Lcom/google/firebase/remoteconfig/internal/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

.field private final c:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field private final d:Lcom/google/firebase/f;

.field private final e:Ljc/e;

.field private final f:Lcom/google/firebase/remoteconfig/internal/e;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/firebase/remoteconfig/internal/n;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Ljc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v8, v0, Lcom/google/firebase/remoteconfig/internal/o;->a:Ljava/util/Set;

    new-instance v11, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;-><init>(Lcom/google/firebase/f;Ljc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v11, v0, Lcom/google/firebase/remoteconfig/internal/o;->b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->d:Lcom/google/firebase/f;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->c:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->e:Ljc/e;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->f:Lcom/google/firebase/remoteconfig/internal/e;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->g:Landroid/content/Context;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->h:Ljava/lang/String;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->i:Lcom/google/firebase/remoteconfig/internal/n;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->j:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->z(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/o;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
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
