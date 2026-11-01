.class public final Lcom/squareup/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/FramedConnection$b;,
        Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;,
        Lcom/squareup/okhttp/internal/framed/FramedConnection$a;
    }
.end annotation


# static fields
.field private static final x:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lcom/squareup/okhttp/Protocol;

.field final b:Z

.field private final c:Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/Map;

.field private final l:Lcom/squareup/okhttp/internal/framed/PushObserver;

.field private m:I

.field n:J

.field o:J

.field p:Lcom/squareup/okhttp/internal/framed/h;

.field final q:Lcom/squareup/okhttp/internal/framed/h;

.field private r:Z

.field final s:Lcom/squareup/okhttp/internal/framed/Variant;

.field final t:Ljava/net/Socket;

.field final u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

.field final v:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

.field private final w:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/g;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->i:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    new-instance v1, Lcom/squareup/okhttp/internal/framed/h;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    new-instance v1, Lcom/squareup/okhttp/internal/framed/h;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r:Z

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->a(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a:Lcom/squareup/okhttp/Protocol;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v4

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l:Lcom/squareup/okhttp/internal/framed/PushObserver;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->c:Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v5, :cond_1

    iget v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    iput v6, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->m:I

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->e(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_4

    new-instance v3, Lcom/squareup/okhttp/internal/framed/d;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/framed/d;-><init>()V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v8, "OkHttp %s Push Observer"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v2

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/squareup/okhttp/internal/g;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    invoke-virtual {v1, v6, v2, v3}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v1, v3, v2, v5}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v2, :cond_5

    new-instance v2, Lcom/squareup/okhttp/internal/framed/i;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/framed/i;-><init>()V

    iput-object v2, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    iput-object v9, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    :goto_1
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->f(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t:Ljava/net/Socket;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->g(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/squareup/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->h(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)V

    return-void
.end method

.method private C0(ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 1

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private E0(ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 10

    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/g;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic T(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p0(ILjava/util/List;)V

    return-void
.end method

.method static synthetic U(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l:Lcom/squareup/okhttp/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic V(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic Z(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->C0(ZIILcom/squareup/okhttp/internal/framed/g;)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    return-object p0
.end method

.method private c0(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->z0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/squareup/okhttp/internal/framed/a;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/framed/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->y0(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_0
    move-object v1, v0

    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/framed/g;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/squareup/okhttp/internal/framed/g;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    goto :goto_2

    :cond_1
    move-object v3, v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    array-length v4, v1

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    :try_start_2
    invoke-virtual {v6, p2}, Lcom/squareup/okhttp/internal/framed/a;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    if-eqz p1, :cond_2

    move-object p1, v6

    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_5

    array-length p2, v3

    if-gtz p2, :cond_4

    goto :goto_5

    :cond_4
    aget-object p1, v3, v2

    throw v0

    :cond_5
    :goto_5
    :try_start_3
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    move-object p1, p2

    :cond_6
    :goto_6
    :try_start_4
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    if-nez p1, :cond_7

    return-void

    :cond_7
    throw p1

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->c0(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r0(I)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->m0(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o0(ILjava/util/List;Z)V

    return-void
.end method

.method private k0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;
    .locals 10

    xor-int/lit8 v6, p3, 0x1

    xor-int/lit8 p4, p4, 0x1

    iget-object v7, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    if-nez v0, :cond_4

    iget v8, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    new-instance v9, Lcom/squareup/okhttp/internal/framed/a;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/a;-><init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/framed/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->y0(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    move v1, v6

    move v2, p4

    move v3, v8

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    iget-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p4, p1, v8, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    :cond_2
    return-object v9

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :goto_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method static synthetic l(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    return p0
.end method

.method static synthetic m(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    return p1
.end method

.method private m0(ILokio/BufferedSource;IZ)V
    .locals 9

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

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

.method static synthetic n(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f:I

    return p0
.end method

.method static synthetic o(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f:I

    return p1
.end method

.method private o0(ILjava/util/List;Z)V
    .locals 9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    return p0
.end method

.method private p0(ILjava/util/List;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

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

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    return-object p0
.end method

.method private q0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/FramedConnection$b;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->c:Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

    return-object p0
.end method

.method private r0(I)Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

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

.method static synthetic s()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic t(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic u(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r:Z

    return p0
.end method

.method private declared-synchronized u0(I)Lcom/squareup/okhttp/internal/framed/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic v(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r:Z

    return p1
.end method

.method static synthetic w(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Lcom/squareup/okhttp/internal/framed/g;
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u0(I)Lcom/squareup/okhttp/internal/framed/g;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic x(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->E0(ZIILcom/squareup/okhttp/internal/framed/g;)V

    return-void
.end method

.method private declared-synchronized y0(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public B0(IZLokio/Buffer;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p4, p2, p1, p3, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

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

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v4}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v4, v5, p1, p3, v2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    goto :goto_0

    :catch_0
    :try_start_2
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

.method F0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method H0(IJ)V
    .locals 9

    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a0(J)V
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->c0(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public d0()Lcom/squareup/okhttp/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    return-void
.end method

.method declared-synchronized g0(I)Lcom/squareup/okhttp/internal/framed/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/a;
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

.method public declared-synchronized h0()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/h;->f(I)I

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

.method public l0(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized v0(I)Lcom/squareup/okhttp/internal/framed/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->y0(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public x0()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->settings(Lcom/squareup/okhttp/internal/framed/h;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public z0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

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
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    sget-object v3, Lcom/squareup/okhttp/internal/g;->a:[B

    invoke-interface {v2, v1, p1, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V

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
