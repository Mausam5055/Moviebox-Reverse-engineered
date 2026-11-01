.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$i;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;
    }
.end annotation


# static fields
.field static final synthetic A:Z = true

.field private static final z:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Z

.field final b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:I

.field f:I

.field private g:Z

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field final j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/l;

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field r:J

.field s:J

.field t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

.field final u:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

.field final v:Ljava/net/Socket;

.field final w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

.field final x:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

.field final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->z:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->k:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->l:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->m:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->n:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->o:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->p:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->q:J

    iput-wide v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->r:J

    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-direct {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;-><init>()V

    iput-object v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-direct {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;-><init>()V

    iput-object v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->u:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->y:Ljava/util/Set;

    iget-object v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/l;

    iput-object v4, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/l;

    iget-boolean v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->g:Z

    iput-boolean v4, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a:Z

    iget-object v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;

    iput-object v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    iput v7, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->f:I

    if-eqz v4, :cond_1

    add-int/2addr v7, v5

    iput v7, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->f:I

    :cond_1
    const/4 v5, 0x7

    if-eqz v4, :cond_2

    iget-object v7, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    const/high16 v8, 0x1000000

    invoke-virtual {v7, v5, v8}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->a(II)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    :cond_2
    iget-object v7, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->b:Ljava/lang/String;

    iput-object v7, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v2

    const-string v10, "OkHttp %s Writer"

    invoke-static {v10, v9}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v8, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget v9, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->h:I

    if-eqz v9, :cond_3

    new-instance v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$i;

    invoke-direct {v9, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$i;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)V

    iget v10, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->h:I

    int-to-long v12, v10

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v10, v12

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v2

    const-string v2, "OkHttp %s Push Observer"

    invoke-static {v2, v9}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v22

    const/16 v17, 0x1

    const-wide/16 v18, 0x3c

    const/16 v16, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->i:Ljava/util/concurrent/ExecutorService;

    const v2, 0xffff

    invoke-virtual {v3, v5, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->a(II)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    const/4 v2, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v3, v2, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->a(II)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->c()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->s:J

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->a:Ljava/net/Socket;

    iput-object v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->v:Ljava/net/Socket;

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->d:Lcom/mbridge/msdk/thrid/okio/d;

    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;-><init>(Lcom/mbridge/msdk/thrid/okio/d;Z)V

    iput-object v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$h;->c:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-direct {v3, v1, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;-><init>(Lcom/mbridge/msdk/thrid/okio/e;Z)V

    invoke-direct {v2, v0, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;)V

    iput-object v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->x:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    return-void
.end method

.method private a(ILjava/util/List;Z)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;",
            ">;Z)",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    iget-object v7, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->f:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z

    if-nez v0, :cond_7

    iget v8, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->f:I

    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->f:I

    new-instance v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;-><init>(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/g;ZZLcom/mbridge/msdk/thrid/okhttp/p;)V

    if-eqz p3, :cond_2

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->s:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-wide v0, v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    invoke-virtual {v9}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ZIILjava/util/List;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {v0, p1, v8, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(IILjava/util/List;)V

    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->flush()V

    :cond_5
    return-object v9

    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :try_start_4
    new-instance p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/a;

    invoke-direct {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/a;-><init>()V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :goto_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private declared-synchronized a(Lcom/mbridge/msdk/thrid/okhttp/internal/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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

.method static synthetic a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->l:J

    return-wide v0
.end method

.method static synthetic c(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)J
    .locals 4

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->l:J

    return-wide v0
.end method

.method static synthetic d(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->k:J

    return-wide v0
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->z:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)J
    .locals 4

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->k:J

    return-wide v0
.end method

.method static synthetic f(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z

    return p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)J
    .locals 4

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->n:J

    return-wide v0
.end method

.method private h()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {p0, v0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)J
    .locals 4

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->p:J

    return-wide v0
.end method


# virtual methods
.method declared-synchronized a(I)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/List;Z)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;",
            ">;Z)",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(ILjava/util/List;Z)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    move-result-object p1

    return-object p1
.end method

.method a(IJ)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method a(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    .locals 7

    new-instance v6, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$g;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$g;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    invoke-direct {p0, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/b;)V

    return-void
.end method

.method a(ILcom/mbridge/msdk/thrid/okio/e;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {v5}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/mbridge/msdk/thrid/okio/e;->e(J)V

    invoke-interface {p2, v5, v0, v1}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    invoke-virtual {v5}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$f;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$f;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/mbridge/msdk/thrid/okio/c;IZ)V

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;

    const-string v4, "OkHttp %s Push Request[%s]"

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/b;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(IZLcom/mbridge/msdk/thrid/okio/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {p4, p2, p1, p3, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ZILcom/mbridge/msdk/thrid/okio/c;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->s:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->h()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->s:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->s:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ZILcom/mbridge/msdk/thrid/okio/c;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->e:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;[B)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->A:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    :try_start_2
    invoke-virtual {v3, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    if-eqz p1, :cond_3

    move-object p1, v3

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :try_start_3
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    :cond_5
    :goto_5
    :try_start_4
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->v:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    throw p1

    :goto_7
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->d()V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->b(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    sub-int/2addr p1, v0

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(IJ)V

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->x:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(ZII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h()V

    :goto_0
    return-void
.end method

.method b(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    return-void
.end method

.method b(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    new-instance v7, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$e;

    const-string v2, "OkHttp %s Push Headers[%s]"

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$e;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/b;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method b(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized c(I)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method c(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$a;

    const-string v3, "OkHttp %s stream %d"

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    return-void
.end method

.method public declared-synchronized f(J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->n:J

    iget-wide v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->m:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->q:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, p1, v2

    if-ltz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->flush()V

    return-void
.end method

.method declared-synchronized g(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->r:J

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    iget-wide p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->r:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(IJ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->r:J
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

.method public declared-synchronized k()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->u:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->b(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method l()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->n:J

    iget-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->m:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->m:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->q:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$c;

    const-string v2, "OkHttp %s ping"

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v1, p0, v2, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$c;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Z)V

    return-void
.end method
